// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of general_failure.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GeneralFailure _$GeneralFailureFromJson(Map<String, dynamic> json) {
  return _GeneralFailure.fromJson(json);
}

/// @nodoc
class _$GeneralFailureTearOff {
  const _$GeneralFailureTearOff();

// ignore: unused_element
  _GeneralFailure call(
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
      @nullable
      @JsonKey(includeIfNull: false, ignore: true)
          String details}) {
    return _GeneralFailure(
      code: code,
      status: status,
      message: message,
      error: error,
      errors: errors,
      details: details,
    );
  }

// ignore: unused_element
  GeneralFailure fromJson(Map<String, Object> json) {
    return GeneralFailure.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GeneralFailure = _$GeneralFailureTearOff();

/// @nodoc
mixin _$GeneralFailure {
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
  @nullable
  @JsonKey(includeIfNull: false, ignore: true)
  String get details;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GeneralFailureCopyWith<GeneralFailure> get copyWith;
}

/// @nodoc
abstract class $GeneralFailureCopyWith<$Res> {
  factory $GeneralFailureCopyWith(
          GeneralFailure value, $Res Function(GeneralFailure) then) =
      _$GeneralFailureCopyWithImpl<$Res>;
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
      @nullable
      @JsonKey(includeIfNull: false, ignore: true)
          String details});

  $ServerFieldErrorsCopyWith<$Res> get errors;
}

/// @nodoc
class _$GeneralFailureCopyWithImpl<$Res>
    implements $GeneralFailureCopyWith<$Res> {
  _$GeneralFailureCopyWithImpl(this._value, this._then);

  final GeneralFailure _value;
  // ignore: unused_field
  final $Res Function(GeneralFailure) _then;

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
abstract class _$GeneralFailureCopyWith<$Res>
    implements $GeneralFailureCopyWith<$Res> {
  factory _$GeneralFailureCopyWith(
          _GeneralFailure value, $Res Function(_GeneralFailure) then) =
      __$GeneralFailureCopyWithImpl<$Res>;
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
      @nullable
      @JsonKey(includeIfNull: false, ignore: true)
          String details});

  @override
  $ServerFieldErrorsCopyWith<$Res> get errors;
}

/// @nodoc
class __$GeneralFailureCopyWithImpl<$Res>
    extends _$GeneralFailureCopyWithImpl<$Res>
    implements _$GeneralFailureCopyWith<$Res> {
  __$GeneralFailureCopyWithImpl(
      _GeneralFailure _value, $Res Function(_GeneralFailure) _then)
      : super(_value, (v) => _then(v as _GeneralFailure));

  @override
  _GeneralFailure get _value => super._value as _GeneralFailure;

  @override
  $Res call({
    Object code = freezed,
    Object status = freezed,
    Object message = freezed,
    Object error = freezed,
    Object errors = freezed,
    Object details = freezed,
  }) {
    return _then(_GeneralFailure(
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
class _$_GeneralFailure extends _GeneralFailure {
  const _$_GeneralFailure(
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
      @nullable
      @JsonKey(includeIfNull: false, ignore: true)
          this.details})
      : super._();

  factory _$_GeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_GeneralFailureFromJson(json);

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
  @nullable
  @JsonKey(includeIfNull: false, ignore: true)
  final String details;

  @override
  String toString() {
    return 'GeneralFailure(code: $code, status: $status, message: $message, error: $error, errors: $errors, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeneralFailure &&
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
  _$GeneralFailureCopyWith<_GeneralFailure> get copyWith =>
      __$GeneralFailureCopyWithImpl<_GeneralFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeneralFailureToJson(this);
  }
}

abstract class _GeneralFailure extends GeneralFailure {
  const _GeneralFailure._() : super._();
  const factory _GeneralFailure(
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
      @nullable
      @JsonKey(includeIfNull: false, ignore: true)
          String details}) = _$_GeneralFailure;

  factory _GeneralFailure.fromJson(Map<String, dynamic> json) =
      _$_GeneralFailure.fromJson;

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
  @nullable
  @JsonKey(includeIfNull: false, ignore: true)
  String get details;
  @override
  @JsonKey(ignore: true)
  _$GeneralFailureCopyWith<_GeneralFailure> get copyWith;
}
