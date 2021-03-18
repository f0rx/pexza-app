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

  OnBoardingCubit(this._connectionChecker) : super(OnBoardingState());

  void init() async {
    await Future.delayed(env.splashDuration);

    final ConnectivityResult isConnected =
        await (Connectivity().checkConnectivity());
    final bool hasInternetConnection = await _connectionChecker.hasConnection;

    emit(state.copyWith(
      status: isConnected != ConnectivityResult.none
          ? hasInternetConnection
              ? right(true)
              : left(OnBoardingFailure.poorInternet())
          : left(OnBoardingFailure.noInternetConnection()),
    ));
  }
}
