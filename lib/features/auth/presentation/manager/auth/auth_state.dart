part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  static FocusNode confirmPasswordFocus = FocusNode();
  static KtList<Country> countries = KtList.from(Country.list);
  static FocusNode emailAddressFocus = FocusNode();
  static FocusNode firstNameFocus = FocusNode();
  static DateTime firstYear = DateTime(1960);
  static FocusNode lastNameFocus = FocusNode();
  static DateTime lastYear = DateTime(DateTime.now().year - 18);
  static FocusNode passwordFocus = FocusNode();
  static FocusNode phoneNumberFocus = FocusNode();

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
    @Default(const None()) Option<Either<AuthResponse, Unit>> authStatus,
  }) = _AuthState;

  const AuthState._();

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
