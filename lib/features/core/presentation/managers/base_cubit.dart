import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';

mixin BaseCubit<U extends BaseState> on Cubit<U> {
  void handleLandlordFailure(DioError ex) {
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

mixin BaseState {
  dynamic copyWith;
}
