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
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart';
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart';
import 'package:pexza/features/home/landlord/data/repositories/misc_repository/misc_repository.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_merger_state.dart';
part 'landlord_merger_cubit.freezed.dart';

@injectable
class LandlordMergerCubit extends Cubit<LandlordMergerState> {
  final ApartmentRepository _apartmentRepository;
  final PropertyRepository _propertyRepository;
  final MiscRepository _miscRepository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordMergerCubit(
    this._apartmentRepository,
    this._propertyRepository,
    this._miscRepository,
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
        amount:
            AmountField(int.tryParse(value) ?? AmountField.DEFAULT.getOrCrash),
      ));

  Future<void> propertyChanged(LandlordProperty property) async {
    // Update state
    emit(state.copyWith(
      selectedProperty: property.id.value == state.selectedProperty?.id?.value
          ? state.selectedProperty
          : property,
    ));
    // Fetch Apartments
    await this.getApartmentsForProperty(property: property);
  }

  void paymentPlanChanged(PaymentPlan plan) => emit(state.copyWith(plan: plan));

  void durationChanged(int duration) =>
      emit(state.copyWith(duration: duration));

  void currencyChanged(Currency currency) =>
      emit(state.copyWith(currency: currency));

  void apartmentChanged(LandlordApartment apartment) => emit(state.copyWith(
        selectedApartment:
            apartment.id.value == state.selectedApartment?.id?.value
                ? state.selectedApartment
                : apartment,
      ));

  Future<void> init({
    LandlordProperty property,
    LandlordApartment apartment,
  }) async {
    toggleLoading();

    try {
      await checkInternetAndConnectivity();

      LandlordProperty selectedProp = property;
      LandlordApartment selectedApartment = apartment;

      if (!property.isNull && !apartment.isNull) {
        emit(state.copyWith(properties: KtList.from([selectedProp])));

        // Update selected property & Fetch related Apartments
        await this.propertyChanged(selectedProp);

        // Find the selected Apartment from the List returned from server
        final _selected = state.apartments.firstOrNull(
          (a) => a.id?.value == selectedApartment?.id?.value,
        );

        // Update the selected apartment
        this.apartmentChanged(_selected);
      } else {
        final props = await _propertyRepository.all();

        // Map the incoming DTO to domain oject
        final domain = props.data.map((e) => e?.domain).toImmutableList();

        // Update state [should come first before propertyChanged()]
        emit(state.copyWith(properties: domain));

        // Find the seleced Property from the list returned from server
        // Set the current property as selected
        selectedProp = domain.firstOrNull(
          (a) => a.id.value == property.id.value,
        );

        // Update selected property & Fetch related Apartments
        await this.propertyChanged(selectedProp);
      }

      // Fetch currencies
      final _currDTO = await _miscRepository.fetchCurrencies();

      // Emit Currencies
      emit(state.copyWith(
        currencies: _currDTO?.domain?.toImmutableList(),
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

  Future<void> getApartmentsForProperty({
    LandlordProperty property,
    UniqueId<int> id,
  }) async {
    toggleLoading();

    try {
      final aprts = await _apartmentRepository.allApartmentsForProperty(
        property?.id?.value ?? id?.value,
      );
      // Map to domain objects
      final domains = aprts.data.map((e) => e?.domain).toImmutableList();

      emit(state.copyWith(
        apartments: domains,
        // If user already selected an apartment, we'll find it in the incoming
        // list and modify the state of the dropdown
        selectedApartment: !state.selectedApartment.isNull
            ? domains.firstOrNull(
                (a) => a?.id?.value == state.selectedApartment?.id?.value,
              )
            : null,
        response: some(right(LandlordSuccess(
          message: "Great! Please select the apartment.",
          popRoute: false,
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

  void pairTenant() async {
    toggleLoading();

    // Create Object Instance from state inputs
    final _merger = ApartmentMerger(
      emailAddress: state.email,
      apartment: state.selectedApartment,
      duration: state.duration,
      plan: state.plan,
      currency: state.currency,
      amount: state.amount,
    );

    // Validate Input fields
    emit(state.copyWith(validate: true));

    // log.wtf(_merger);

    try {
      if (_merger.failures.isNone()) {
        // return;
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final _mergerDTO = await _apartmentRepository.assignTenantToApartment(
          ApartmentMergerData.fromDomain(_merger),
        );

        emit(state.copyWith(
          response: some(right(LandlordSuccess(
            message: "${_merger.apartment.name.getOrEmpty} was assigned to "
                "${_mergerDTO.domain.tenant.firstName.getOrEmpty} "
                "${_mergerDTO.domain.tenant.lastName.getOrEmpty}!",
          ))),
        ));
      }
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
