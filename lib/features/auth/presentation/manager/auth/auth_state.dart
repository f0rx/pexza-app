part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    @required DisplayName displayName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Password password,
    @required Password newPassword,
    Role subscription,
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(true) bool passwordHidden,
    @Default(const None()) Option<Either<AuthFailure, Unit>> authStatus,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        displayName: DisplayName(""),
        emailAddress: EmailAddress(""),
        phone: Phone("", Country.NG),
        password: Password(""),
        newPassword: Password(""),
      );
}
