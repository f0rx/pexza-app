import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';

part 'on_boarding_failure.freezed.dart';

@freezed
@immutable
abstract class OnBoardingFailure implements _$OnBoardingFailure, Failure {
  static const String kNotConnected = "You\'re offline!";
  static const String kPoorInternet = "Connecting.. Please wait!";
  const OnBoardingFailure._();

  const factory OnBoardingFailure.notConnected({
    int code,
    @Default(OnBoardingFailure.kNotConnected) String message,
    String error,
    String details,
    ServerFieldErrors errors,
  }) = _NoInternetConnection;

  const factory OnBoardingFailure.poorInternet({
    int code,
    @Default(OnBoardingFailure.kPoorInternet) String message,
    String error,
    String details,
    ServerFieldErrors errors,
  }) = _PoorInternetConnection;
}
