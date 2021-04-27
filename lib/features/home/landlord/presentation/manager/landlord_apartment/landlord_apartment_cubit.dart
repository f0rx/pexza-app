library landlord_apartment_cubit.dart;

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
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';

part 'landlord_apartment_state.dart';
part 'landlord_apartment_cubit.freezed.dart';

@injectable
class LandlordApartmentCubit extends Cubit<LandlordApartmentState> {
  final ApartmentRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordApartmentCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordApartmentState.initial());

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

  Future<void> fetchAllLandlordProps() async {
    toggleLoading();

    try {
      final aprts = await _repository.all();

      emit(state.copyWith(
        optionOfFailure: none(),
        apartments: aprts.data.map((e) => e?.domain).toImmutableList(),
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

  Future<void> getApartmentsForProperty(LandlordProperty property) async {
    toggleLoading();

    try {
      final aprts = await _repository.allApartmentsForProperty(
        property.id.value,
      );

      emit(state.copyWith(
        optionOfFailure: none(),
        apartments: aprts.data.map((e) => e?.domain).toImmutableList(),
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

    final _dto = LandlordApartmentData.fromDomain(LandlordApartment(
      name: state.name,
      property: state.selected?.getOrNull,
    ));

    try {
      final apartment = await _repository.create(_dto);

      emit(state.copyWith(
        optionOfFailure: none(),
        apartment: apartment.domain,
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

  Future<void> get({
    LandlordApartment apartment,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final _apartment = await _repository.show(apartment?.id?.value ?? id);

      emit(state.copyWith(
        optionOfFailure: none(),
        apartment: _apartment?.domain,
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

  Future<void> update({
    LandlordApartment apartment,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    final _dto = LandlordApartmentData.fromDomain(LandlordApartment(
      name: state.name,
      property: state.selected?.getOrNull,
    ));

    try {
      final _apartment = await _repository.update(
        apartment?.id?.value ?? id,
        _dto,
      );

      emit(state.copyWith(
        optionOfFailure: none(),
        apartment: _apartment.domain,
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

  Future<void> delete({
    LandlordApartment apartment,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      Future.wait<void>([
        _repository.delete(apartment?.id?.value ?? id),
        this.fetchAllLandlordProps(),
        if (state.selected.isValid)
          this.getApartmentsForProperty(state.selected.getOrNull),
      ], eagerError: true);

      emit(state.copyWith(
        optionOfFailure: none(),
        // apartment: aprt?.domain,
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
