import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/domain/domain.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/features/home/tenant/data/repositories/apartment/tenant_apartment_repository.dart';
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart';
import 'package:pexza/features/home/tenant/presentation/managers/index.dart';
import 'package:pexza/utils/utils.dart';

part 'tenant_assignment_state.dart';
part 'tenant_assignment_cubit.freezed.dart';

@injectable
class TenantAssignmentCubit extends Cubit<TenantAssignmentState> {
  final TenantApartmentRepository _apartmentRepository;
  final TenantAssignmentRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  TenantAssignmentCubit(
    this._repository,
    this._apartmentRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(TenantAssignmentState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void init({
    Assignment assignment,
    BaseApartment apartment,
  }) async =>
      emit(state.copyWith(
        assignment: assignment ?? state.assignment,
        apartment: apartment ?? state.apartment,
      ));

  Future<void> checkInternetAndConnectivity([bool shouldThrow = false]) async {
    final isConnected =
        (await _connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected) {
      if (shouldThrow) throw LandlordFailure.noInternetConnection();
      emit(state.copyWith(
        response: some(left(LandlordFailure.noInternetConnection())),
      ));
    }

    final hasInternet = await _dataConnectionChecker.hasConnection;

    if (isConnected && !hasInternet) {
      if (shouldThrow) throw LandlordFailure.poorInternetConnection();
      emit(state.copyWith(
        response: some(left(LandlordFailure.poorInternetConnection())),
      ));
    }
  }

  void all([
    AssignmentQueryParam param = AssignmentQueryParam.assigned,
  ]) async {
    toggleLoading();

    try {
      await checkInternetAndConnectivity();

      final unaccepted = await _repository.all(query: param);

      emit(state.copyWith(unaccepted: unaccepted?.domain()));

      ///
      final paired = await _repository.all(query: AssignmentQueryParam.paired);

      final apartments =
          paired.domain().map((e) => e.tenantApartment).toMutableList();

      emit(state.copyWith(
        paired: paired?.domain(),
        apartments: apartments,
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  void getApartmentAndProperty(Assignment assignment) async {
    ///Not needed anymore
    toggleLoading();

    try {
      final apartmentDTO = await _repository.fetchAssocApartment(
        assignment?.apartment?.id?.value,
      );

      emit(state.copyWith(
        apartment: apartmentDTO.domain,
        property: apartmentDTO?.data?.property?.domain,
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  void _handleDioFailures(DioError ex) {
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.poorInternetConnection()),
        )));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.receiveTimeout()),
        )));
        break;
      case DioErrorType.RESPONSE:
        emit(state.copyWith(
          response: some(left(LandlordFailure.fromJson(
            ex.response.data,
          ))),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.timeout()),
        )));
        break;
      case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.unknown()),
        )));
    }
  }
}
