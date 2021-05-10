library landlord_apartment_cubit.dart;

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
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart';
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_apartment_state.dart';
part 'landlord_apartment_cubit.freezed.dart';

@injectable
class LandlordApartmentCubit extends Cubit<LandlordApartmentState> {
  final ApartmentRepository _repository;
  final PropertyRepository _propertyRepository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordApartmentCubit(
    this._repository,
    this._propertyRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordApartmentState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void apartmentNameChanged(String value) => emit(state.copyWith(
        name: BasicTextField(value),
      ));

  void init([
    LandlordApartment apartment,
    LandlordProperty property,
  ]) async =>
      emit(state.copyWith(
        name: apartment?.name ?? state.name,
        currentProperty: property ?? state.currentProperty,
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

  Future<void> fetchAllLandlordApartments() async {
    toggleLoading();

    try {
      await checkInternetAndConnectivity();

      final aprts = await _repository.all();

      emit(state.copyWith(
        // response: none(),
        apartments: aprts.data.map((e) => e?.domain).toImmutableList(),
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } on DioError catch (e) {
      _handleDioFailures(e);
    }

    toggleLoading();
  }

  Future<void> getApartmentsForProperty({
    LandlordProperty property,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    try {
      await checkInternetAndConnectivity();

      final aprts = await _repository.allApartmentsForProperty(
        property?.id?.value ?? id?.value,
      );

      emit(state.copyWith(
        // response: none(),
        apartments: aprts.data.map((e) => e?.domain).toImmutableList(),
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } on DioError catch (e) {
      _handleDioFailures(e);
    }

    toggleLoading();
  }

  Future<void> create() async {
    toggleLoading();

    // Create Object Instance from state inputs
    final _apartment = LandlordApartment(
      name: state.name,
      property: state.currentProperty,
    );

    // Validate Input fields
    emit(state.copyWith(validate: true));

    try {
      if (_apartment.failures.isNone()) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final apartmentDTO = await _repository.create(
          LandlordApartmentData.fromDomain(_apartment),
        );

        emit(state.copyWith(
          apartment: apartmentDTO.domain,
          response: some(right(LandlordSuccess(
            message: "${apartmentDTO?.data?.name ?? 'New Apartment'} added to "
                "${state.currentProperty?.name?.getOrEmpty}",
          ))),
        ));
      }
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
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

      emit(state.copyWith(apartment: _apartment?.domain));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> update({
    LandlordApartment apartment,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    final _apartment = LandlordApartment(
      name: state.name,
      property: state.currentProperty,
    );

    // Validate Input fields
    emit(state.copyWith(validate: true));

    try {
      if (_apartment.failures.isNone()) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final _apartmentDTO = await _repository.update(
          apartment?.id?.value ?? id,
          LandlordApartmentData.fromDomain(_apartment),
        );

        emit(state.copyWith(
          apartment: _apartmentDTO.domain,
          response: some(right(LandlordSuccess(
            message: "${apartment.name.getOrEmpty} updated successfully!",
          ))),
        ));
      }
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
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
      await checkInternetAndConnectivity(true);

      Future.wait<void>([
        _repository.delete(apartment?.id?.value ?? id),
        this.fetchAllLandlordApartments(),
        if (!state.currentProperty.isNull)
          this.getApartmentsForProperty(property: state.currentProperty),
      ], eagerError: true);

      emit(state.copyWith(
        response: some(right(LandlordSuccess(
          message: "${apartment.name.getOrEmpty} deleted successfully!",
        ))),
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
