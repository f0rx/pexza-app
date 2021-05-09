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
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart';
import 'package:pexza/utils/utils.dart';

part 'tenant_assignment_state.dart';
part 'tenant_assignment_cubit.freezed.dart';

@injectable
class TenantAssignmentCubit extends Cubit<TenantAssignmentState> {
  final TenantAssignmentRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  TenantAssignmentCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(TenantAssignmentState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void init([Assignment assignment]) async => emit(state.copyWith(
        assignment: assignment ?? state.assignment,
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

  void all() async {
    toggleLoading();

    try {
      final assignments = await _repository.all();

      emit(state.copyWith(assignments: assignments.domain()));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } on DioError catch (e) {
      _handleDioFailures(e);
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
