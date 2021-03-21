// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'token_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TokenVerificationStateTearOff {
  const _$TokenVerificationStateTearOff();

// ignore: unused_element
  _TokenVerificationState call(
      {@required OTPCode code,
      bool isLoading = false,
      bool validate = false,
      Option<Either<AuthFailure, Unit>> authStatus = const None()}) {
    return _TokenVerificationState(
      code: code,
      isLoading: isLoading,
      validate: validate,
      authStatus: authStatus,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TokenVerificationState = _$TokenVerificationStateTearOff();

/// @nodoc
mixin _$TokenVerificationState {
  OTPCode get code;
  bool get isLoading;
  bool get validate;
  Option<Either<AuthFailure, Unit>> get authStatus;

  @JsonKey(ignore: true)
  $TokenVerificationStateCopyWith<TokenVerificationState> get copyWith;
}

/// @nodoc
abstract class $TokenVerificationStateCopyWith<$Res> {
  factory $TokenVerificationStateCopyWith(TokenVerificationState value,
          $Res Function(TokenVerificationState) then) =
      _$TokenVerificationStateCopyWithImpl<$Res>;
  $Res call(
      {OTPCode code,
      bool isLoading,
      bool validate,
      Option<Either<AuthFailure, Unit>> authStatus});
}

/// @nodoc
class _$TokenVerificationStateCopyWithImpl<$Res>
    implements $TokenVerificationStateCopyWith<$Res> {
  _$TokenVerificationStateCopyWithImpl(this._value, this._then);

  final TokenVerificationState _value;
  // ignore: unused_field
  final $Res Function(TokenVerificationState) _then;

  @override
  $Res call({
    Object code = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as OTPCode,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$TokenVerificationStateCopyWith<$Res>
    implements $TokenVerificationStateCopyWith<$Res> {
  factory _$TokenVerificationStateCopyWith(_TokenVerificationState value,
          $Res Function(_TokenVerificationState) then) =
      __$TokenVerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {OTPCode code,
      bool isLoading,
      bool validate,
      Option<Either<AuthFailure, Unit>> authStatus});
}

/// @nodoc
class __$TokenVerificationStateCopyWithImpl<$Res>
    extends _$TokenVerificationStateCopyWithImpl<$Res>
    implements _$TokenVerificationStateCopyWith<$Res> {
  __$TokenVerificationStateCopyWithImpl(_TokenVerificationState _value,
      $Res Function(_TokenVerificationState) _then)
      : super(_value, (v) => _then(v as _TokenVerificationState));

  @override
  _TokenVerificationState get _value => super._value as _TokenVerificationState;

  @override
  $Res call({
    Object code = freezed,
    Object isLoading = freezed,
    Object validate = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_TokenVerificationState(
      code: code == freezed ? _value.code : code as OTPCode,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_TokenVerificationState extends _TokenVerificationState {
  const _$_TokenVerificationState(
      {@required this.code,
      this.isLoading = false,
      this.validate = false,
      this.authStatus = const None()})
      : assert(code != null),
        assert(isLoading != null),
        assert(validate != null),
        assert(authStatus != null),
        super._();

  @override
  final OTPCode code;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<AuthFailure, Unit>> authStatus;

  @override
  String toString() {
    return 'TokenVerificationState(code: $code, isLoading: $isLoading, validate: $validate, authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenVerificationState &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.authStatus, authStatus) ||
                const DeepCollectionEquality()
                    .equals(other.authStatus, authStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(authStatus);

  @JsonKey(ignore: true)
  @override
  _$TokenVerificationStateCopyWith<_TokenVerificationState> get copyWith =>
      __$TokenVerificationStateCopyWithImpl<_TokenVerificationState>(
          this, _$identity);
}

abstract class _TokenVerificationState extends TokenVerificationState {
  const _TokenVerificationState._() : super._();
  const factory _TokenVerificationState(
          {@required OTPCode code,
          bool isLoading,
          bool validate,
          Option<Either<AuthFailure, Unit>> authStatus}) =
      _$_TokenVerificationState;

  @override
  OTPCode get code;
  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  Option<Either<AuthFailure, Unit>> get authStatus;
  @override
  @JsonKey(ignore: true)
  _$TokenVerificationStateCopyWith<_TokenVerificationState> get copyWith;
}
