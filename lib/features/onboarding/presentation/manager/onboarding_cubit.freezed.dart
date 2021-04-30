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
      Either<Failure, bool> isConnected =
          const Left(const OnBoardingFailure.notConnected()),
      Either<Failure, bool> hasInternet =
          const Left(const OnBoardingFailure.poorInternet())}) {
    return _OnBoardingState(
      isLoading: isLoading,
      isConnected: isConnected,
      hasInternet: hasInternet,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OnBoardingState = _$OnBoardingStateTearOff();

/// @nodoc
mixin _$OnBoardingState {
  bool get isLoading;
  Either<Failure, bool> get isConnected;
  Either<Failure, bool> get hasInternet;

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
      Either<Failure, bool> isConnected,
      Either<Failure, bool> hasInternet});
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
    Object isConnected = freezed,
    Object hasInternet = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected as Either<Failure, bool>,
      hasInternet: hasInternet == freezed
          ? _value.hasInternet
          : hasInternet as Either<Failure, bool>,
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
      Either<Failure, bool> isConnected,
      Either<Failure, bool> hasInternet});
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
    Object isConnected = freezed,
    Object hasInternet = freezed,
  }) {
    return _then(_OnBoardingState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected as Either<Failure, bool>,
      hasInternet: hasInternet == freezed
          ? _value.hasInternet
          : hasInternet as Either<Failure, bool>,
    ));
  }
}

/// @nodoc
class _$_OnBoardingState implements _OnBoardingState {
  const _$_OnBoardingState(
      {this.isLoading = false,
      this.isConnected = const Left(const OnBoardingFailure.notConnected()),
      this.hasInternet = const Left(const OnBoardingFailure.poorInternet())})
      : assert(isLoading != null),
        assert(isConnected != null),
        assert(hasInternet != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const Left(const OnBoardingFailure.notConnected()))
  @override
  final Either<Failure, bool> isConnected;
  @JsonKey(defaultValue: const Left(const OnBoardingFailure.poorInternet()))
  @override
  final Either<Failure, bool> hasInternet;

  @override
  String toString() {
    return 'OnBoardingState(isLoading: $isLoading, isConnected: $isConnected, hasInternet: $hasInternet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnBoardingState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isConnected, isConnected) ||
                const DeepCollectionEquality()
                    .equals(other.isConnected, isConnected)) &&
            (identical(other.hasInternet, hasInternet) ||
                const DeepCollectionEquality()
                    .equals(other.hasInternet, hasInternet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isConnected) ^
      const DeepCollectionEquality().hash(hasInternet);

  @JsonKey(ignore: true)
  @override
  _$OnBoardingStateCopyWith<_OnBoardingState> get copyWith =>
      __$OnBoardingStateCopyWithImpl<_OnBoardingState>(this, _$identity);
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState(
      {bool isLoading,
      Either<Failure, bool> isConnected,
      Either<Failure, bool> hasInternet}) = _$_OnBoardingState;

  @override
  bool get isLoading;
  @override
  Either<Failure, bool> get isConnected;
  @override
  Either<Failure, bool> get hasInternet;
  @override
  @JsonKey(ignore: true)
  _$OnBoardingStateCopyWith<_OnBoardingState> get copyWith;
}
