// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OnBoardingStateTearOff {
  const _$OnBoardingStateTearOff();

// ignore: unused_element
  _OnBoardingState call(
      {bool isLoading = false,
      Either<OnBoardingFailure, bool> status = const Right(false),
      Option<User> authStatus = const None()}) {
    return _OnBoardingState(
      isLoading: isLoading,
      status: status,
      authStatus: authStatus,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OnBoardingState = _$OnBoardingStateTearOff();

/// @nodoc
mixin _$OnBoardingState {
  bool get isLoading;
  Either<OnBoardingFailure, bool> get status;
  Option<User> get authStatus;

  @JsonKey(ignore: true)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<OnBoardingFailure, bool> status,
      Option<User> authStatus});
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  final OnBoardingState _value;
  // ignore: unused_field
  final $Res Function(OnBoardingState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object status = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      status: status == freezed
          ? _value.status
          : status as Either<OnBoardingFailure, bool>,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<User>,
    ));
  }
}

/// @nodoc
abstract class _$OnBoardingStateCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$OnBoardingStateCopyWith(
          _OnBoardingState value, $Res Function(_OnBoardingState) then) =
      __$OnBoardingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<OnBoardingFailure, bool> status,
      Option<User> authStatus});
}

/// @nodoc
class __$OnBoardingStateCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res>
    implements _$OnBoardingStateCopyWith<$Res> {
  __$OnBoardingStateCopyWithImpl(
      _OnBoardingState _value, $Res Function(_OnBoardingState) _then)
      : super(_value, (v) => _then(v as _OnBoardingState));

  @override
  _OnBoardingState get _value => super._value as _OnBoardingState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object status = freezed,
    Object authStatus = freezed,
  }) {
    return _then(_OnBoardingState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      status: status == freezed
          ? _value.status
          : status as Either<OnBoardingFailure, bool>,
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus as Option<User>,
    ));
  }
}

/// @nodoc
class _$_OnBoardingState implements _OnBoardingState {
  const _$_OnBoardingState(
      {this.isLoading = false,
      this.status = const Right(false),
      this.authStatus = const None()})
      : assert(isLoading != null),
        assert(status != null),
        assert(authStatus != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const Right(false))
  @override
  final Either<OnBoardingFailure, bool> status;
  @JsonKey(defaultValue: const None())
  @override
  final Option<User> authStatus;

  @override
  String toString() {
    return 'OnBoardingState(isLoading: $isLoading, status: $status, authStatus: $authStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnBoardingState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.authStatus, authStatus) ||
                const DeepCollectionEquality()
                    .equals(other.authStatus, authStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(authStatus);

  @JsonKey(ignore: true)
  @override
  _$OnBoardingStateCopyWith<_OnBoardingState> get copyWith =>
      __$OnBoardingStateCopyWithImpl<_OnBoardingState>(this, _$identity);
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState(
      {bool isLoading,
      Either<OnBoardingFailure, bool> status,
      Option<User> authStatus}) = _$_OnBoardingState;

  @override
  bool get isLoading;
  @override
  Either<OnBoardingFailure, bool> get status;
  @override
  Option<User> get authStatus;
  @override
  @JsonKey(ignore: true)
  _$OnBoardingStateCopyWith<_OnBoardingState> get copyWith;
}
