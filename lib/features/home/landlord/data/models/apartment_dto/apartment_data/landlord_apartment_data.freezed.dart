// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_apartment_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordApartmentData _$LandlordApartmentDataFromJson(
    Map<String, dynamic> json) {
  return _LandlordApartmentData.fromJson(json);
}

/// @nodoc
class _$LandlordApartmentDataTearOff {
  const _$LandlordApartmentDataTearOff();

// ignore: unused_element
  _LandlordApartmentData call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(disallowNullValue: true, name: 'property_id')
      @IntegerSerializer()
          int propertyId,
      @nullable
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
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
          String deletedAt}) {
    return _LandlordApartmentData(
      id: id,
      name: name,
      status: status,
      propertyId: propertyId,
      property: property,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  LandlordApartmentData fromJson(Map<String, Object> json) {
    return LandlordApartmentData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordApartmentData = _$LandlordApartmentDataTearOff();

/// @nodoc
mixin _$LandlordApartmentData {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @nullable
  @JsonKey(disallowNullValue: true, name: 'property_id')
  @IntegerSerializer()
  int get propertyId;
  @nullable
  @JsonKey(disallowNullValue: true)
  LandlordPropertyData get property;
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

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LandlordApartmentDataCopyWith<LandlordApartmentData> get copyWith;
}

/// @nodoc
abstract class $LandlordApartmentDataCopyWith<$Res> {
  factory $LandlordApartmentDataCopyWith(LandlordApartmentData value,
          $Res Function(LandlordApartmentData) then) =
      _$LandlordApartmentDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(disallowNullValue: true, name: 'property_id')
      @IntegerSerializer()
          int propertyId,
      @nullable
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
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
          String deletedAt});

  $LandlordPropertyDataCopyWith<$Res> get property;
}

/// @nodoc
class _$LandlordApartmentDataCopyWithImpl<$Res>
    implements $LandlordApartmentDataCopyWith<$Res> {
  _$LandlordApartmentDataCopyWithImpl(this._value, this._then);

  final LandlordApartmentData _value;
  // ignore: unused_field
  final $Res Function(LandlordApartmentData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object propertyId = freezed,
    Object property = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
      propertyId: propertyId == freezed ? _value.propertyId : propertyId as int,
      property: property == freezed
          ? _value.property
          : property as LandlordPropertyData,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $LandlordPropertyDataCopyWith<$Res> get property {
    if (_value.property == null) {
      return null;
    }
    return $LandlordPropertyDataCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordApartmentDataCopyWith<$Res>
    implements $LandlordApartmentDataCopyWith<$Res> {
  factory _$LandlordApartmentDataCopyWith(_LandlordApartmentData value,
          $Res Function(_LandlordApartmentData) then) =
      __$LandlordApartmentDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(disallowNullValue: true, name: 'property_id')
      @IntegerSerializer()
          int propertyId,
      @nullable
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
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
          String deletedAt});

  @override
  $LandlordPropertyDataCopyWith<$Res> get property;
}

/// @nodoc
class __$LandlordApartmentDataCopyWithImpl<$Res>
    extends _$LandlordApartmentDataCopyWithImpl<$Res>
    implements _$LandlordApartmentDataCopyWith<$Res> {
  __$LandlordApartmentDataCopyWithImpl(_LandlordApartmentData _value,
      $Res Function(_LandlordApartmentData) _then)
      : super(_value, (v) => _then(v as _LandlordApartmentData));

  @override
  _LandlordApartmentData get _value => super._value as _LandlordApartmentData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object propertyId = freezed,
    Object property = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_LandlordApartmentData(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
      propertyId: propertyId == freezed ? _value.propertyId : propertyId as int,
      property: property == freezed
          ? _value.property
          : property as LandlordPropertyData,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LandlordApartmentData extends _LandlordApartmentData {
  const _$_LandlordApartmentData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.status,
      @nullable
      @JsonKey(disallowNullValue: true, name: 'property_id')
      @IntegerSerializer()
          this.propertyId,
      @nullable
      @JsonKey(disallowNullValue: true)
          this.property,
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
          this.deletedAt})
      : super._();

  factory _$_LandlordApartmentData.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordApartmentDataFromJson(json);

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
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String status;
  @override
  @nullable
  @JsonKey(disallowNullValue: true, name: 'property_id')
  @IntegerSerializer()
  final int propertyId;
  @override
  @nullable
  @JsonKey(disallowNullValue: true)
  final LandlordPropertyData property;
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
  String toString() {
    return 'LandlordApartmentData(id: $id, name: $name, status: $status, propertyId: $propertyId, property: $property, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordApartmentData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.propertyId, propertyId) ||
                const DeepCollectionEquality()
                    .equals(other.propertyId, propertyId)) &&
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
      const DeepCollectionEquality().hash(propertyId) ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$LandlordApartmentDataCopyWith<_LandlordApartmentData> get copyWith =>
      __$LandlordApartmentDataCopyWithImpl<_LandlordApartmentData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordApartmentDataToJson(this);
  }
}

abstract class _LandlordApartmentData extends LandlordApartmentData {
  const _LandlordApartmentData._() : super._();
  const factory _LandlordApartmentData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(disallowNullValue: true, name: 'property_id')
      @IntegerSerializer()
          int propertyId,
      @nullable
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
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
          String deletedAt}) = _$_LandlordApartmentData;

  factory _LandlordApartmentData.fromJson(Map<String, dynamic> json) =
      _$_LandlordApartmentData.fromJson;

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
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @override
  @nullable
  @JsonKey(disallowNullValue: true, name: 'property_id')
  @IntegerSerializer()
  int get propertyId;
  @override
  @nullable
  @JsonKey(disallowNullValue: true)
  LandlordPropertyData get property;
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
  @JsonKey(ignore: true)
  _$LandlordApartmentDataCopyWith<_LandlordApartmentData> get copyWith;
}
