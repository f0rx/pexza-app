part of 'onboarding_cubit.dart';

@freezed
@immutable
abstract class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    @Default(false) bool isLoading,
    @Default(Left(OnBoardingFailure.notConnected()))
        Either<Failure, bool> isConnected,
    @Default(Left(OnBoardingFailure.poorInternet()))
        Either<Failure, bool> hasInternet,
  }) = _OnBoardingState;
}
