library landlord_property_cubit.dart;

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
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
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

  void toggleLoading([bool isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void proeprtyNameChanged(String value) => emit(state.copyWith(
        name: BasicTextField(value),
      ));

  void houseTypeChanged(String value) => emit(state.copyWith(
        houseType: BasicTextField(value),
      ));

  void proeprtyTownChanged(String value) => emit(state.copyWith(
        town: BasicTextField(value),
      ));

  void proeprtyAddressChanged(String value) => emit(state.copyWith(
        street: BasicTextField(value),
      ));

  void propertyTypeChanged(PropertyType value) => emit(state.copyWith(
        propertyType: LandlordPropertyTypeField(value),
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

  void init({
    LandlordProperty prop,
    KtList<LandlordProperty> properties,
    KtList<User> tenants,
  }) =>
      emit(state.copyWith(
        name: prop?.name ?? state.name,
        propertyType: prop?.propertyType ?? state.propertyType,
        houseType: prop?.houseType ?? state.houseType,
        street: prop?.street ?? state.street,
        town: prop?.town ?? state.town,
        selectedState: prop?.state ?? state.selectedState,
        property: prop ?? state.property,
        tenants: tenants ?? state.tenants,
        properties: properties ?? state.properties,
      ));

  Future<void> fetchAll() async {
    toggleLoading();

    try {
      final props = await _repository.all();

      emit(state.copyWith(
        // response: some(left()),
        properties: props.data.map((e) => e?.domain).toImmutableList(),
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

  Future<void> create() async {
    toggleLoading();

    // Create Object Instance from state inputs
    final _prop = LandlordProperty(
      name: state.name,
      propertyType: state.propertyType,
      houseType: state.houseType,
      street: state.street,
      town: state.town,
      // state: state.state,
    );

    // Validate form errors
    emit(state.copyWith(validate: true));

    try {
      if (_prop.failures.isNone()) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final prop = await _repository.create(
          LandlordPropertyData.fromDomain(_prop),
        );

        emit(state.copyWith(
          property: prop?.domain,
          response: some(right(LandlordSuccess(
            message: "${_prop?.name?.getOrEmpty} was created successfully!",
          ))),
        ));
      }
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
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

      emit(state.copyWith(
        // response: some(left()),
        property: _propertyDTO?.domain?.copyWith(color: property.color),
      ));

      this.fetchTenants(property: property);
    } on MissingRequiredKeysException catch (ex) {
      _handleMissingKeysException(ex);
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> fetchTenants({
    LandlordProperty property,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final list = await _repository.tenants(property?.id?.value ?? id);

      emit(state.copyWith(
        tenants: list?.map((e) => e.domain)?.toImmutableList(),
      ));
    } on MissingRequiredKeysException catch (ex) {
      _handleMissingKeysException(ex);
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> update({
    LandlordProperty property,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    // Create Object Instance from state inputs
    final _prop = LandlordProperty(
      name: state.name,
      propertyType: state.propertyType,
      houseType: state.houseType,
      street: state.street,
      town: state.town,
      // state: state.state,
    );

    // Validate form errors
    emit(state.copyWith(validate: true));

    try {
      if (_prop.failures.isNone()) {
        // Create Data Transfer Object (DTO)
        final _dto = LandlordPropertyData.fromDomain(_prop);

        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final prop = await _repository.update(
          property?.id?.value ?? id,
          _dto,
        );

        emit(state.copyWith(
          property: prop?.domain,
          response: some(right(LandlordSuccess(
            message: "Property updated successfully!",
          ))),
        ));
      }
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
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
      await checkInternetAndConnectivity(true);

      final prop = await _repository.delete(property?.id?.value ?? id);

      emit(state.copyWith(
        property: prop?.domain,
        response: some(right(LandlordSuccess(
          message: "${property?.name?.getOrEmpty} was deleted!",
        ))),
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    toggleLoading();
  }

  void _handleDioFailures(DioError ex) {
    log.wtf(ex);
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
          response: some(left(LandlordFailure.poorInternetConnection())),
        ));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
          response: some(left(LandlordFailure.receiveTimeout())),
        ));
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
          response: some(left(LandlordFailure.timeout())),
        ));
        break;
      // case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
          response: some(left(LandlordFailure.unknown())),
        ));
    }
  }

  void _handleMissingKeysException(MissingRequiredKeysException e) {
    print("Loggin unknown error-----");
    emit(state.copyWith(
      response: some(left(LandlordFailure.unknown(
        message: e.message,
        details: e.missingKeys.fold(
            "",
            (p, next) => "${p.padIf(p.isNotEmpty && next.isNotEmpty, ',')}"
                "$next"),
      ))),
    ));
  }
}
