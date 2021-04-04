// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call(
      {@required DisplayName firstName,
      @required DisplayName lastName,
      @required EmailAddress emailAddress,
      @required Phone phone,
      @required Country region,
      @required Password password,
      @required Password passwordConfirmation,
      @required Gender gender,
      @required DateTimeField dateOfBirth,
      Role subscription,
      bool isLoading = false,
      bool validate = false,
      bool passwordHidden = true,
      Option<Either<AuthFailure, Unit>> authStatus = const None()}) {
    return _AuthState(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      phone: phone,
      region: region,
      password: password,
      passwordConfirmation: passwordConfirmation,
      gender: gender,
      dateOfBirth: dateOfBirth,
      subscription: subscription,
      isLoading: isLoading,
      validate: validate,
      passwordHidden: passwordHidden,
      authStatus: authStatus,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  DisplayName get firstName;
  DisplayName get lastName;
  EmailAddress get emailAddress;
  Phone get phone;
  Country get region;
  Password get password;
  Password get passwordConfirmation;
  Gender get gender;
  DateTimeField get dateOfBirth;
  Role get subscription;
  bool get isLoading;
  bool get validate;
  bool get passwordHidden;
  Option<Either<AuthFailure, Unit>> get authStatus;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {DisplayName firstName,
      DisplayName lastName,
      EmailAddress emailAddress,
      Phone phone,
      Country region,
      Password password,
      Password passwordConfirmation,
      Gender gender,
      DateTimeField dateOfBirth,
      Role subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus});

  $CountryCopyWith<$Res> get region;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object emailAddress = freezed,
    Object phone = freezed,
    Object region = freezed,
    Object password = freezed,
    Object passwordConfirmation = freezed,
    Object gender = freezed,
    Object dateOfBirth = freezed,
    Object subscription = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object passwordHidden = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      firstName:
          firstName == freezed ? _value.firstName : firstName as DisplayName,
      lastName: lastName == freezed ? _value.lastName : lastName as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      phone: phone == freezed ? _value.phone : phone as Phone,
      region: region == freezed ? _value.region : region as Country,
      password: password == freezed ? _value.password : password as Password,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation as Password,
      gender: gender == freezed ? _value.gender : gender as Gender,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateTimeField,
      subscription:
          subscription == freezed ? _value.subscription : subscription as Role,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      passwordHidden: passwordHidden == freezed
          ? _value.passwordHidden
          : passwordHidden as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<Either<AuthFailure, Unit>>,
    ));
  }

  @override
  $CountryCopyWith<$Res> get region {
    if (_value.region == null) {
      return null;
    }
    return $CountryCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DisplayName firstName,
      DisplayName lastName,
      EmailAddress emailAddress,
      Phone phone,
      Country region,
      Password password,
      Password passwordConfirmation,
      Gender gender,
      DateTimeField dateOfBirth,
      Role subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus});

  @override
  $CountryCopyWith<$Res> get region;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object emailAddress = freezed,
    Object phone = freezed,
    Object region = freezed,
    Object password = freezed,
    Object passwordConfirmation = freezed,
    Object gender = freezed,
    Object dateOfBirth = freezed,
    Object subscription = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object passwordHidden = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_AuthState(
      firstName:
          firstName == freezed ? _value.firstName : firstName as DisplayName,
      lastName: lastName == freezed ? _value.lastName : lastName as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      phone: phone == freezed ? _value.phone : phone as Phone,
      region: region == freezed ? _value.region : region as Country,
      password: password == freezed ? _value.password : password as Password,
      passwordConfirmation: passwordConfirmation == freezed
          ? _value.passwordConfirmation
          : passwordConfirmation as Password,
      gender: gender == freezed ? _value.gender : gender as Gender,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateTimeField,
      subscription:
          subscription == freezed ? _value.subscription : subscription as Role,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      passwordHidden: passwordHidden == freezed
          ? _value.passwordHidden
          : passwordHidden as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {@required this.firstName,
      @required this.lastName,
      @required this.emailAddress,
      @required this.phone,
      @required this.region,
      @required this.password,
      @required this.passwordConfirmation,
      @required this.gender,
      @required this.dateOfBirth,
      this.subscription,
      this.isLoading = false,
      this.validate = false,
      this.passwordHidden = true,
      this.authStatus = const None()})
      : assert(firstName != null),
        assert(lastName != null),
        assert(emailAddress != null),
        assert(phone != null),
        assert(region != null),
        assert(password != null),
        assert(passwordConfirmation != null),
        assert(gender != null),
        assert(dateOfBirth != null),
        assert(isLoading != null),
        assert(validate != null),
        assert(passwordHidden != null),
        assert(authStatus != null),
        super._();

  @override
  final DisplayName firstName;
  @override
  final DisplayName lastName;
  @override
  final EmailAddress emailAddress;
  @override
  final Phone phone;
  @override
  final Country region;
  @override
  final Password password;
  @override
  final Password passwordConfirmation;
  @override
  final Gender gender;
  @override
  final DateTimeField dateOfBirth;
  @override
  final Role subscription;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: true)
  @override
  final bool passwordHidden;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<AuthFailure, Unit>> authStatus;

  @override
  String toString() {
    return 'AuthState(firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, phone: $phone, region: $region, password: $password, passwordConfirmation: $passwordConfirmation, gender: $gender, dateOfBirth: $dateOfBirth, subscription: $subscription, isLoading: $isLoading, validate: $validate, passwordHidden: $passwordHidden, authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                const DeepCollectionEquality().equals(
                    other.passwordConfirmation, passwordConfirmation)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.subscription, subscription) ||
                const DeepCollectionEquality()
                    .equals(other.subscription, subscription)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.passwordHidden, passwordHidden) ||
                const DeepCollectionEquality()
                    .equals(other.passwordHidden, passwordHidden)) &&
            (identical(other.authStatus, authStatus) ||
                const DeepCollectionEquality()
                    .equals(other.authStatus, authStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirmation) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(subscription) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(passwordHidden) ^
      const DeepCollectionEquality().hash(authStatus);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const _AuthState._() : super._();
  const factory _AuthState(
      {@required DisplayName firstName,
      @required DisplayName lastName,
      @required EmailAddress emailAddress,
      @required Phone phone,
      @required Country region,
      @required Password password,
      @required Password passwordConfirmation,
      @required Gender gender,
      @required DateTimeField dateOfBirth,
      Role subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus}) = _$_AuthState;

  @override
  DisplayName get firstName;
  @override
  DisplayName get lastName;
  @override
  EmailAddress get emailAddress;
  @override
  Phone get phone;
  @override
  Country get region;
  @override
  Password get password;
  @override
  Password get passwordConfirmation;
  @override
  Gender get gender;
  @override
  DateTimeField get dateOfBirth;
  @override
  Role get subscription;
  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get passwordHidden;
  @override
  Option<Either<AuthFailure, Unit>> get authStatus;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
