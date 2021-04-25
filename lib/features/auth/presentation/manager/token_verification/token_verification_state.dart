part of 'token_verification_cubit.dart';

@freezed
@immutable
abstract class TokenVerificationState implements _$TokenVerificationState {
  const TokenVerificationState._();

  const factory TokenVerificationState({
    @required OTPCode code,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(const None()) Option<Either<AuthResponse, Unit>> authStatus,
  }) = _TokenVerificationState;

  factory TokenVerificationState.initial() => TokenVerificationState(
        code: OTPCode(""),
      );
}
