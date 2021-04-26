// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_property_data;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordPropertyData _$LandlordPropertyDataFromJson(Map<String, dynamic> json) {
  return _LandlordPropertyData.fromJson(json);
}

/// @nodoc
class _$LandlordPropertyDataTearOff {
  const _$LandlordPropertyDataTearOff();

// ignore: unused_element
  _LandlordPropertyData call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String state,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants}) {
    return _LandlordPropertyData(
      id: id,
      name: name,
      propertyType: propertyType,
      houseType: houseType,
      street: street,
      town: town,
      state: state,
      stateId: stateId,
      country: country,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      numberOfTenants: numberOfTenants,
    );
  }

// ignore: unused_element
  LandlordPropertyData fromJson(Map<String, Object> json) {
    return LandlordPropertyData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordPropertyData = _$LandlordPropertyDataTearOff();

/// @nodoc
mixin _$LandlordPropertyData {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
  String get propertyType;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
  String get houseType;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get street;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get town;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get state;
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
  int get stateId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get country;
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
  int get numberOfTenants;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LandlordPropertyDataCopyWith<LandlordPropertyData> get copyWith;
}

/// @nodoc
abstract class $LandlordPropertyDataCopyWith<$Res> {
  factory $LandlordPropertyDataCopyWith(LandlordPropertyData value,
          $Res Function(LandlordPropertyData) then) =
      _$LandlordPropertyDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String state,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants});
}

/// @nodoc
class _$LandlordPropertyDataCopyWithImpl<$Res>
    implements $LandlordPropertyDataCopyWith<$Res> {
  _$LandlordPropertyDataCopyWithImpl(this._value, this._then);

  final LandlordPropertyData _value;
  // ignore: unused_field
  final $Res Function(LandlordPropertyData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object propertyType = freezed,
    Object houseType = freezed,
    Object street = freezed,
    Object town = freezed,
    Object state = freezed,
    Object stateId = freezed,
    Object country = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
    Object numberOfTenants = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as String,
      houseType: houseType == freezed ? _value.houseType : houseType as String,
      street: street == freezed ? _value.street : street as String,
      town: town == freezed ? _value.town : town as String,
      state: state == freezed ? _value.state : state as String,
      stateId: stateId == freezed ? _value.stateId : stateId as int,
      country: country == freezed ? _value.country : country as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
      numberOfTenants: numberOfTenants == freezed
          ? _value.numberOfTenants
          : numberOfTenants as int,
    ));
  }
}

/// @nodoc
abstract class _$LandlordPropertyDataCopyWith<$Res>
    implements $LandlordPropertyDataCopyWith<$Res> {
  factory _$LandlordPropertyDataCopyWith(_LandlordPropertyData value,
          $Res Function(_LandlordPropertyData) then) =
      __$LandlordPropertyDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String state,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants});
}

/// @nodoc
class __$LandlordPropertyDataCopyWithImpl<$Res>
    extends _$LandlordPropertyDataCopyWithImpl<$Res>
    implements _$LandlordPropertyDataCopyWith<$Res> {
  __$LandlordPropertyDataCopyWithImpl(
      _LandlordPropertyData _value, $Res Function(_LandlordPropertyData) _then)
      : super(_value, (v) => _then(v as _LandlordPropertyData));

  @override
  _LandlordPropertyData get _value => super._value as _LandlordPropertyData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object propertyType = freezed,
    Object houseType = freezed,
    Object street = freezed,
    Object town = freezed,
    Object state = freezed,
    Object stateId = freezed,
    Object country = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
    Object numberOfTenants = freezed,
  }) {
    return _then(_LandlordPropertyData(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as String,
      houseType: houseType == freezed ? _value.houseType : houseType as String,
      street: street == freezed ? _value.street : street as String,
      town: town == freezed ? _value.town : town as String,
      state: state == freezed ? _value.state : state as String,
      stateId: stateId == freezed ? _value.stateId : stateId as int,
      country: country == freezed ? _value.country : country as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
      numberOfTenants: numberOfTenants == freezed
          ? _value.numberOfTenants
          : numberOfTenants as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LandlordPropertyData extends _LandlordPropertyData {
  const _$_LandlordPropertyData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          this.propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          this.houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.state,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
          this.stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.country,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          this.numberOfTenants})
      : super._();

  factory _$_LandlordPropertyData.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordPropertyDataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
  final String propertyType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
  final String houseType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String street;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String town;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String state;
  @override
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
  final int stateId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String country;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final String deletedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
  final int numberOfTenants;

  @override
  String toString() {
    return 'LandlordPropertyData(id: $id, name: $name, propertyType: $propertyType, houseType: $houseType, street: $street, town: $town, state: $state, stateId: $stateId, country: $country, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, numberOfTenants: $numberOfTenants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordPropertyData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.propertyType, propertyType) ||
                const DeepCollectionEquality()
                    .equals(other.propertyType, propertyType)) &&
            (identical(other.houseType, houseType) ||
                const DeepCollectionEquality()
                    .equals(other.houseType, houseType)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.town, town) ||
                const DeepCollectionEquality().equals(other.town, town)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.stateId, stateId) ||
                const DeepCollectionEquality()
                    .equals(other.stateId, stateId)) &&
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
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.numberOfTenants, numberOfTenants) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfTenants, numberOfTenants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(propertyType) ^
      const DeepCollectionEquality().hash(houseType) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(town) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(stateId) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(numberOfTenants);

  @JsonKey(ignore: true)
  @override
  _$LandlordPropertyDataCopyWith<_LandlordPropertyData> get copyWith =>
      __$LandlordPropertyDataCopyWithImpl<_LandlordPropertyData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordPropertyDataToJson(this);
  }
}

abstract class _LandlordPropertyData extends LandlordPropertyData {
  const _LandlordPropertyData._() : super._();
  const factory _LandlordPropertyData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
          String propertyType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
          String houseType,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String street,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String town,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String state,
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
          int stateId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String country,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
          int numberOfTenants}) = _$_LandlordPropertyData;

  factory _LandlordPropertyData.fromJson(Map<String, dynamic> json) =
      _$_LandlordPropertyData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'property_type')
  String get propertyType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'house_type')
  String get houseType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get street;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get town;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get state;
  @override
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
  int get stateId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get country;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0, name: 'number_of_tenants')
  int get numberOfTenants;
  @override
  @JsonKey(ignore: true)
  _$LandlordPropertyDataCopyWith<_LandlordPropertyData> get copyWith;
}
