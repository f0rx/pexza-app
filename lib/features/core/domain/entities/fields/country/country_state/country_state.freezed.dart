// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of country_state.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CountryStateTearOff {
  const _$CountryStateTearOff();

// ignore: unused_element
  _CountryState call(
      {@nullable UniqueId<int> id,
      @nullable CountryStateName name,
      bool isSupported = false,
      @nullable Country country,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _CountryState(
      id: id,
      name: name,
      isSupported: isSupported,
      country: country,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CountryState = _$CountryStateTearOff();

/// @nodoc
mixin _$CountryState {
  @nullable
  UniqueId<int> get id;
  @nullable
  CountryStateName get name;
  bool get isSupported;
  @nullable
  Country get country;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $CountryStateCopyWith<CountryState> get copyWith;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable CountryStateName name,
      bool isSupported,
      @nullable Country country,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res> implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  final CountryState _value;
  // ignore: unused_field
  final $Res Function(CountryState) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object isSupported = freezed,
    Object country = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as CountryStateName,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      country: country == freezed ? _value.country : country as Country,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    if (_value.country == null) {
      return null;
    }
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$CountryStateCopyWith<$Res>
    implements $CountryStateCopyWith<$Res> {
  factory _$CountryStateCopyWith(
          _CountryState value, $Res Function(_CountryState) then) =
      __$CountryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable CountryStateName name,
      bool isSupported,
      @nullable Country country,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$CountryStateCopyWithImpl<$Res> extends _$CountryStateCopyWithImpl<$Res>
    implements _$CountryStateCopyWith<$Res> {
  __$CountryStateCopyWithImpl(
      _CountryState _value, $Res Function(_CountryState) _then)
      : super(_value, (v) => _then(v as _CountryState));

  @override
  _CountryState get _value => super._value as _CountryState;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object isSupported = freezed,
    Object country = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_CountryState(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as CountryStateName,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      country: country == freezed ? _value.country : country as Country,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_CountryState extends _CountryState {
  const _$_CountryState(
      {@nullable this.id,
      @nullable this.name,
      this.isSupported = false,
      @nullable this.country,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : assert(isSupported != null),
        super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final CountryStateName name;
  @JsonKey(defaultValue: false)
  @override
  final bool isSupported;
  @override
  @nullable
  final Country country;
  @override
  @nullable
  final DateTime createdAt;
  @override
  @nullable
  final DateTime updatedAt;
  @override
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'CountryState(id: $id, name: $name, isSupported: $isSupported, country: $country, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSupported, isSupported) ||
                const DeepCollectionEquality()
                    .equals(other.isSupported, isSupported)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountryStateCopyWith<_CountryState> get copyWith =>
      __$CountryStateCopyWithImpl<_CountryState>(this, _$identity);
}

abstract class _CountryState extends CountryState {
  const _CountryState._() : super._();
  const factory _CountryState(
      {@nullable UniqueId<int> id,
      @nullable CountryStateName name,
      bool isSupported,
      @nullable Country country,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_CountryState;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  CountryStateName get name;
  @override
  bool get isSupported;
  @override
  @nullable
  Country get country;
  @override
  @nullable
  DateTime get createdAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$CountryStateCopyWith<_CountryState> get copyWith;
}
