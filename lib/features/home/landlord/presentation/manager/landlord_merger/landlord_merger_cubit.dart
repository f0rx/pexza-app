library landlord_merger_cubit.dart;

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
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart';
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart';

part 'landlord_merger_state.dart';
part 'landlord_merger_cubit.freezed.dart';

@injectable
class LandlordMergerCubit extends Cubit<LandlordMergerState> {
  final ApartmentRepository _apartmentRepository;
  final PropertyRepository _propertyRepository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordMergerCubit(
    this._apartmentRepository,
    this._propertyRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordMergerState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void emailAddressChanged(String value) => emit(state.copyWith(
        email: EmailAddress(value),
      ));

  void amountChanged(String value) => emit(state.copyWith(
        amount: AmountField(int.tryParse(value)),
      ));

  void propertyChanged(LandlordProperty property) async {
    // Update state
    emit(state.copyWith(selectedProperty: property));
    // Fetch Apartments
    await this.getApartmentsForProperty(property: property);
  }

  void paymentPlanChanged(PaymentPlan plan) => emit(state.copyWith(plan: plan));

  void durationChanged(int duration) =>
      emit(state.copyWith(duration: duration));

  void apartmentChanged(LandlordApartment apartment) => emit(state.copyWith(
        selectedApartment: apartment,
      ));

  Future<void> fetchAllLandlordProperties() async {
    toggleLoading();

    try {
      await checkInternetAndConnectivity();

      final props = await _propertyRepository.all();

      emit(state.copyWith(
        properties: props.data.map((e) => e?.domain).toImmutableList(),
        // response: some(right(
        //   LandlordSuccess(message: "Great! Please select the apartment."),
        // )),
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
      final aprts = await _apartmentRepository.allApartmentsForProperty(
        property?.id?.value ?? id?.value,
      );

      emit(state.copyWith(
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

  Future<void> checkInternetAndConnectivity() async {
    final isConnected =
        (await _connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected)
      emit(state.copyWith(
        response: some(left(LandlordFailure.noInternetConnection())),
      ));

    final hasInternet = await _dataConnectionChecker.hasConnection;

    if (!hasInternet) if (!isConnected)
      emit(state.copyWith(
        response: some(left(LandlordFailure.poorInternetConnection())),
      ));
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
