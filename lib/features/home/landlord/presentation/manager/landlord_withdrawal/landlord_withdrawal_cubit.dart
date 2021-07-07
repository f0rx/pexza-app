import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/data/repositories/withdrawal_repository/withdrawal_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/withdrawal/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_withdrawal_state.dart';
part 'landlord_withdrawal_cubit.freezed.dart';

@injectable
class LandlordWithdrawalCubit extends Cubit<LandlordWithdrawalState> {
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;
  final WithdrawalRepository _withdrawalRepository;

  LandlordWithdrawalCubit(
    this._withdrawalRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordWithdrawalState.initial());

  void _toggleLoading([bool isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void bankChanged(Bank value) async {
    emit(state.copyWith(
      accountDetail: state.accountDetail.copyWith(bank: value),
    ));

    await verifyAccount(state.accountDetail.accountNumber.getOrEmpty);
  }

  void accountNumberChanged(String value) async {
    emit(state.copyWith(
      accountDetail: state.accountDetail.copyWith(
        accountNumber: BasicTextField(value),
      ),
    ));

    await verifyAccount(
      value,
      value.length < LandlordWithdrawalState.ACCOUNT_NUMBER_LENMGTH,
    );
  }

  Future<void> _checkInternetAndConnectivity([bool shouldThrow = false]) async {
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

  Future<void> fetchBanks() async {
    _toggleLoading();

    try {
      await _checkInternetAndConnectivity();

      final _result = await _withdrawalRepository.banks();

      emit(state.copyWith(banks: _result.domain));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    _toggleLoading();
  }

  Future<void> verifyAccount(String input, [bool clearName = true]) async {
    emit(state.copyWith(validate: true, response: none()));

    if (clearName)
      emit(state.copyWith(
        accountDetail: state.accountDetail.copyWith(
          accountName: BasicTextField(''),
        ),
      ));

    if (input.length == LandlordWithdrawalState.ACCOUNT_NUMBER_LENMGTH &&
        !state.isLoading)
      try {
        _toggleLoading(true);

        if (state.accountDetail.failures.isNone()) {
          await _checkInternetAndConnectivity(true);

          emit(state.copyWith(
            response: some(right(InfoResponse(
              message: 'Fetching account information..Please wait!',
              position: BottomAlertDialogPosition.top,
            ))),
          ));

          final _result = await _withdrawalRepository.verifyBankAccount(
            AccountDetailDTO.fromDomain(state.accountDetail),
          );

          if (!_result.status) {
            emit(state.copyWith(
              verified: false,
              response: some(left(LandlordFailure(message: _result.message))),
            ));
          }

          emit(state.copyWith(
            verified: true,
            accountDetail: state.accountDetail?.merge(
              _result.domain,
            ),
          ));
        }
      } on LandlordFailure catch (e) {
        emit(state.copyWith(response: some(left(e))));
      } catch (_) {
        if (_.runtimeType is DioError) _handleDioFailures(_);
      }

    _toggleLoading(false);
  }

  Future<void> storeAccount() async {
    _toggleLoading();

    emit(state.copyWith(validate: true));

    try {
      if (state.accountDetail.failures.isNone()) {
        await _checkInternetAndConnectivity(true);

        final _result = await _withdrawalRepository.storeBankAccount(
          AccountDetailDTO.fromDomain(state.accountDetail),
        );

        emit(state.copyWith(
          response: some(right(LandlordSuccess(message: _result.status))),
          accountDetail: state.accountDetail?.merge(
            _result.bankAccount.domain,
          ),
        ));
      }
    } on LandlordFailure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    _toggleLoading();
  }

  void _handleDioFailures(DioError ex) {
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
          response: some(left(
            LandlordFailure.poorInternetConnection(),
          )),
        ));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
          response: some(left(
            LandlordFailure.receiveTimeout(),
          )),
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
          response: some(left(
            LandlordFailure.timeout(),
          )),
        ));
        break;
      default:
        emit(state.copyWith(
          response: some(left(
            LandlordFailure.unknown(),
          )),
        ));
    }
  }
}
