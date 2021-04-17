// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'role_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoleStateTearOff {
  const _$RoleStateTearOff();

// ignore: unused_element
  _RoleState call({Role role, bool isLoading = false}) {
    return _RoleState(
      role: role,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoleState = _$RoleStateTearOff();

/// @nodoc
mixin _$RoleState {
  Role get role;
  bool get isLoading;

  @JsonKey(ignore: true)
  $RoleStateCopyWith<RoleState> get copyWith;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res>;
  $Res call({Role role, bool isLoading});
}

/// @nodoc
class _$RoleStateCopyWithImpl<$Res> implements $RoleStateCopyWith<$Res> {
  _$RoleStateCopyWithImpl(this._value, this._then);

  final RoleState _value;
  // ignore: unused_field
  final $Res Function(RoleState) _then;

  @override
  $Res call({
    Object role = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      role: role == freezed ? _value.role : role as Role,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$RoleStateCopyWith<$Res> implements $RoleStateCopyWith<$Res> {
  factory _$RoleStateCopyWith(
          _RoleState value, $Res Function(_RoleState) then) =
      __$RoleStateCopyWithImpl<$Res>;
  @override
  $Res call({Role role, bool isLoading});
}

/// @nodoc
class __$RoleStateCopyWithImpl<$Res> extends _$RoleStateCopyWithImpl<$Res>
    implements _$RoleStateCopyWith<$Res> {
  __$RoleStateCopyWithImpl(_RoleState _value, $Res Function(_RoleState) _then)
      : super(_value, (v) => _then(v as _RoleState));

  @override
  _RoleState get _value => super._value as _RoleState;

  @override
  $Res call({
    Object role = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_RoleState(
      role: role == freezed ? _value.role : role as Role,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_RoleState extends _RoleState {
  const _$_RoleState({this.role, this.isLoading = false})
      : assert(isLoading != null),
        super._();

  @override
  final Role role;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RoleState(role: $role, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoleState &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$RoleStateCopyWith<_RoleState> get copyWith =>
      __$RoleStateCopyWithImpl<_RoleState>(this, _$identity);
}

abstract class _RoleState extends RoleState {
  const _RoleState._() : super._();
  const factory _RoleState({Role role, bool isLoading}) = _$_RoleState;

  @override
  Role get role;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$RoleStateCopyWith<_RoleState> get copyWith;
}
