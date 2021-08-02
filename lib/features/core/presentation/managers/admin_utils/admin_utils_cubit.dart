library admin_utils_cubit.dart;

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/data/repositories/admin_utils_repository.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';

part 'admin_utils_state.dart';
part 'admin_utils_cubit.freezed.dart';

@injectable
class AdminUtilsCubit extends Cubit<AdminUtilsState> {
  final AuthFacade _auth;
  final AdminUtilsRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  AdminUtilsCubit(
    this._auth,
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(AdminUtilsState.initial());

  void toggleLoading([bool isLoading]) => emit(state.copyWith(
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

  void wipeDatabase() async {
    toggleLoading();

    try {
      final isLoggedIn = (await _auth.currentUser).fold(
        (_) => false,
        (o) => o.isSome(),
      );

      if (isLoggedIn) await _auth.signOut();

      await _repository.resetDatabase();

      emit(state.copyWith(
        response: some(right(
          LandlordSuccess(message: "Database reset was successful!"),
        )),
      ));
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
}
