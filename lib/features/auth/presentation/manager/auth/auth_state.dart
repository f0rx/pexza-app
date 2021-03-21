part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  static KtList<Country> countries = KtList.from(Country.list);
  const AuthState._();

  const factory AuthState({
    @required DisplayName displayName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Country region,
    @required Password password,
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
        region: Country.NG,
      );
}
