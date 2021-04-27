library landlord_property_cubit.dart;

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
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_property_state.dart';
part 'landlord_property_cubit.freezed.dart';

@injectable
class LandlordPropertyCubit extends Cubit<LandlordPropertyState> {
  final PropertyRepository _repository;
  final ApartmentRepository _apartmentRepository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordPropertyCubit(
    this._repository,
    this._apartmentRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordPropertyState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void propertyTypeChanged(PropertyType value) => emit(state.copyWith(
        propertyType: LandlordPropertyTypeField(value),
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
    final _dto = LandlordPropertyData.fromDomain(LandlordProperty(
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

      final prop = await _repository.create(_dto);

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

  Future<void> get({
    LandlordProperty property,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final _propertyDTO = await _repository.show(property?.id?.value ?? id);

      final _apartmentListDTO = await _apartmentRepository
          .allApartmentsForProperty(_propertyDTO.data.id);

      emit(state.copyWith(
        optionOfFailure: none(),
        property: _propertyDTO?.domain?.copyWith(color: property.color),
        apartments:
            _apartmentListDTO.data.map((e) => e?.domain).toImmutableList(),
      ));
    } on MissingRequiredKeysException catch (ex) {
      _handleMissingKeysException(ex);
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
    LandlordProperty property,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    // Create Data Transfer Object (DTO)
    final _dto = LandlordPropertyData.fromDomain(LandlordProperty(
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

      final prop = await _repository.update(
        property?.id?.value ?? id,
        _dto,
      );

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

  Future<void> delete({
    LandlordProperty property,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final prop = await _repository.delete(property?.id?.value ?? id);

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

  void _handleMissingKeysException(MissingRequiredKeysException e) {
    emit(state.copyWith(
      optionOfFailure: some(LandlordFailure.unknown(
        message: e.message,
        details: e.missingKeys.fold(
            "",
            (p, next) => "${p.padIf(p.isNotEmpty && next.isNotEmpty, ',')}"
                "$next"),
      )),
    ));
  }
}
