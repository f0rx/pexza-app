part of 'onboarding_cubit.dart';

@freezed
@immutable
abstract class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    @Default(false) bool isLoading,
    @Default(Right(false)) Either<OnBoardingFailure, bool> status,
  }) = _OnBoardingState;
}
