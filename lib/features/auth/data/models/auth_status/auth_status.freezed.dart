// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStatusTearOff {
  const _$AuthStatusTearOff();

// ignore: unused_element
  _AuthStatus<R> call<R>({Either<AuthResponse, R> status}) {
    return _AuthStatus<R>(
      status: status,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthStatus = _$AuthStatusTearOff();

/// @nodoc
mixin _$AuthStatus<R> {
  Either<AuthResponse, R> get status;

  @JsonKey(ignore: true)
  $AuthStatusCopyWith<R, AuthStatus<R>> get copyWith;
}

/// @nodoc
abstract class $AuthStatusCopyWith<R, $Res> {
  factory $AuthStatusCopyWith(
          AuthStatus<R> value, $Res Function(AuthStatus<R>) then) =
      _$AuthStatusCopyWithImpl<R, $Res>;
  $Res call({Either<AuthResponse, R> status});
}

/// @nodoc
class _$AuthStatusCopyWithImpl<R, $Res>
    implements $AuthStatusCopyWith<R, $Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  final AuthStatus<R> _value;
  // ignore: unused_field
  final $Res Function(AuthStatus<R>) _then;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      status:
          status == freezed ? _value.status : status as Either<AuthResponse, R>,
    ));
  }
}

/// @nodoc
abstract class _$AuthStatusCopyWith<R, $Res>
    implements $AuthStatusCopyWith<R, $Res> {
  factory _$AuthStatusCopyWith(
          _AuthStatus<R> value, $Res Function(_AuthStatus<R>) then) =
      __$AuthStatusCopyWithImpl<R, $Res>;
  @override
  $Res call({Either<AuthResponse, R> status});
}

/// @nodoc
class __$AuthStatusCopyWithImpl<R, $Res>
    extends _$AuthStatusCopyWithImpl<R, $Res>
    implements _$AuthStatusCopyWith<R, $Res> {
  __$AuthStatusCopyWithImpl(
      _AuthStatus<R> _value, $Res Function(_AuthStatus<R>) _then)
      : super(_value, (v) => _then(v as _AuthStatus<R>));

  @override
  _AuthStatus<R> get _value => super._value as _AuthStatus<R>;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_AuthStatus<R>(
      status:
          status == freezed ? _value.status : status as Either<AuthResponse, R>,
    ));
  }
}

/// @nodoc
class _$_AuthStatus<R> extends _AuthStatus<R> {
  const _$_AuthStatus({this.status}) : super._();

  @override
  final Either<AuthResponse, R> status;

  @override
  String toString() {
    return 'AuthStatus<$R>(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthStatus<R> &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$AuthStatusCopyWith<R, _AuthStatus<R>> get copyWith =>
      __$AuthStatusCopyWithImpl<R, _AuthStatus<R>>(this, _$identity);
}

abstract class _AuthStatus<R> extends AuthStatus<R> {
  const _AuthStatus._() : super._();
  const factory _AuthStatus({Either<AuthResponse, R> status}) =
      _$_AuthStatus<R>;

  @override
  Either<AuthResponse, R> get status;
  @override
  @JsonKey(ignore: true)
  _$AuthStatusCopyWith<R, _AuthStatus<R>> get copyWith;
}
