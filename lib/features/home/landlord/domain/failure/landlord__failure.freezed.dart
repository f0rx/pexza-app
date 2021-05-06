// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord__failure.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordFailure _$LandlordFailureFromJson(Map<String, dynamic> json) {
  return _LandlordFailure.fromJson(json);
}

/// @nodoc
class _$LandlordFailureTearOff {
  const _$LandlordFailureTearOff();

// ignore: unused_element
  _LandlordFailure call(
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
    return _LandlordFailure(
      code: code,
      status: status,
      message: message,
      error: error,
      errors: errors,
      details: details,
    );
  }

// ignore: unused_element
  LandlordFailure fromJson(Map<String, Object> json) {
    return LandlordFailure.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordFailure = _$LandlordFailureTearOff();

/// @nodoc
mixin _$LandlordFailure {
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
  $LandlordFailureCopyWith<LandlordFailure> get copyWith;
}

/// @nodoc
abstract class $LandlordFailureCopyWith<$Res> {
  factory $LandlordFailureCopyWith(
          LandlordFailure value, $Res Function(LandlordFailure) then) =
      _$LandlordFailureCopyWithImpl<$Res>;
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
class _$LandlordFailureCopyWithImpl<$Res>
    implements $LandlordFailureCopyWith<$Res> {
  _$LandlordFailureCopyWithImpl(this._value, this._then);

  final LandlordFailure _value;
  // ignore: unused_field
  final $Res Function(LandlordFailure) _then;

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
abstract class _$LandlordFailureCopyWith<$Res>
    implements $LandlordFailureCopyWith<$Res> {
  factory _$LandlordFailureCopyWith(
          _LandlordFailure value, $Res Function(_LandlordFailure) then) =
      __$LandlordFailureCopyWithImpl<$Res>;
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
class __$LandlordFailureCopyWithImpl<$Res>
    extends _$LandlordFailureCopyWithImpl<$Res>
    implements _$LandlordFailureCopyWith<$Res> {
  __$LandlordFailureCopyWithImpl(
      _LandlordFailure _value, $Res Function(_LandlordFailure) _then)
      : super(_value, (v) => _then(v as _LandlordFailure));

  @override
  _LandlordFailure get _value => super._value as _LandlordFailure;

  @override
  $Res call({
    Object code = freezed,
    Object status = freezed,
    Object message = freezed,
    Object error = freezed,
    Object errors = freezed,
    Object details = freezed,
  }) {
    return _then(_LandlordFailure(
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
class _$_LandlordFailure extends _LandlordFailure {
  const _$_LandlordFailure(
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

  factory _$_LandlordFailure.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordFailureFromJson(json);

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
    return 'LandlordFailure(code: $code, status: $status, message: $message, error: $error, errors: $errors, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordFailure &&
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
  _$LandlordFailureCopyWith<_LandlordFailure> get copyWith =>
      __$LandlordFailureCopyWithImpl<_LandlordFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordFailureToJson(this);
  }
}

abstract class _LandlordFailure extends LandlordFailure {
  const _LandlordFailure._() : super._();
  const factory _LandlordFailure(
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
          String details}) = _$_LandlordFailure;

  factory _LandlordFailure.fromJson(Map<String, dynamic> json) =
      _$_LandlordFailure.fromJson;

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
  _$LandlordFailureCopyWith<_LandlordFailure> get copyWith;
}
