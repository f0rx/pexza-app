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
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/features/home/landlord/data/repositories/maintenance_repository/landlord_maintenance_repository.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_maintenance_state.dart';
part 'landlord_maintenance_cubit.freezed.dart';

@injectable
class LandlordMaintenanceCubit extends Cubit<LandlordMaintenanceState> {
  final LandlordMaintenanceRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordMaintenanceCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordMaintenanceState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
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

  void init(Maintenance maintenance) => emit(state.copyWith(
        status: maintenance?.status,
      ));

  Future<void> all({
    LandlordApartment apartment,
    Assignment assignment,
    User tenant,
  }) async {
    toggleLoading();

    try {
      MaintenanceDTOList list;

      // Check if user is connected & has good internet
      await checkInternetAndConnectivity(false);

      if (!apartment.isNull)
        list = await _repository.allForApartment(apartment?.id?.value);
      else if (!assignment.isNull)
        list = await _repository.allForAssignment(assignment?.id?.value);
      else if (!tenant.isNull)
        list = await _repository.allForTenant(tenant?.id?.value);
      else
        list = await _repository.all();

      // Update state
      emit(state.copyWith(maintenances: list.domain(true)));
    } on LandlordFailure catch (e) {
      // Update failure state
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> update({
    MaintenanceStatus status,
    @required UniqueId<int> id,
  }) async {
    toggleLoading();

    final _maintenance = Maintenance(status: status);

    // Validate Input fields
    emit(state.copyWith(validate: true, status: status));

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final _maintenanceDTO = await _repository.update(
        id?.value,
        MaintenanceDTOData.fromDomain(_maintenance),
      );

      emit(state.copyWith(
        maintenance: _maintenanceDTO.domain(true),
        response: some(right(LandlordSuccess(
          message: "Maintenance marked as ${_maintenance.status.name}!",
        ))),
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
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
            response: some(left(LandlordFailure.receiveTimeout()))));
        break;
      case DioErrorType.RESPONSE:
        emit(state.copyWith(
          response: some(left(LandlordFailure.fromJson(
            ex.response.data,
          ))),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(response: some(left(LandlordFailure.timeout()))));
        break;
      case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
          response: some(left(LandlordFailure.unknown())),
        ));
    }
  }
}
