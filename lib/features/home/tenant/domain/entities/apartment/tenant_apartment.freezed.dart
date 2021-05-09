// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of tenant_apartment.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TenantApartmentTearOff {
  const _$TenantApartmentTearOff();

// ignore: unused_element
  _TenantApartment call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable ApartmentStatus status,
      @nullable LandlordProperty property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _TenantApartment(
      id: id,
      name: name,
      status: status,
      property: property,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TenantApartment = _$TenantApartmentTearOff();

/// @nodoc
mixin _$TenantApartment {
  @nullable
  UniqueId<int> get id;
  @nullable
  BasicTextField<String> get name;
  @nullable
  ApartmentStatus get status;
  @nullable
  LandlordProperty get property;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $TenantApartmentCopyWith<TenantApartment> get copyWith;
}

/// @nodoc
abstract class $TenantApartmentCopyWith<$Res> {
  factory $TenantApartmentCopyWith(
          TenantApartment value, $Res Function(TenantApartment) then) =
      _$TenantApartmentCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable ApartmentStatus status,
      @nullable LandlordProperty property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $LandlordPropertyCopyWith<$Res> get property;
}

/// @nodoc
class _$TenantApartmentCopyWithImpl<$Res>
    implements $TenantApartmentCopyWith<$Res> {
  _$TenantApartmentCopyWithImpl(this._value, this._then);

  final TenantApartment _value;
  // ignore: unused_field
  final $Res Function(TenantApartment) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object property = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $LandlordPropertyCopyWith<$Res> get property {
    if (_value.property == null) {
      return null;
    }
    return $LandlordPropertyCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }
}

/// @nodoc
abstract class _$TenantApartmentCopyWith<$Res>
    implements $TenantApartmentCopyWith<$Res> {
  factory _$TenantApartmentCopyWith(
          _TenantApartment value, $Res Function(_TenantApartment) then) =
      __$TenantApartmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable ApartmentStatus status,
      @nullable LandlordProperty property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $LandlordPropertyCopyWith<$Res> get property;
}

/// @nodoc
class __$TenantApartmentCopyWithImpl<$Res>
    extends _$TenantApartmentCopyWithImpl<$Res>
    implements _$TenantApartmentCopyWith<$Res> {
  __$TenantApartmentCopyWithImpl(
      _TenantApartment _value, $Res Function(_TenantApartment) _then)
      : super(_value, (v) => _then(v as _TenantApartment));

  @override
  _TenantApartment get _value => super._value as _TenantApartment;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object property = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_TenantApartment(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
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
class _$_TenantApartment extends _TenantApartment {
  const _$_TenantApartment(
      {@nullable this.id,
      @nullable this.name,
      @nullable this.status,
      @nullable this.property,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final BasicTextField<String> name;
  @override
  @nullable
  final ApartmentStatus status;
  @override
  @nullable
  final LandlordProperty property;
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
    return 'TenantApartment(id: $id, name: $name, status: $status, property: $property, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantApartment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)) &&
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
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$TenantApartmentCopyWith<_TenantApartment> get copyWith =>
      __$TenantApartmentCopyWithImpl<_TenantApartment>(this, _$identity);
}

abstract class _TenantApartment extends TenantApartment {
  const _TenantApartment._() : super._();
  const factory _TenantApartment(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<String> name,
      @nullable ApartmentStatus status,
      @nullable LandlordProperty property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_TenantApartment;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  BasicTextField<String> get name;
  @override
  @nullable
  ApartmentStatus get status;
  @override
  @nullable
  LandlordProperty get property;
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
  _$TenantApartmentCopyWith<_TenantApartment> get copyWith;
}
