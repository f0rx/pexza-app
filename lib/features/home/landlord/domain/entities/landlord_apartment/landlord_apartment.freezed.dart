// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_apartment.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordApartmentTearOff {
  const _$LandlordApartmentTearOff();

// ignore: unused_element
  _LandlordApartment call(
      {@nullable UniqueId<int> id,
      @nullable LandlordField name,
      @nullable ApartmentStatus status,
      @nullable LandlordPropertySelectField property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _LandlordApartment(
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
const $LandlordApartment = _$LandlordApartmentTearOff();

/// @nodoc
mixin _$LandlordApartment {
  @nullable
  UniqueId<int> get id;
  @nullable
  LandlordField get name;
  @nullable
  ApartmentStatus get status;
  @nullable
  LandlordPropertySelectField get property;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $LandlordApartmentCopyWith<LandlordApartment> get copyWith;
}

/// @nodoc
abstract class $LandlordApartmentCopyWith<$Res> {
  factory $LandlordApartmentCopyWith(
          LandlordApartment value, $Res Function(LandlordApartment) then) =
      _$LandlordApartmentCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable LandlordField name,
      @nullable ApartmentStatus status,
      @nullable LandlordPropertySelectField property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class _$LandlordApartmentCopyWithImpl<$Res>
    implements $LandlordApartmentCopyWith<$Res> {
  _$LandlordApartmentCopyWithImpl(this._value, this._then);

  final LandlordApartment _value;
  // ignore: unused_field
  final $Res Function(LandlordApartment) _then;

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
      name: name == freezed ? _value.name : name as LandlordField,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      property: property == freezed
          ? _value.property
          : property as LandlordPropertySelectField,
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
abstract class _$LandlordApartmentCopyWith<$Res>
    implements $LandlordApartmentCopyWith<$Res> {
  factory _$LandlordApartmentCopyWith(
          _LandlordApartment value, $Res Function(_LandlordApartment) then) =
      __$LandlordApartmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable LandlordField name,
      @nullable ApartmentStatus status,
      @nullable LandlordPropertySelectField property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});
}

/// @nodoc
class __$LandlordApartmentCopyWithImpl<$Res>
    extends _$LandlordApartmentCopyWithImpl<$Res>
    implements _$LandlordApartmentCopyWith<$Res> {
  __$LandlordApartmentCopyWithImpl(
      _LandlordApartment _value, $Res Function(_LandlordApartment) _then)
      : super(_value, (v) => _then(v as _LandlordApartment));

  @override
  _LandlordApartment get _value => super._value as _LandlordApartment;

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
    return _then(_LandlordApartment(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      name: name == freezed ? _value.name : name as LandlordField,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      property: property == freezed
          ? _value.property
          : property as LandlordPropertySelectField,
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
class _$_LandlordApartment extends _LandlordApartment {
  const _$_LandlordApartment(
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
  final LandlordField name;
  @override
  @nullable
  final ApartmentStatus status;
  @override
  @nullable
  final LandlordPropertySelectField property;
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
    return 'LandlordApartment(id: $id, name: $name, status: $status, property: $property, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordApartment &&
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
  _$LandlordApartmentCopyWith<_LandlordApartment> get copyWith =>
      __$LandlordApartmentCopyWithImpl<_LandlordApartment>(this, _$identity);
}

abstract class _LandlordApartment extends LandlordApartment {
  const _LandlordApartment._() : super._();
  const factory _LandlordApartment(
      {@nullable UniqueId<int> id,
      @nullable LandlordField name,
      @nullable ApartmentStatus status,
      @nullable LandlordPropertySelectField property,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_LandlordApartment;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  LandlordField get name;
  @override
  @nullable
  ApartmentStatus get status;
  @override
  @nullable
  LandlordPropertySelectField get property;
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
  _$LandlordApartmentCopyWith<_LandlordApartment> get copyWith;
}
