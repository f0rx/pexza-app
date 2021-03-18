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
  _OnBoardingFailure call({String code, String message, String details}) {
    return _OnBoardingFailure(
      code: code,
      message: message,
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
  String get details;

  @JsonKey(ignore: true)
  $OnBoardingFailureCopyWith<OnBoardingFailure> get copyWith;
}

/// @nodoc
abstract class $OnBoardingFailureCopyWith<$Res> {
  factory $OnBoardingFailureCopyWith(
          OnBoardingFailure value, $Res Function(OnBoardingFailure) then) =
      _$OnBoardingFailureCopyWithImpl<$Res>;
  $Res call({String code, String message, String details});
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
abstract class _$OnBoardingFailureCopyWith<$Res>
    implements $OnBoardingFailureCopyWith<$Res> {
  factory _$OnBoardingFailureCopyWith(
          _OnBoardingFailure value, $Res Function(_OnBoardingFailure) then) =
      __$OnBoardingFailureCopyWithImpl<$Res>;
  @override
  $Res call({String code, String message, String details});
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
    Object details = freezed,
  }) {
    return _then(_OnBoardingFailure(
      code: code == freezed ? _value.code : code as String,
      message: message == freezed ? _value.message : message as String,
      details: details == freezed ? _value.details : details as String,
    ));
  }
}

/// @nodoc
class _$_OnBoardingFailure extends _OnBoardingFailure {
  const _$_OnBoardingFailure({this.code, this.message, this.details})
      : super._();

  @override
  final String code;
  @override
  final String message;
  @override
  final String details;

  @override
  String toString() {
    return 'OnBoardingFailure(code: $code, message: $message, details: $details)';
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
  _$OnBoardingFailureCopyWith<_OnBoardingFailure> get copyWith =>
      __$OnBoardingFailureCopyWithImpl<_OnBoardingFailure>(this, _$identity);
}

abstract class _OnBoardingFailure extends OnBoardingFailure {
  const _OnBoardingFailure._() : super._();
  const factory _OnBoardingFailure(
      {String code, String message, String details}) = _$_OnBoardingFailure;

  @override
  String get code;
  @override
  String get message;
  @override
  String get details;
  @override
  @JsonKey(ignore: true)
  _$OnBoardingFailureCopyWith<_OnBoardingFailure> get copyWith;
}
