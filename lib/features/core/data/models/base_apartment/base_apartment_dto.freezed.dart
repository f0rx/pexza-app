// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of base_apartment_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BaseApartmentDTO _$BaseApartmentDTOFromJson(Map<String, dynamic> json) {
  return _BaseApartmentDTO.fromJson(json);
}

/// @nodoc
class _$BaseApartmentDTOTearOff {
  const _$BaseApartmentDTOTearOff();

// ignore: unused_element
  _BaseApartmentDTO call(
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
      @JsonKey(disallowNullValue: true, name: "property_id")
      @IntegerSerializer()
          int propertyId,
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
    return _BaseApartmentDTO(
      id: id,
      name: name,
      status: status,
      propertyId: propertyId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  BaseApartmentDTO fromJson(Map<String, Object> json) {
    return BaseApartmentDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BaseApartmentDTO = _$BaseApartmentDTOTearOff();

/// @nodoc
mixin _$BaseApartmentDTO {
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
  @JsonKey(disallowNullValue: true, name: "property_id")
  @IntegerSerializer()
  int get propertyId;
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
  $BaseApartmentDTOCopyWith<BaseApartmentDTO> get copyWith;
}

/// @nodoc
abstract class $BaseApartmentDTOCopyWith<$Res> {
  factory $BaseApartmentDTOCopyWith(
          BaseApartmentDTO value, $Res Function(BaseApartmentDTO) then) =
      _$BaseApartmentDTOCopyWithImpl<$Res>;
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
      @JsonKey(disallowNullValue: true, name: "property_id")
      @IntegerSerializer()
          int propertyId,
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
}

/// @nodoc
class _$BaseApartmentDTOCopyWithImpl<$Res>
    implements $BaseApartmentDTOCopyWith<$Res> {
  _$BaseApartmentDTOCopyWithImpl(this._value, this._then);

  final BaseApartmentDTO _value;
  // ignore: unused_field
  final $Res Function(BaseApartmentDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object propertyId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
      propertyId: propertyId == freezed ? _value.propertyId : propertyId as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

/// @nodoc
abstract class _$BaseApartmentDTOCopyWith<$Res>
    implements $BaseApartmentDTOCopyWith<$Res> {
  factory _$BaseApartmentDTOCopyWith(
          _BaseApartmentDTO value, $Res Function(_BaseApartmentDTO) then) =
      __$BaseApartmentDTOCopyWithImpl<$Res>;
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
      @JsonKey(disallowNullValue: true, name: "property_id")
      @IntegerSerializer()
          int propertyId,
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
}

/// @nodoc
class __$BaseApartmentDTOCopyWithImpl<$Res>
    extends _$BaseApartmentDTOCopyWithImpl<$Res>
    implements _$BaseApartmentDTOCopyWith<$Res> {
  __$BaseApartmentDTOCopyWithImpl(
      _BaseApartmentDTO _value, $Res Function(_BaseApartmentDTO) _then)
      : super(_value, (v) => _then(v as _BaseApartmentDTO));

  @override
  _BaseApartmentDTO get _value => super._value as _BaseApartmentDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object status = freezed,
    Object propertyId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_BaseApartmentDTO(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      status: status == freezed ? _value.status : status as String,
      propertyId: propertyId == freezed ? _value.propertyId : propertyId as int,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BaseApartmentDTO extends _BaseApartmentDTO {
  const _$_BaseApartmentDTO(
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
      @JsonKey(disallowNullValue: true, name: "property_id")
      @IntegerSerializer()
          this.propertyId,
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

  factory _$_BaseApartmentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_BaseApartmentDTOFromJson(json);

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
  @JsonKey(disallowNullValue: true, name: "property_id")
  @IntegerSerializer()
  final int propertyId;
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
    return 'BaseApartmentDTO(id: $id, name: $name, status: $status, propertyId: $propertyId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseApartmentDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.propertyId, propertyId) ||
                const DeepCollectionEquality()
                    .equals(other.propertyId, propertyId)) &&
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
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$BaseApartmentDTOCopyWith<_BaseApartmentDTO> get copyWith =>
      __$BaseApartmentDTOCopyWithImpl<_BaseApartmentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BaseApartmentDTOToJson(this);
  }
}

abstract class _BaseApartmentDTO extends BaseApartmentDTO {
  const _BaseApartmentDTO._() : super._();
  const factory _BaseApartmentDTO(
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
      @JsonKey(disallowNullValue: true, name: "property_id")
      @IntegerSerializer()
          int propertyId,
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
          String deletedAt}) = _$_BaseApartmentDTO;

  factory _BaseApartmentDTO.fromJson(Map<String, dynamic> json) =
      _$_BaseApartmentDTO.fromJson;

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
  @JsonKey(disallowNullValue: true, name: "property_id")
  @IntegerSerializer()
  int get propertyId;
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
  _$BaseApartmentDTOCopyWith<_BaseApartmentDTO> get copyWith;
}
