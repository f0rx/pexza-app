import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_property_state.dart';
part 'landlord_property_cubit.freezed.dart';

@injectable
class LandlordPropertyCubit extends Cubit<LandlordPropertyState> {
  final PropertyRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordPropertyCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordPropertyState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  Future<void> checkInternetAndConnectivity() async {
    final isConnected =
        (await _connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected) throw LandlordFailure.noInternetConnection();

    final hasInternet = await _dataConnectionChecker.hasConnection;

    if (!hasInternet) throw LandlordFailure.poorInternetConnection();
  }

  Future<void> fetchAll() async {
    toggleLoading();

    try {
      final props = await _repository.all();

      emit(state.copyWith(
        optionOfFailure: none(),
        properties: props.data.map((e) => e?.domain).toImmutableList(),
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        optionOfFailure: some(e),
      ));
    } on DioError catch (e) {
      _handleDioFailures(e);
    }

    toggleLoading();
  }

  Future<void> create() async {
    toggleLoading();

    // Create Data Transfer Object (DTO)
    final property = LandlordPropertyDTO.fromDomain(LandlordProperty(
      name: state.name,
      propertyType: state.propertyType,
      houseType: state.houseType,
      street: state.street,
      town: state.town,
      state: state.state,
      color: null,
      image: null,
    ));

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final prop = await _repository.create(property);

      emit(state.copyWith(
        optionOfFailure: none(),
        property: prop?.domain,
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        optionOfFailure: some(e),
      ));
    } on DioError catch (_) {
      _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> get(UniqueId<int> id) async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final property = await _repository.show(id.value);

      emit(state.copyWith(
        optionOfFailure: none(),
        property: property?.domain,
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        optionOfFailure: some(e),
      ));
    } on DioError catch (_) {
      _handleDioFailures(_);
    }

    toggleLoading();
  }

  void _handleDioFailures(DioError ex) {
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.poorInternetConnection()),
        ));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.receiveTimeout()),
        ));
        break;
      case DioErrorType.RESPONSE:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.fromJson(
            ex.response.data,
          )),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.timeout()),
        ));
        break;
      case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.unknown()),
        ));
    }
  }
}
