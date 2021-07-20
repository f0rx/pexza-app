// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of admin_utils_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AdminUtilsStateTearOff {
  const _$AdminUtilsStateTearOff();

// ignore: unused_element
  _AdminUtilsState call(
      {bool isLoading = false,
      Option<Either<Failure, Success>> response = const None()}) {
    return _AdminUtilsState(
      isLoading: isLoading,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AdminUtilsState = _$AdminUtilsStateTearOff();

/// @nodoc
mixin _$AdminUtilsState {
  bool get isLoading;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $AdminUtilsStateCopyWith<AdminUtilsState> get copyWith;
}

/// @nodoc
abstract class $AdminUtilsStateCopyWith<$Res> {
  factory $AdminUtilsStateCopyWith(
          AdminUtilsState value, $Res Function(AdminUtilsState) then) =
      _$AdminUtilsStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Option<Either<Failure, Success>> response});
}

/// @nodoc
class _$AdminUtilsStateCopyWithImpl<$Res>
    implements $AdminUtilsStateCopyWith<$Res> {
  _$AdminUtilsStateCopyWithImpl(this._value, this._then);

  final AdminUtilsState _value;
  // ignore: unused_field
  final $Res Function(AdminUtilsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
abstract class _$AdminUtilsStateCopyWith<$Res>
    implements $AdminUtilsStateCopyWith<$Res> {
  factory _$AdminUtilsStateCopyWith(
          _AdminUtilsState value, $Res Function(_AdminUtilsState) then) =
      __$AdminUtilsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Option<Either<Failure, Success>> response});
}

/// @nodoc
class __$AdminUtilsStateCopyWithImpl<$Res>
    extends _$AdminUtilsStateCopyWithImpl<$Res>
    implements _$AdminUtilsStateCopyWith<$Res> {
  __$AdminUtilsStateCopyWithImpl(
      _AdminUtilsState _value, $Res Function(_AdminUtilsState) _then)
      : super(_value, (v) => _then(v as _AdminUtilsState));

  @override
  _AdminUtilsState get _value => super._value as _AdminUtilsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object response = freezed,
  }) {
    return _then(_AdminUtilsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_AdminUtilsState extends _AdminUtilsState {
  const _$_AdminUtilsState(
      {this.isLoading = false, this.response = const None()})
      : assert(isLoading != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'AdminUtilsState(isLoading: $isLoading, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminUtilsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$AdminUtilsStateCopyWith<_AdminUtilsState> get copyWith =>
      __$AdminUtilsStateCopyWithImpl<_AdminUtilsState>(this, _$identity);
}

abstract class _AdminUtilsState extends AdminUtilsState {
  const _AdminUtilsState._() : super._();
  const factory _AdminUtilsState(
      {bool isLoading,
      Option<Either<Failure, Success>> response}) = _$_AdminUtilsState;

  @override
  bool get isLoading;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$AdminUtilsStateCopyWith<_AdminUtilsState> get copyWith;
}
