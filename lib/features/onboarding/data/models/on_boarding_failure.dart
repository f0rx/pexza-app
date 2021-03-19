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
        message: "Your device has no Internet Connection!",
      );

  factory OnBoardingFailure.poorInternet() => OnBoardingFailure(
        message: "Poor Internet Connection!",
      );
}
