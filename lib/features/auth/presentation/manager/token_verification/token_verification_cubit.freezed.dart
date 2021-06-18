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
      {bool isLoading = false,
      bool validate = false,
      @required OTPCode code,
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response = const None()}) {
    return _TokenVerificationState(
      isLoading: isLoading,
      validate: validate,
      code: code,
      assignment: assignment,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TokenVerificationState = _$TokenVerificationStateTearOff();

/// @nodoc
mixin _$TokenVerificationState {
  bool get isLoading;
  bool get validate;
  OTPCode get code;
  @nullable
  Assignment get assignment;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $TokenVerificationStateCopyWith<TokenVerificationState> get copyWith;
}

/// @nodoc
abstract class $TokenVerificationStateCopyWith<$Res> {
  factory $TokenVerificationStateCopyWith(TokenVerificationState value,
          $Res Function(TokenVerificationState) then) =
      _$TokenVerificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      OTPCode code,
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response});

  $AssignmentCopyWith<$Res> get assignment;
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
    Object isLoading = freezed,
    Object validate = freezed,
    Object code = freezed,
    Object assignment = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      code: code == freezed ? _value.code : code as OTPCode,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }

  @override
  $AssignmentCopyWith<$Res> get assignment {
    if (_value.assignment == null) {
      return null;
    }
    return $AssignmentCopyWith<$Res>(_value.assignment, (value) {
      return _then(_value.copyWith(assignment: value));
    });
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
      {bool isLoading,
      bool validate,
      OTPCode code,
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response});

  @override
  $AssignmentCopyWith<$Res> get assignment;
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
    Object isLoading = freezed,
    Object validate = freezed,
    Object code = freezed,
    Object assignment = freezed,
    Object response = freezed,
  }) {
    return _then(_TokenVerificationState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      code: code == freezed ? _value.code : code as OTPCode,
      assignment:
          assignment == freezed ? _value.assignment : assignment as Assignment,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_TokenVerificationState extends _TokenVerificationState {
  const _$_TokenVerificationState(
      {this.isLoading = false,
      this.validate = false,
      @required this.code,
      @nullable this.assignment,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(code != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final OTPCode code;
  @override
  @nullable
  final Assignment assignment;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'TokenVerificationState(isLoading: $isLoading, validate: $validate, code: $code, assignment: $assignment, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenVerificationState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.assignment, assignment) ||
                const DeepCollectionEquality()
                    .equals(other.assignment, assignment)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(assignment) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$TokenVerificationStateCopyWith<_TokenVerificationState> get copyWith =>
      __$TokenVerificationStateCopyWithImpl<_TokenVerificationState>(
          this, _$identity);
}

abstract class _TokenVerificationState extends TokenVerificationState {
  const _TokenVerificationState._() : super._();
  const factory _TokenVerificationState(
      {bool isLoading,
      bool validate,
      @required OTPCode code,
      @nullable Assignment assignment,
      Option<Either<Failure, Success>> response}) = _$_TokenVerificationState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  OTPCode get code;
  @override
  @nullable
  Assignment get assignment;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$TokenVerificationStateCopyWith<_TokenVerificationState> get copyWith;
}
