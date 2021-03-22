// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  _AuthFailure call({String code, @required String message, String details}) {
    return _AuthFailure(
      code: code,
      message: message,
      details: details,
    );
  }

// ignore: unused_element
  AccountAlreadyExists accountAlreadyExists(
      {String code,
      @required String message,
      String details,
      @required EmailAddress email,
      @required AuthProviderType provider,
      @required @nullable Object credentials}) {
    return AccountAlreadyExists(
      code: code,
      message: message,
      details: details,
      email: email,
      provider: provider,
      credentials: credentials,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  String get code;
  String get message;
  String get details;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String code, String message, String details), {
    @required
        TResult accountAlreadyExists(
            String code,
            String message,
            String details,
            EmailAddress email,
            AuthProviderType provider,
            @nullable Object credentials),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String code, String message, String details), {
    TResult accountAlreadyExists(
        String code,
        String message,
        String details,
        EmailAddress email,
        AuthProviderType provider,
        @nullable Object credentials),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AuthFailure value), {
    @required TResult accountAlreadyExists(AccountAlreadyExists value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AuthFailure value), {
    TResult accountAlreadyExists(AccountAlreadyExists value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String code, String message, String details});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(
          _AuthFailure value, $Res Function(_AuthFailure) then) =
      __$AuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String code, String message, String details});
}

/// @nodoc
class __$AuthFailureCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$AuthFailureCopyWith<$Res> {
  __$AuthFailureCopyWithImpl(
      _AuthFailure _value, $Res Function(_AuthFailure) _then)
      : super(_value, (v) => _then(v as _AuthFailure));

  @override
  _AuthFailure get _value => super._value as _AuthFailure;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
    Object details = freezed,
  }) {
    return _then(_AuthFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

/// @nodoc
class _$_AuthFailure extends _AuthFailure with DiagnosticableTreeMixin {
  const _$_AuthFailure({this.code, @required this.message, this.details})
      : assert(message != null),
        super._();

  @override
  final String code;
  @override
  final String message;
  @override
  final String details;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure(code: $code, message: $message, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFailure &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String code, String message, String details), {
    @required
        TResult accountAlreadyExists(
            String code,
            String message,
            String details,
            EmailAddress email,
            AuthProviderType provider,
            @nullable Object credentials),
  }) {
    assert($default != null);
    assert(accountAlreadyExists != null);
    return $default(code, message, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String code, String message, String details), {
    TResult accountAlreadyExists(
        String code,
        String message,
        String details,
        EmailAddress email,
        AuthProviderType provider,
        @nullable Object credentials),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(code, message, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AuthFailure value), {
    @required TResult accountAlreadyExists(AccountAlreadyExists value),
  }) {
    assert($default != null);
    assert(accountAlreadyExists != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AuthFailure value), {
    TResult accountAlreadyExists(AccountAlreadyExists value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure extends AuthFailure {
  const _AuthFailure._() : super._();
  const factory _AuthFailure(
      {String code, @required String message, String details}) = _$_AuthFailure;

  @override
  String get code;
  @override
  String get message;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$AuthFailureCopyWith<_AuthFailure> get copyWith;
}

/// @nodoc
abstract class $AccountAlreadyExistsCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory $AccountAlreadyExistsCopyWith(AccountAlreadyExists value,
          $Res Function(AccountAlreadyExists) then) =
      _$AccountAlreadyExistsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String message,
      String details,
      EmailAddress email,
      AuthProviderType provider,
      @nullable Object credentials});
}

/// @nodoc
class _$AccountAlreadyExistsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AccountAlreadyExistsCopyWith<$Res> {
  _$AccountAlreadyExistsCopyWithImpl(
      AccountAlreadyExists _value, $Res Function(AccountAlreadyExists) _then)
      : super(_value, (v) => _then(v as AccountAlreadyExists));

  @override
  AccountAlreadyExists get _value => super._value as AccountAlreadyExists;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
    Object details = freezed,
    Object email = freezed,
    Object provider = freezed,
    Object credentials = freezed,
  }) {
    return _then(AccountAlreadyExists(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
      email: email == freezed ? _value.email : email as EmailAddress,
      provider:
          provider == freezed ? _value.provider : provider as AuthProviderType,
      credentials: credentials == freezed ? _value.credentials : credentials,
    ));
  }
}

/// @nodoc
class _$AccountAlreadyExists extends AccountAlreadyExists
    with DiagnosticableTreeMixin {
  const _$AccountAlreadyExists(
      {this.code,
      @required this.message,
      this.details,
      @required this.email,
      @required this.provider,
      @required @nullable this.credentials})
      : assert(message != null),
        assert(email != null),
        assert(provider != null),
        super._();

  @override
  final String code;
  @override
  final String message;
  @override
  final String details;
  @override
  final EmailAddress email;
  @override
  final AuthProviderType provider;
  @override
  @nullable
  final Object credentials;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.accountAlreadyExists(code: $code, message: $message, details: $details, email: $email, provider: $provider, credentials: $credentials)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.accountAlreadyExists'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('details', details))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('credentials', credentials));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountAlreadyExists &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.credentials, credentials) ||
                const DeepCollectionEquality()
                    .equals(other.credentials, credentials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(credentials);

  @JsonKey(ignore: true)
  @override
  $AccountAlreadyExistsCopyWith<AccountAlreadyExists> get copyWith =>
      _$AccountAlreadyExistsCopyWithImpl<AccountAlreadyExists>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(String code, String message, String details), {
    @required
        TResult accountAlreadyExists(
            String code,
            String message,
            String details,
            EmailAddress email,
            AuthProviderType provider,
            @nullable Object credentials),
  }) {
    assert($default != null);
    assert(accountAlreadyExists != null);
    return accountAlreadyExists(
        code, message, details, email, provider, credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(String code, String message, String details), {
    TResult accountAlreadyExists(
        String code,
        String message,
        String details,
        EmailAddress email,
        AuthProviderType provider,
        @nullable Object credentials),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(
          code, message, details, email, provider, credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_AuthFailure value), {
    @required TResult accountAlreadyExists(AccountAlreadyExists value),
  }) {
    assert($default != null);
    assert(accountAlreadyExists != null);
    return accountAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_AuthFailure value), {
    TResult accountAlreadyExists(AccountAlreadyExists value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class AccountAlreadyExists extends AuthFailure {
  const AccountAlreadyExists._() : super._();
  const factory AccountAlreadyExists(
      {String code,
      @required String message,
      String details,
      @required EmailAddress email,
      @required AuthProviderType provider,
      @required @nullable Object credentials}) = _$AccountAlreadyExists;

  @override
  String get code;
  @override
  String get message;
  @override
  String get details;
  EmailAddress get email;
  AuthProviderType get provider;
  @nullable
  Object get credentials;
  @override
  @JsonKey(ignore: true)
  $AccountAlreadyExistsCopyWith<AccountAlreadyExists> get copyWith;
}
