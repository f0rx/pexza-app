// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of maintenance_service_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MaintenanceServiceDTO _$MaintenanceServiceDTOFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceServiceDTO.fromJson(json);
}

/// @nodoc
class _$MaintenanceServiceDTOTearOff {
  const _$MaintenanceServiceDTOTearOff();

// ignore: unused_element
  _MaintenanceServiceDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
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
    return _MaintenanceServiceDTO(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  MaintenanceServiceDTO fromJson(Map<String, Object> json) {
    return MaintenanceServiceDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MaintenanceServiceDTO = _$MaintenanceServiceDTOTearOff();

/// @nodoc
mixin _$MaintenanceServiceDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
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
  $MaintenanceServiceDTOCopyWith<MaintenanceServiceDTO> get copyWith;
}

/// @nodoc
abstract class $MaintenanceServiceDTOCopyWith<$Res> {
  factory $MaintenanceServiceDTOCopyWith(MaintenanceServiceDTO value,
          $Res Function(MaintenanceServiceDTO) then) =
      _$MaintenanceServiceDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
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
}

/// @nodoc
class _$MaintenanceServiceDTOCopyWithImpl<$Res>
    implements $MaintenanceServiceDTOCopyWith<$Res> {
  _$MaintenanceServiceDTOCopyWithImpl(this._value, this._then);

  final MaintenanceServiceDTO _value;
  // ignore: unused_field
  final $Res Function(MaintenanceServiceDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

/// @nodoc
abstract class _$MaintenanceServiceDTOCopyWith<$Res>
    implements $MaintenanceServiceDTOCopyWith<$Res> {
  factory _$MaintenanceServiceDTOCopyWith(_MaintenanceServiceDTO value,
          $Res Function(_MaintenanceServiceDTO) then) =
      __$MaintenanceServiceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
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
}

/// @nodoc
class __$MaintenanceServiceDTOCopyWithImpl<$Res>
    extends _$MaintenanceServiceDTOCopyWithImpl<$Res>
    implements _$MaintenanceServiceDTOCopyWith<$Res> {
  __$MaintenanceServiceDTOCopyWithImpl(_MaintenanceServiceDTO _value,
      $Res Function(_MaintenanceServiceDTO) _then)
      : super(_value, (v) => _then(v as _MaintenanceServiceDTO));

  @override
  _MaintenanceServiceDTO get _value => super._value as _MaintenanceServiceDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_MaintenanceServiceDTO(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MaintenanceServiceDTO extends _MaintenanceServiceDTO {
  const _$_MaintenanceServiceDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
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

  factory _$_MaintenanceServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_MaintenanceServiceDTOFromJson(json);

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
    return 'MaintenanceServiceDTO(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MaintenanceServiceDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$MaintenanceServiceDTOCopyWith<_MaintenanceServiceDTO> get copyWith =>
      __$MaintenanceServiceDTOCopyWithImpl<_MaintenanceServiceDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MaintenanceServiceDTOToJson(this);
  }
}

abstract class _MaintenanceServiceDTO extends MaintenanceServiceDTO {
  const _MaintenanceServiceDTO._() : super._();
  const factory _MaintenanceServiceDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
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
          String deletedAt}) = _$_MaintenanceServiceDTO;

  factory _MaintenanceServiceDTO.fromJson(Map<String, dynamic> json) =
      _$_MaintenanceServiceDTO.fromJson;

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
  _$MaintenanceServiceDTOCopyWith<_MaintenanceServiceDTO> get copyWith;
}
