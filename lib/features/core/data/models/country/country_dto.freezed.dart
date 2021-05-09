// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of country_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CountryDTO _$CountryDTOFromJson(Map<String, dynamic> json) {
  return _CountryDTO.fromJson(json);
}

/// @nodoc
class _$CountryDTOTearOff {
  const _$CountryDTOTearOff();

// ignore: unused_element
  _CountryDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String currencyName,
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
    return _CountryDTO(
      id: id,
      name: name,
      phoneCode: phoneCode,
      isSupported: isSupported,
      currencyType: currencyType,
      currencyName: currencyName,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  CountryDTO fromJson(Map<String, Object> json) {
    return CountryDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountryDTO = _$CountryDTOTearOff();

/// @nodoc
mixin _$CountryDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get name;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  String get phoneCode;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
  String get currencyType;
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  String get currencyName;
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
  $CountryDTOCopyWith<CountryDTO> get copyWith;
}

/// @nodoc
abstract class $CountryDTOCopyWith<$Res> {
  factory $CountryDTOCopyWith(
          CountryDTO value, $Res Function(CountryDTO) then) =
      _$CountryDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String currencyName,
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
class _$CountryDTOCopyWithImpl<$Res> implements $CountryDTOCopyWith<$Res> {
  _$CountryDTOCopyWithImpl(this._value, this._then);

  final CountryDTO _value;
  // ignore: unused_field
  final $Res Function(CountryDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object phoneCode = freezed,
    Object isSupported = freezed,
    Object currencyType = freezed,
    Object currencyName = freezed,
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
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType as String,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

/// @nodoc
abstract class _$CountryDTOCopyWith<$Res> implements $CountryDTOCopyWith<$Res> {
  factory _$CountryDTOCopyWith(
          _CountryDTO value, $Res Function(_CountryDTO) then) =
      __$CountryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String currencyName,
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
class __$CountryDTOCopyWithImpl<$Res> extends _$CountryDTOCopyWithImpl<$Res>
    implements _$CountryDTOCopyWith<$Res> {
  __$CountryDTOCopyWithImpl(
      _CountryDTO _value, $Res Function(_CountryDTO) _then)
      : super(_value, (v) => _then(v as _CountryDTO));

  @override
  _CountryDTO get _value => super._value as _CountryDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object phoneCode = freezed,
    Object isSupported = freezed,
    Object currencyType = freezed,
    Object currencyName = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_CountryDTO(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      phoneCode: phoneCode == freezed ? _value.phoneCode : phoneCode as String,
      isSupported:
          isSupported == freezed ? _value.isSupported : isSupported as bool,
      currencyType: currencyType == freezed
          ? _value.currencyType
          : currencyType as String,
      currencyName: currencyName == freezed
          ? _value.currencyName
          : currencyName as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountryDTO extends _CountryDTO {
  const _$_CountryDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          this.phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          this.isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          this.currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          this.currencyName,
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

  factory _$_CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryDTOFromJson(json);

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
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  final String phoneCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  @IntToBoolSerializer()
  final bool isSupported;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
  final String currencyType;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  final String currencyName;
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
    return 'CountryDTO(id: $id, name: $name, phoneCode: $phoneCode, isSupported: $isSupported, currencyType: $currencyType, currencyName: $currencyName, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryDTO &&
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
            (identical(other.currencyType, currencyType) ||
                const DeepCollectionEquality()
                    .equals(other.currencyType, currencyType)) &&
            (identical(other.currencyName, currencyName) ||
                const DeepCollectionEquality()
                    .equals(other.currencyName, currencyName)) &&
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
      const DeepCollectionEquality().hash(currencyType) ^
      const DeepCollectionEquality().hash(currencyName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountryDTOCopyWith<_CountryDTO> get copyWith =>
      __$CountryDTOCopyWithImpl<_CountryDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryDTOToJson(this);
  }
}

abstract class _CountryDTO extends CountryDTO {
  const _CountryDTO._() : super._();
  const factory _CountryDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String name,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
          String phoneCode,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
      @IntToBoolSerializer()
          bool isSupported,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
          String currencyType,
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
          String currencyName,
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
          String deletedAt}) = _$_CountryDTO;

  factory _CountryDTO.fromJson(Map<String, dynamic> json) =
      _$_CountryDTO.fromJson;

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
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
  String get phoneCode;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
  @IntToBoolSerializer()
  bool get isSupported;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
  String get currencyType;
  @override
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
  String get currencyName;
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
  _$CountryDTOCopyWith<_CountryDTO> get copyWith;
}
