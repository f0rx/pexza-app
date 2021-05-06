// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of state_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StateDTO _$StateDTOFromJson(Map<String, dynamic> json) {
  return _StateDTO.fromJson(json);
}

/// @nodoc
class _$StateDTOTearOff {
  const _$StateDTOTearOff();

// ignore: unused_element
  _StateDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          CountryDTO country,
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
    return _StateDTO(
      id: id,
      name: name,
      phoneCode: phoneCode,
      isSupported: isSupported,
      country: country,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  StateDTO fromJson(Map<String, Object> json) {
    return StateDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StateDTO = _$StateDTOTearOff();

/// @nodoc
mixin _$StateDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
  String get phoneCode;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  bool get isSupported;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  CountryDTO get country;
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
  $StateDTOCopyWith<StateDTO> get copyWith;
}

/// @nodoc
abstract class $StateDTOCopyWith<$Res> {
  factory $StateDTOCopyWith(StateDTO value, $Res Function(StateDTO) then) =
      _$StateDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          CountryDTO country,
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

  $CountryDTOCopyWith<$Res> get country;
}

/// @nodoc
class _$StateDTOCopyWithImpl<$Res> implements $StateDTOCopyWith<$Res> {
  _$StateDTOCopyWithImpl(this._value, this._then);

  final StateDTO _value;
  // ignore: unused_field
  final $Res Function(StateDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object phoneCode = freezed,
    Object isSupported = freezed,
    Object country = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      phoneCode: phoneCode == freezed ? _value.phoneCode : phoneCode as String,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      country: country == freezed ? _value.country : country as CountryDTO,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $CountryDTOCopyWith<$Res> get country {
    if (_value.country == null) {
      return null;
    }
    return $CountryDTOCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc
abstract class _$StateDTOCopyWith<$Res> implements $StateDTOCopyWith<$Res> {
  factory _$StateDTOCopyWith(_StateDTO value, $Res Function(_StateDTO) then) =
      __$StateDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          CountryDTO country,
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
  $CountryDTOCopyWith<$Res> get country;
}

/// @nodoc
class __$StateDTOCopyWithImpl<$Res> extends _$StateDTOCopyWithImpl<$Res>
    implements _$StateDTOCopyWith<$Res> {
  __$StateDTOCopyWithImpl(_StateDTO _value, $Res Function(_StateDTO) _then)
      : super(_value, (v) => _then(v as _StateDTO));

  @override
  _StateDTO get _value => super._value as _StateDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object phoneCode = freezed,
    Object isSupported = freezed,
    Object country = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_StateDTO(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      phoneCode: phoneCode == freezed ? _value.phoneCode : phoneCode as String,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      country: country == freezed ? _value.country : country as CountryDTO,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StateDTO extends _StateDTO {
  const _$_StateDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
          this.phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
          this.isSupported,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.country,
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

  factory _$_StateDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StateDTOFromJson(json);

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
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
  final String phoneCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  final bool isSupported;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final CountryDTO country;
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
    return 'StateDTO(id: $id, name: $name, phoneCode: $phoneCode, isSupported: $isSupported, country: $country, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneCode, phoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.phoneCode, phoneCode)) &&
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
      const DeepCollectionEquality().hash(phoneCode) ^
      const DeepCollectionEquality().hash(isSupported) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$StateDTOCopyWith<_StateDTO> get copyWith =>
      __$StateDTOCopyWithImpl<_StateDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StateDTOToJson(this);
  }
}

abstract class _StateDTO extends StateDTO {
  const _StateDTO._() : super._();
  const factory _StateDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
          bool isSupported,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          CountryDTO country,
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
          String deletedAt}) = _$_StateDTO;

  factory _StateDTO.fromJson(Map<String, dynamic> json) = _$_StateDTO.fromJson;

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
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_id')
  String get phoneCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  bool get isSupported;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  CountryDTO get country;
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
  _$StateDTOCopyWith<_StateDTO> get copyWith;
}
