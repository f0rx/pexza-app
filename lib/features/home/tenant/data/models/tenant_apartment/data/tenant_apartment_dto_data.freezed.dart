// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of tenant_apartment_dto_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TenantApartmentData _$TenantApartmentDataFromJson(Map<String, dynamic> json) {
  return _TenantApartmentData.fromJson(json);
}

/// @nodoc
class _$TenantApartmentDataTearOff {
  const _$TenantApartmentDataTearOff();

// ignore: unused_element
  _TenantApartmentData call(
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
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) {
    return _TenantApartmentData(
      id: id,
      name: name,
      status: status,
      property: property,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  TenantApartmentData fromJson(Map<String, Object> json) {
    return TenantApartmentData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TenantApartmentData = _$TenantApartmentDataTearOff();

/// @nodoc
mixin _$TenantApartmentData {
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
  @JsonKey(disallowNullValue: true)
  LandlordPropertyData get property;
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TenantApartmentDataCopyWith<TenantApartmentData> get copyWith;
}

/// @nodoc
abstract class $TenantApartmentDataCopyWith<$Res> {
  factory $TenantApartmentDataCopyWith(
          TenantApartmentData value, $Res Function(TenantApartmentData) then) =
      _$TenantApartmentDataCopyWithImpl<$Res>;
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
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});

  $LandlordPropertyDataCopyWith<$Res> get property;
}

/// @nodoc
class _$TenantApartmentDataCopyWithImpl<$Res>
    implements $TenantApartmentDataCopyWith<$Res> {
  _$TenantApartmentDataCopyWithImpl(this._value, this._then);

  final TenantApartmentData _value;
  // ignore: unused_field
  final $Res Function(TenantApartmentData) _then;

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
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
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
abstract class _$TenantApartmentDataCopyWith<$Res>
    implements $TenantApartmentDataCopyWith<$Res> {
  factory _$TenantApartmentDataCopyWith(_TenantApartmentData value,
          $Res Function(_TenantApartmentData) then) =
      __$TenantApartmentDataCopyWithImpl<$Res>;
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
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});

  @override
  $LandlordPropertyDataCopyWith<$Res> get property;
}

/// @nodoc
class __$TenantApartmentDataCopyWithImpl<$Res>
    extends _$TenantApartmentDataCopyWithImpl<$Res>
    implements _$TenantApartmentDataCopyWith<$Res> {
  __$TenantApartmentDataCopyWithImpl(
      _TenantApartmentData _value, $Res Function(_TenantApartmentData) _then)
      : super(_value, (v) => _then(v as _TenantApartmentData));

  @override
  _TenantApartmentData get _value => super._value as _TenantApartmentData;

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
    return _then(_TenantApartmentData(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
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
class _$_TenantApartmentData extends _TenantApartmentData {
  const _$_TenantApartmentData(
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
      @JsonKey(disallowNullValue: true)
          this.property,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_TenantApartmentData.fromJson(Map<String, dynamic> json) =>
      _$_$_TenantApartmentDataFromJson(json);

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
  @JsonKey(disallowNullValue: true)
  final LandlordPropertyData property;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'TenantApartmentData(id: $id, name: $name, status: $status, property: $property, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantApartmentData &&
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
  _$TenantApartmentDataCopyWith<_TenantApartmentData> get copyWith =>
      __$TenantApartmentDataCopyWithImpl<_TenantApartmentData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TenantApartmentDataToJson(this);
  }
}

abstract class _TenantApartmentData extends TenantApartmentData {
  const _TenantApartmentData._() : super._();
  const factory _TenantApartmentData(
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
      @JsonKey(disallowNullValue: true)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) = _$_TenantApartmentData;

  factory _TenantApartmentData.fromJson(Map<String, dynamic> json) =
      _$_TenantApartmentData.fromJson;

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
  @JsonKey(disallowNullValue: true)
  LandlordPropertyData get property;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$TenantApartmentDataCopyWith<_TenantApartmentData> get copyWith;
}
