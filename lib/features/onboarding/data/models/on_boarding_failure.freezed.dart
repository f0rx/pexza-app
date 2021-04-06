// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'on_boarding_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OnBoardingFailureTearOff {
  const _$OnBoardingFailureTearOff();

// ignore: unused_element
  _OnBoardingFailure call(
      {String code, String message, String error, String details}) {
    return _OnBoardingFailure(
      code: code,
      message: message,
      error: error,
      details: details,
    );
  }

// ignore: unused_element
  _NoInternetConnection notConnected(
      {String code,
      String message = OnBoardingFailure.kNotConnected,
      String error,
      String details}) {
    return _NoInternetConnection(
      code: code,
      message: message,
      error: error,
      details: details,
    );
  }

// ignore: unused_element
  _PoorInternetConnection poorInternet(
      {String code,
      String message = OnBoardingFailure.kPoorInternet,
      String error,
      String details}) {
    return _PoorInternetConnection(
      code: code,
      message: message,
      error: error,
      details: details,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OnBoardingFailure = _$OnBoardingFailureTearOff();

/// @nodoc
mixin _$OnBoardingFailure {
  String get code;
  String get message;
  String get error;
  String get details;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    @required
        TResult notConnected(
            String code, String message, String error, String details),
    @required
        TResult poorInternet(
            String code, String message, String error, String details),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    TResult notConnected(
        String code, String message, String error, String details),
    TResult poorInternet(
        String code, String message, String error, String details),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    @required TResult notConnected(_NoInternetConnection value),
    @required TResult poorInternet(_PoorInternetConnection value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    TResult notConnected(_NoInternetConnection value),
    TResult poorInternet(_PoorInternetConnection value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $OnBoardingFailureCopyWith<OnBoardingFailure> get copyWith;
}

/// @nodoc
abstract class $OnBoardingFailureCopyWith<$Res> {
  factory $OnBoardingFailureCopyWith(
          OnBoardingFailure value, $Res Function(OnBoardingFailure) then) =
      _$OnBoardingFailureCopyWithImpl<$Res>;
  $Res call({String code, String message, String error, String details});
}

/// @nodoc
class _$OnBoardingFailureCopyWithImpl<$Res>
    implements $OnBoardingFailureCopyWith<$Res> {
  _$OnBoardingFailureCopyWithImpl(this._value, this._then);

  final OnBoardingFailure _value;
  // ignore: unused_field
  final $Res Function(OnBoardingFailure) _then;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
    Object error = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

/// @nodoc
abstract class _$OnBoardingFailureCopyWith<$Res>
    implements $OnBoardingFailureCopyWith<$Res> {
  factory _$OnBoardingFailureCopyWith(
          _OnBoardingFailure value, $Res Function(_OnBoardingFailure) then) =
      __$OnBoardingFailureCopyWithImpl<$Res>;
  @override
  $Res call({String code, String message, String error, String details});
}

/// @nodoc
class __$OnBoardingFailureCopyWithImpl<$Res>
    extends _$OnBoardingFailureCopyWithImpl<$Res>
    implements _$OnBoardingFailureCopyWith<$Res> {
  __$OnBoardingFailureCopyWithImpl(
      _OnBoardingFailure _value, $Res Function(_OnBoardingFailure) _then)
      : super(_value, (v) => _then(v as _OnBoardingFailure));

  @override
  _OnBoardingFailure get _value => super._value as _OnBoardingFailure;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
    Object error = freezed,
    Object details = freezed,
  }) {
    return _then(_OnBoardingFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

/// @nodoc
class _$_OnBoardingFailure extends _OnBoardingFailure {
  const _$_OnBoardingFailure(
      {this.code, this.message, this.error, this.details})
      : super._();

  @override
  final String code;
  @override
  final String message;
  @override
  final String error;
  @override
  final String details;

  @override
  String toString() {
    return 'OnBoardingFailure(code: $code, message: $message, error: $error, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnBoardingFailure &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$OnBoardingFailureCopyWith<_OnBoardingFailure> get copyWith =>
      __$OnBoardingFailureCopyWithImpl<_OnBoardingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    @required
        TResult notConnected(
            String code, String message, String error, String details),
    @required
        TResult poorInternet(
            String code, String message, String error, String details),
  }) {
    assert($default != null);
    assert(notConnected != null);
    assert(poorInternet != null);
    return $default(code, message, error, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    TResult notConnected(
        String code, String message, String error, String details),
    TResult poorInternet(
        String code, String message, String error, String details),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(code, message, error, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    @required TResult notConnected(_NoInternetConnection value),
    @required TResult poorInternet(_PoorInternetConnection value),
  }) {
    assert($default != null);
    assert(notConnected != null);
    assert(poorInternet != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    TResult notConnected(_NoInternetConnection value),
    TResult poorInternet(_PoorInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _OnBoardingFailure extends OnBoardingFailure {
  const _OnBoardingFailure._() : super._();
  const factory _OnBoardingFailure(
      {String code,
      String message,
      String error,
      String details}) = _$_OnBoardingFailure;

  @override
  String get code;
  @override
  String get message;
  @override
  String get error;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$OnBoardingFailureCopyWith<_OnBoardingFailure> get copyWith;
}

/// @nodoc
abstract class _$NoInternetConnectionCopyWith<$Res>
    implements $OnBoardingFailureCopyWith<$Res> {
  factory _$NoInternetConnectionCopyWith(_NoInternetConnection value,
          $Res Function(_NoInternetConnection) then) =
      __$NoInternetConnectionCopyWithImpl<$Res>;
  @override
  $Res call({String code, String message, String error, String details});
}

/// @nodoc
class __$NoInternetConnectionCopyWithImpl<$Res>
    extends _$OnBoardingFailureCopyWithImpl<$Res>
    implements _$NoInternetConnectionCopyWith<$Res> {
  __$NoInternetConnectionCopyWithImpl(
      _NoInternetConnection _value, $Res Function(_NoInternetConnection) _then)
      : super(_value, (v) => _then(v as _NoInternetConnection));

  @override
  _NoInternetConnection get _value => super._value as _NoInternetConnection;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
    Object error = freezed,
    Object details = freezed,
  }) {
    return _then(_NoInternetConnection(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

/// @nodoc
class _$_NoInternetConnection extends _NoInternetConnection {
  const _$_NoInternetConnection(
      {this.code,
      this.message = OnBoardingFailure.kNotConnected,
      this.error,
      this.details})
      : assert(message != null),
        super._();

  @override
  final String code;
  @JsonKey(defaultValue: OnBoardingFailure.kNotConnected)
  @override
  final String message;
  @override
  final String error;
  @override
  final String details;

  @override
  String toString() {
    return 'OnBoardingFailure.notConnected(code: $code, message: $message, error: $error, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoInternetConnection &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$NoInternetConnectionCopyWith<_NoInternetConnection> get copyWith =>
      __$NoInternetConnectionCopyWithImpl<_NoInternetConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    @required
        TResult notConnected(
            String code, String message, String error, String details),
    @required
        TResult poorInternet(
            String code, String message, String error, String details),
  }) {
    assert($default != null);
    assert(notConnected != null);
    assert(poorInternet != null);
    return notConnected(code, message, error, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    TResult notConnected(
        String code, String message, String error, String details),
    TResult poorInternet(
        String code, String message, String error, String details),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notConnected != null) {
      return notConnected(code, message, error, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    @required TResult notConnected(_NoInternetConnection value),
    @required TResult poorInternet(_PoorInternetConnection value),
  }) {
    assert($default != null);
    assert(notConnected != null);
    assert(poorInternet != null);
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    TResult notConnected(_NoInternetConnection value),
    TResult poorInternet(_PoorInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection extends OnBoardingFailure {
  const _NoInternetConnection._() : super._();
  const factory _NoInternetConnection(
      {String code,
      String message,
      String error,
      String details}) = _$_NoInternetConnection;

  @override
  String get code;
  @override
  String get message;
  @override
  String get error;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$NoInternetConnectionCopyWith<_NoInternetConnection> get copyWith;
}

/// @nodoc
abstract class _$PoorInternetConnectionCopyWith<$Res>
    implements $OnBoardingFailureCopyWith<$Res> {
  factory _$PoorInternetConnectionCopyWith(_PoorInternetConnection value,
          $Res Function(_PoorInternetConnection) then) =
      __$PoorInternetConnectionCopyWithImpl<$Res>;
  @override
  $Res call({String code, String message, String error, String details});
}

/// @nodoc
class __$PoorInternetConnectionCopyWithImpl<$Res>
    extends _$OnBoardingFailureCopyWithImpl<$Res>
    implements _$PoorInternetConnectionCopyWith<$Res> {
  __$PoorInternetConnectionCopyWithImpl(_PoorInternetConnection _value,
      $Res Function(_PoorInternetConnection) _then)
      : super(_value, (v) => _then(v as _PoorInternetConnection));

  @override
  _PoorInternetConnection get _value => super._value as _PoorInternetConnection;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
    Object error = freezed,
    Object details = freezed,
  }) {
    return _then(_PoorInternetConnection(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

/// @nodoc
class _$_PoorInternetConnection extends _PoorInternetConnection {
  const _$_PoorInternetConnection(
      {this.code,
      this.message = OnBoardingFailure.kPoorInternet,
      this.error,
      this.details})
      : assert(message != null),
        super._();

  @override
  final String code;
  @JsonKey(defaultValue: OnBoardingFailure.kPoorInternet)
  @override
  final String message;
  @override
  final String error;
  @override
  final String details;

  @override
  String toString() {
    return 'OnBoardingFailure.poorInternet(code: $code, message: $message, error: $error, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PoorInternetConnection &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$PoorInternetConnectionCopyWith<_PoorInternetConnection> get copyWith =>
      __$PoorInternetConnectionCopyWithImpl<_PoorInternetConnection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    @required
        TResult notConnected(
            String code, String message, String error, String details),
    @required
        TResult poorInternet(
            String code, String message, String error, String details),
  }) {
    assert($default != null);
    assert(notConnected != null);
    assert(poorInternet != null);
    return poorInternet(code, message, error, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(
        String code, String message, String error, String details), {
    TResult notConnected(
        String code, String message, String error, String details),
    TResult poorInternet(
        String code, String message, String error, String details),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (poorInternet != null) {
      return poorInternet(code, message, error, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    @required TResult notConnected(_NoInternetConnection value),
    @required TResult poorInternet(_PoorInternetConnection value),
  }) {
    assert($default != null);
    assert(notConnected != null);
    assert(poorInternet != null);
    return poorInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_OnBoardingFailure value), {
    TResult notConnected(_NoInternetConnection value),
    TResult poorInternet(_PoorInternetConnection value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (poorInternet != null) {
      return poorInternet(this);
    }
    return orElse();
  }
}

abstract class _PoorInternetConnection extends OnBoardingFailure {
  const _PoorInternetConnection._() : super._();
  const factory _PoorInternetConnection(
      {String code,
      String message,
      String error,
      String details}) = _$_PoorInternetConnection;

  @override
  String get code;
  @override
  String get message;
  @override
  String get error;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$PoorInternetConnectionCopyWith<_PoorInternetConnection> get copyWith;
}
