// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthWatcherStateTearOff {
  const _$AuthWatcherStateTearOff();

// ignore: unused_element
  _AuthWatcherState call(
      {bool isLoading = false,
      @nullable User user,
      bool isAuthenticated = false}) {
    return _AuthWatcherState(
      isLoading: isLoading,
      user: user,
      isAuthenticated: isAuthenticated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthWatcherState = _$AuthWatcherStateTearOff();

/// @nodoc
mixin _$AuthWatcherState {
  bool get isLoading;
  @nullable
  User get user;
  bool get isAuthenticated;

  @JsonKey(ignore: true)
  $AuthWatcherStateCopyWith<AuthWatcherState> get copyWith;
}

/// @nodoc
abstract class $AuthWatcherStateCopyWith<$Res> {
  factory $AuthWatcherStateCopyWith(
          AuthWatcherState value, $Res Function(AuthWatcherState) then) =
      _$AuthWatcherStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, @nullable User user, bool isAuthenticated});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthWatcherStateCopyWithImpl<$Res>
    implements $AuthWatcherStateCopyWith<$Res> {
  _$AuthWatcherStateCopyWithImpl(this._value, this._then);

  final AuthWatcherState _value;
  // ignore: unused_field
  final $Res Function(AuthWatcherState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object user = freezed,
    Object isAuthenticated = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      user: user == freezed ? _value.user : user as User,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthWatcherStateCopyWith<$Res>
    implements $AuthWatcherStateCopyWith<$Res> {
  factory _$AuthWatcherStateCopyWith(
          _AuthWatcherState value, $Res Function(_AuthWatcherState) then) =
      __$AuthWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, @nullable User user, bool isAuthenticated});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthWatcherStateCopyWithImpl<$Res>
    extends _$AuthWatcherStateCopyWithImpl<$Res>
    implements _$AuthWatcherStateCopyWith<$Res> {
  __$AuthWatcherStateCopyWithImpl(
      _AuthWatcherState _value, $Res Function(_AuthWatcherState) _then)
      : super(_value, (v) => _then(v as _AuthWatcherState));

  @override
  _AuthWatcherState get _value => super._value as _AuthWatcherState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object user = freezed,
    Object isAuthenticated = freezed,
  }) {
    return _then(_AuthWatcherState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      user: user == freezed ? _value.user : user as User,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
    ));
  }
}

/// @nodoc
class _$_AuthWatcherState extends _AuthWatcherState {
  const _$_AuthWatcherState(
      {this.isLoading = false,
      @nullable this.user,
      this.isAuthenticated = false})
      : assert(isLoading != null),
        assert(isAuthenticated != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  @nullable
  final User user;
  @JsonKey(defaultValue: false)
  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'AuthWatcherState(isLoading: $isLoading, user: $user, isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthWatcherState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isAuthenticated);

  @JsonKey(ignore: true)
  @override
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith =>
      __$AuthWatcherStateCopyWithImpl<_AuthWatcherState>(this, _$identity);
}

abstract class _AuthWatcherState extends AuthWatcherState {
  const _AuthWatcherState._() : super._();
  const factory _AuthWatcherState(
      {bool isLoading,
      @nullable User user,
      bool isAuthenticated}) = _$_AuthWatcherState;

  @override
  bool get isLoading;
  @override
  @nullable
  User get user;
  @override
  bool get isAuthenticated;
  @override
  @JsonKey(ignore: true)
  _$AuthWatcherStateCopyWith<_AuthWatcherState> get copyWith;
}
