part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  static KtList<Country> countries = KtList.from(Country.list);
  static DateTime firstYear = DateTime(1910);
  const AuthState._();

  const factory AuthState({
    @required DisplayName firstName,
    @required DisplayName lastName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Country region,
    @required Password password,
    @required Password passwordConfirmation,
    @required Gender gender,
    @required DateTimeField dateOfBirth,
    @required EmailTokenField emailToken,
    Role subscription,
    @Default(false) bool isLoading,
    @Default(false) bool shouldGlow,
    @Default(false) bool validate,
    @Default(true) bool passwordHidden,
    @Default(const None()) Option<Either<AuthFailure, Unit>> authStatus,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        firstName: DisplayName(""),
        lastName: DisplayName(""),
        emailAddress: EmailAddress(""),
        phone: Phone("", Country.NG),
        password: Password(""),
        region: Country.NG,
        dateOfBirth: DateTimeField(null),
        passwordConfirmation: Password(""),
        gender: Gender(GenderType.Male),
        emailToken: EmailTokenField(""),
      );
}
