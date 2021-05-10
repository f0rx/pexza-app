part of 'token_verification_cubit.dart';

@freezed
@immutable
abstract class TokenVerificationState implements _$TokenVerificationState {
  const TokenVerificationState._();

  const factory TokenVerificationState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required OTPCode code,
    @nullable Assignment assignment,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _TokenVerificationState;

  factory TokenVerificationState.initial() => TokenVerificationState(
        code: OTPCode(""),
      );
}
