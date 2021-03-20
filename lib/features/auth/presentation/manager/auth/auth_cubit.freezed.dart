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
      {@required DisplayName displayName,
      @required EmailAddress emailAddress,
      @required Phone phone,
      @required Password password,
      Role subscription,
      bool isLoading = false,
      bool validate = false,
      bool passwordHidden = true,
      Option<Either<AuthFailure, Unit>> authStatus = const None()}) {
    return _AuthState(
      displayName: displayName,
      emailAddress: emailAddress,
      phone: phone,
      password: password,
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
  DisplayName get displayName;
  EmailAddress get emailAddress;
  Phone get phone;
  Password get password; // @required Password confirmation,
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
      {DisplayName displayName,
      EmailAddress emailAddress,
      Phone phone,
      Password password,
      Role subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object displayName = freezed,
    Object emailAddress = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object subscription = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object passwordHidden = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      phone: phone == freezed ? _value.phone : phone as Phone,
      password: password == freezed ? _value.password : password as Password,
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
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DisplayName displayName,
      EmailAddress emailAddress,
      Phone phone,
      Password password,
      Role subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus});
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
    Object displayName = freezed,
    Object emailAddress = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object subscription = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object passwordHidden = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_AuthState(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      phone: phone == freezed ? _value.phone : phone as Phone,
      password: password == freezed ? _value.password : password as Password,
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
      {@required this.displayName,
      @required this.emailAddress,
      @required this.phone,
      @required this.password,
      this.subscription,
      this.isLoading = false,
      this.validate = false,
      this.passwordHidden = true,
      this.authStatus = const None()})
      : assert(displayName != null),
        assert(emailAddress != null),
        assert(phone != null),
        assert(password != null),
        assert(isLoading != null),
        assert(validate != null),
        assert(passwordHidden != null),
        assert(authStatus != null),
        super._();

  @override
  final DisplayName displayName;
  @override
  final EmailAddress emailAddress;
  @override
  final Phone phone;
  @override
  final Password password;
  @override // @required Password confirmation,
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
    return 'AuthState(displayName: $displayName, emailAddress: $emailAddress, phone: $phone, password: $password, subscription: $subscription, isLoading: $isLoading, validate: $validate, passwordHidden: $passwordHidden, authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
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
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
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
      {@required DisplayName displayName,
      @required EmailAddress emailAddress,
      @required Phone phone,
      @required Password password,
      Role subscription,
      bool isLoading,
      bool validate,
      bool passwordHidden,
      Option<Either<AuthFailure, Unit>> authStatus}) = _$_AuthState;

  @override
  DisplayName get displayName;
  @override
  EmailAddress get emailAddress;
  @override
  Phone get phone;
  @override
  Password get password;
  @override // @required Password confirmation,
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
