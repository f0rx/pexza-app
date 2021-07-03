import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/features/home/landlord/data/repositories/wallet_repository/wallet_repository.dart';
import 'package:pexza/features/home/landlord/data/repositories/withdrawal_repository/withdrawal_repository.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_wallet_state.dart';
part 'landlord_wallet_cubit.freezed.dart';

@injectable
class LandlordWalletCubit extends Cubit<LandlordWalletState> {
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;
  final WalletRepository _walletRepository;

  LandlordWalletCubit(
    this._walletRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordWalletState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
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
