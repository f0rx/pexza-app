// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthFailure _$AuthFailureFromJson(Map<String, dynamic> json) {
  return _AuthFailure.fromJson(json);
}

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  _AuthFailure call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
          String code,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String error,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerFieldErrorsSerializer()
          ServerFieldErrors errors,
      String details}) {
    return _AuthFailure(
      code: code,
      message: message,
      error: error,
      errors: errors,
      details: details,
    );
  }

// ignore: unused_element
  AuthFailure fromJson(Map<String, Object> json) {
    return AuthFailure.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
  String get code; //
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message; //
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get error; //
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerFieldErrorsSerializer()
  ServerFieldErrors get errors; //
  String get details;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
          String code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String error,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerFieldErrorsSerializer()
          ServerFieldErrors errors,
      String details});

  $ServerFieldErrorsCopyWith<$Res> get errors;
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
    Object error = freezed,
    Object errors = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
      errors: errors == freezed ? _value.errors : errors as ServerFieldErrors,
      details: details == freezed ? _value.details : details as String,
    ));
  }

  @override
  $ServerFieldErrorsCopyWith<$Res> get errors {
    if (_value.errors == null) {
      return null;
    }
    return $ServerFieldErrorsCopyWith<$Res>(_value.errors, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$AuthFailureCopyWith<$Res>
    implements $AuthFailureCopyWith<$Res> {
  factory _$AuthFailureCopyWith(
          _AuthFailure value, $Res Function(_AuthFailure) then) =
      __$AuthFailureCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
          String code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String error,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerFieldErrorsSerializer()
          ServerFieldErrors errors,
      String details});

  @override
  $ServerFieldErrorsCopyWith<$Res> get errors;
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
    Object error = freezed,
    Object errors = freezed,
    Object details = freezed,
  }) {
    return _then(_AuthFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
      errors: errors == freezed ? _value.errors : errors as ServerFieldErrors,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthFailure extends _AuthFailure with DiagnosticableTreeMixin {
  const _$_AuthFailure(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
          this.code,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.message,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.error,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerFieldErrorsSerializer()
          this.errors,
      this.details})
      : super._();

  factory _$_AuthFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthFailureFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
  final String code;
  @override //
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String message;
  @override //
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String error;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerFieldErrorsSerializer()
  final ServerFieldErrors errors;
  @override //
  final String details;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure(code: $code, message: $message, error: $error, errors: $errors, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('errors', errors))
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
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$AuthFailureCopyWith<_AuthFailure> get copyWith =>
      __$AuthFailureCopyWithImpl<_AuthFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthFailureToJson(this);
  }
}

abstract class _AuthFailure extends AuthFailure {
  const _AuthFailure._() : super._();
  const factory _AuthFailure(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
          String code,
      @required
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String error,
      @nullable
      @JsonKey(includeIfNull: false)
      @ServerFieldErrorsSerializer()
          ServerFieldErrors errors,
      String details}) = _$_AuthFailure;

  factory _AuthFailure.fromJson(Map<String, dynamic> json) =
      _$_AuthFailure.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
  String get code;
  @override //
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message;
  @override //
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get error;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  @ServerFieldErrorsSerializer()
  ServerFieldErrors get errors;
  @override //
  String get details;
  @override
  @JsonKey(ignore: true)
  _$AuthFailureCopyWith<_AuthFailure> get copyWith;
}
