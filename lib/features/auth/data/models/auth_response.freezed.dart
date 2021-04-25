// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
class _$AuthResponseTearOff {
  const _$AuthResponseTearOff();

// ignore: unused_element
  _AuthResponse call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 200)
          int code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
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
    return _AuthResponse(
      code: code,
      status: status,
      message: message,
      error: error,
      errors: errors,
      details: details,
    );
  }

// ignore: unused_element
  AuthResponse fromJson(Map<String, Object> json) {
    return AuthResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthResponse = _$AuthResponseTearOff();

/// @nodoc
mixin _$AuthResponse {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 200)
  int get code;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status; //
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
  $AuthResponseCopyWith<AuthResponse> get copyWith;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 200)
          int code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
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
class _$AuthResponseCopyWithImpl<$Res> implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  final AuthResponse _value;
  // ignore: unused_field
  final $Res Function(AuthResponse) _then;

  @override
  $Res call({
    Object code = freezed,
    Object status = freezed,
    Object message = freezed,
    Object error = freezed,
    Object errors = freezed,
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as int,
      status: status == freezed ? _value.status : status as String,
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
abstract class _$AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(
          _AuthResponse value, $Res Function(_AuthResponse) then) =
      __$AuthResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 200)
          int code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
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
class __$AuthResponseCopyWithImpl<$Res> extends _$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(
      _AuthResponse _value, $Res Function(_AuthResponse) _then)
      : super(_value, (v) => _then(v as _AuthResponse));

  @override
  _AuthResponse get _value => super._value as _AuthResponse;

  @override
  $Res call({
    Object code = freezed,
    Object status = freezed,
    Object message = freezed,
    Object error = freezed,
    Object errors = freezed,
    Object details = freezed,
  }) {
    return _then(_AuthResponse(
      code: code == freezed ? _value.code : code as int,
      status: status == freezed ? _value.status : status as String,
      message: message == freezed ? _value.message : message as String,
      error: error == freezed ? _value.error : error as String,
      errors: errors == freezed ? _value.errors : errors as ServerFieldErrors,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthResponse extends _AuthResponse with DiagnosticableTreeMixin {
  const _$_AuthResponse(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 200)
          this.code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.status,
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

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthResponseFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 200)
  final int code;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String status;
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
    return 'AuthResponse(code: $code, status: $status, message: $message, error: $error, errors: $errors, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('errors', errors))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
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
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$AuthResponseCopyWith<_AuthResponse> get copyWith =>
      __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthResponseToJson(this);
  }
}

abstract class _AuthResponse extends AuthResponse {
  const _AuthResponse._() : super._();
  const factory _AuthResponse(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 200)
          int code,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
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
      String details}) = _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 200)
  int get code;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
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
  _$AuthResponseCopyWith<_AuthResponse> get copyWith;
}
