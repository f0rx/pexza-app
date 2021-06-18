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
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/features/home/tenant/data/repositories/maintenance/tenant_maintenance_repository.dart';
import 'package:pexza/features/home/landlord/data/repositories/misc_repository/misc_repository.dart';
import 'package:pexza/utils/utils.dart';

part 'tenant_maintenance_state.dart';
part 'tenant_maintenance_cubit.freezed.dart';

@injectable
class TenantMaintenanceCubit extends Cubit<TenantMaintenanceState> {
  final TenantMaintenanceRepository _repository;
  final MiscRepository _miscRepository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  TenantMaintenanceCubit(
    this._repository,
    this._miscRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(TenantMaintenanceState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void serviceChanged(MaintenanceService value) => emit(state.copyWith(
        service: value,
      ));

  void urgencyChanged(double value) => emit(state.copyWith(
        urgency: BasicTextField((value * 10).ceil()),
      ));

  void commentChanged(String value) => emit(state.copyWith(
        comment: BasicTextField(value),
      ));

  void init([Assignment assignment]) async {
    emit(state.copyWith(assignment: assignment ?? state.assignment));

    // Fetch all available services
    this.getServices();
  }

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

  void fetchAll() async {
    toggleLoading();

    try {
      await checkInternetAndConnectivity();

      final _requests = await _repository.all();

      emit(state.copyWith(maintenances: _requests.domain()));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> create() async {
    toggleLoading();

    // Create Object Instance from state inputs
    final _instance = Maintenance(
      comment: state.comment,
      service: state.service,
      urgency: state.urgency,
      assignment: state.assignment,
    );

    // Validate Input fields
    emit(state.copyWith(validate: true));

    try {
      if (_instance.failures.isNone()) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final maintenanceDTO = await _repository.create(
          MaintenanceDTOData.fromDomain(_instance),
        );

        emit(state.copyWith(
          maintenance: maintenanceDTO.domain(),
          response: some(right(LandlordSuccess(
            message:
                "Request forwarded to ${maintenanceDTO?.data?.assignment?.landlord?.firstName} "
                "${maintenanceDTO?.data?.assignment?.landlord?.lastName}",
          ))),
        ));
      }
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  void getServices() async {
    toggleLoading();

    try {
      await checkInternetAndConnectivity();

      final services = await _miscRepository.fetchServices();

      emit(state.copyWith(services: services.domain));
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
