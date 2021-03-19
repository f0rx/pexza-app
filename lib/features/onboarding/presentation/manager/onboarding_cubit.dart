import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:pexza/features/onboarding/data/models/on_boarding_failure.dart';
import 'package:pexza/utils/utils.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

@injectable
class OnBoardingCubit extends Cubit<OnBoardingState> {
  final DataConnectionChecker _connectionChecker;
  StreamSubscription _subscription;

  OnBoardingCubit(this._connectionChecker) : super(OnBoardingState());

  void init() async {
    Stream<ConnectivityResult> _connectivityStream =
        Connectivity().onConnectivityChanged;
    Stream<DataConnectionStatus> _internetConnectionStream =
        _connectionChecker.onStatusChange;

    // Merge both streams
    Stream _merge =
        StreamGroup.merge([_connectivityStream, _internetConnectionStream]);

    // Cancel any previous subscription
    await _subscription?.cancel();

    _subscription = _merge.listen((event) {
      emit(state.copyWith(isLoading: true));

      emit(state.copyWith(
        status: event != ConnectivityResult.none &&
                event != DataConnectionStatus.disconnected
            ? right(true)
            : left(OnBoardingFailure.noInternetConnection()),
      ));

      emit(state.copyWith(isLoading: false));

      event != ConnectivityResult.none &&
              event != DataConnectionStatus.disconnected
          ? print("You are back online!")
          : print(OnBoardingFailure.noInternetConnection().message);
    });
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
