import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';

part 'on_boarding_failure.freezed.dart';

@freezed
@immutable
abstract class OnBoardingFailure implements _$OnBoardingFailure, Failure {
  const OnBoardingFailure._();

  const factory OnBoardingFailure({
    String code,
    String message,
    String details,
  }) = _OnBoardingFailure;

  factory OnBoardingFailure.noInternetConnection() => OnBoardingFailure(
        message: "You're not connected to the internet!",
      );

  factory OnBoardingFailure.poorInternet() => OnBoardingFailure(
        message: "Device has poor internet connection!",
      );
}
