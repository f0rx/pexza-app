import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/onboarding/data/models/on_boarding_failure.dart';
import 'package:pexza/utils/utils.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

@injectable
class OnBoardingCubit extends Cubit<OnBoardingState> {
  final DataConnectionChecker _connectionChecker;
  final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult> _connectivitySubscription;
  StreamSubscription<DataConnectionStatus> _internetConnectionSuscription;

  OnBoardingCubit(
    this._connectionChecker,
    this._connectivity,
  ) : super(OnBoardingState());

  void init() async {
    emit(state.copyWith(isLoading: true));

    // Open all Hive Boxes
    await HiveBoxes.box();
    await HiveBoxes.accessTokenBox();

    _connectivitySubscription?.cancel();

    _connectivitySubscription ??= _connectivity.onConnectivityChanged.listen(
      (result) {
        emit(state.copyWith(
          isConnected: result == ConnectivityResult.none
              ? left(OnBoardingFailure.notConnected())
              : right(result == ConnectivityResult.none),
        ));
      },
    );

    _internetConnectionSuscription?.cancel();

    _internetConnectionSuscription ??= _connectionChecker.onStatusChange.listen(
      (result) async {
        emit(state.copyWith(
          isConnected: result == DataConnectionStatus.disconnected
              ? left(OnBoardingFailure.notConnected())
              : right(true),
          hasInternet: result == DataConnectionStatus.disconnected
              ? left(OnBoardingFailure.poorInternet())
              : right((await _connectivity.checkConnectivity()) !=
                      ConnectivityResult.none &&
                  result == DataConnectionStatus.connected),
        ));
      },
    );

    emit(state.copyWith(isLoading: false));
  }

  @override
  Future<void> close() async {
    await _connectivitySubscription?.cancel();
    await _internetConnectionSuscription?.cancel();
    return super.close();
  }
}
