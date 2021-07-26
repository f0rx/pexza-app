import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/features/home/tenant/data/failure/tenant__failure.dart';
import 'package:pexza/features/home/tenant/data/models/payment/card_dto/index.dart';
import 'package:pexza/features/home/tenant/data/repositories/debit_card/debit_card_repository.dart';
import 'package:pexza/features/home/tenant/data/success/tenant__success.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'debit_card_state.dart';
part 'debit_card_cubit.freezed.dart';

@injectable
class DebitCardCubit extends Cubit<DebitCardState> {
  final DebitCardRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  DebitCardCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(DebitCardState.initial());

  Future<void> checkInternetAndConnectivity([bool shouldThrow = false]) async {
    final isConnected =
        (await _connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected) {
      if (shouldThrow) throw TenantFailure.noInternetConnection();
      emit(state.copyWith(
        response: some(left(TenantFailure.noInternetConnection())),
      ));
    }

    final hasInternet = await _dataConnectionChecker.hasConnection;

    if (isConnected && !hasInternet) {
      if (shouldThrow) throw TenantFailure.poorInternetConnection();
      emit(state.copyWith(
        response: some(left(TenantFailure.poorInternetConnection())),
      ));
    }
  }

  void initShowFailure(bool show) async {
    // It's necessary i do this, else the widget tree will not rebuild
    // in order to show the flushbar
    await Future.delayed(Duration(milliseconds: 100));
    emit(state.copyWith(hasShownFailureParam: show));
  }

  void toggleLoading([bool isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void cardNameChanged(String value) => emit(state.copyWith(
        cardName: DebitCardName(value.toUpperCase()),
      ));

  void cardNumberChanged(String value) => emit(state.copyWith(
        cardNumber: DebitCardNumber(value.trimWhiteSpaces()),
      ));

  void cardExpiryDateChanged(String value) => emit(state.copyWith(
        expiryDate: DebitCardExpiryDate(value),
      ));

  void cardCVVChanged(String value) => emit(state.copyWith(
        cardCVV: DebitCardCVV(value),
      ));

  void cardDescriptionChanged(String value) => emit(state.copyWith(
        description: BasicTextField(value),
      ));

  void currentCardChanged(DebitCard card) =>
      emit(state.copyWith(currentDebitCard: card));

  Future<void> allDebitCards() async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity();

      final response = await _repository.all();

      emit(state.copyWith(
        debitCards: response.domain,
        currentDebitCard: response.domain.firstOrNull((el) => el.isPrimary),
      ));
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> _verifyDebitCard() async {
    var _card = DebitCard(cardNumber: state.cardNumber);

    try {
      if (state.cardNumber.isValid) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        emit(state.copyWith(
          response: some(right(InfoResponse(
            uuid: UniqueId.v4().value,
            message: 'Validating your card, please wait...',
            position: BottomAlertDialogPosition.top,
          ))),
        ));

        final dto = await _repository.verify(
          CardDTO.fromDomain(_card),
        );

        emit(state.copyWith(
          currentDebitCard: dto.domain,
          response: some(right(
            TenantSuccess(
              uuid: UniqueId.v4().value,
              message: 'Verification successful! Proceeding to checkout.',
              popRoute: false,
            ),
          )),
        ));
      }
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }
  }

  Either<bool, DebitCard> validateFields() {
    var _card = DebitCard(
      cardNumber: state.cardNumber,
      cardName: state.cardName,
      cvv: state.cardCVV,
      cardExpiryDate: state.expiryDate,
      meta: InvoiceMeta(description: state.description),
    );

    // Validate Input fields
    emit(state.copyWith(validate: true, currentDebitCard: _card));

    return _card.failures.isNone() ? right(_card) : left(false);
  }

  Future<void> addNewCard() async {
    toggleLoading();

    var validated = validateFields();

    try {
      if (validated.isRight()) {
        await _verifyDebitCard();

        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final dto = await _repository.store(
          CardDTO.fromDomain(validated.getOrElse(() => null)),
        );

        emit(state.copyWith(
          currentDebitCard: state.currentDebitCard?.merge(dto.domain)?.copyWith(
                    cardName: state.cardName,
                    cvv: state.cardCVV,
                    cardExpiryDate: state.expiryDate,
                  ) ??
              dto.domain?.copyWith(
                cardName: state.cardName,
                cvv: state.cardCVV,
                cardExpiryDate: state.expiryDate,
              ),
          response: some(right(
            TenantSuccess(
              uuid: UniqueId.v4().value,
              message: 'Your new card was added!',
              popRoute: true,
            ),
          )),
        ));

        // Refresh list
        allDebitCards();
      }
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> makePrimary() async {
    toggleLoading();

    try {
      if (!state.currentDebitCard.isNull) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final _result = await _repository.primary(
          state.currentDebitCard.id?.value,
        );

        emit(state.copyWith(
          response: some(right(_result.copyWith(
            uuid: UniqueId.v4().value,
            popRoute: false,
          ))),
        ));

        // Refresh list
        allDebitCards();
      }
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    toggleLoading();
  }

  Future<void> deleteCard() async {
    toggleLoading();

    try {
      if (!state.currentDebitCard.isNull) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        await _repository.delete(
          state.currentDebitCard.id?.value,
        );

        emit(state.copyWith(
          response: some(right(LandlordSuccess(
            uuid: UniqueId.v4().value,
            message: 'Your card was removed!',
            popRoute: false,
          ))),
        ));

        // Refresh list
        allDebitCards();
      }
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    toggleLoading();
  }

  void _handleDioFailures(DioError ex) {
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
          response: some(left(TenantFailure.poorInternetConnection())),
        ));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
          response: some(left(TenantFailure.receiveTimeout())),
        ));
        break;
      case DioErrorType.RESPONSE:
        final _return = TenantFailure.fromJson(
          ex.response.data,
        );
        emit(state.copyWith(
          response: some(left(_return.copyWith(
            message: _return.foldCode(
              is404: () => "Error! Resource not found!",
              orElse: () => _return.message,
            ),
          ))),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(
          response: some(left(TenantFailure.timeout())),
        ));
        break;
      case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
          response: some(left(TenantFailure.unknown())),
        ));
    }
  }
}
