// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of countries_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CountriesDTO _$CountriesDTOFromJson(Map<String, dynamic> json) {
  return _CountriesDTO.fromJson(json);
}

/// @nodoc
class _$CountriesDTOTearOff {
  const _$CountriesDTOTearOff();

// ignore: unused_element
  _CountriesDTO call(
      @nullable
      @JsonKey(includeIfNull: false)
          List<CountriesList> data,
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
          String deletedAt) {
    return _CountriesDTO(
      data,
      createdAt,
      updatedAt,
      deletedAt,
    );
  }

// ignore: unused_element
  CountriesDTO fromJson(Map<String, Object> json) {
    return CountriesDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CountriesDTO = _$CountriesDTOTearOff();

/// @nodoc
mixin _$CountriesDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  List<CountriesList> get data;
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
  $CountriesDTOCopyWith<CountriesDTO> get copyWith;
}

/// @nodoc
abstract class $CountriesDTOCopyWith<$Res> {
  factory $CountriesDTOCopyWith(
          CountriesDTO value, $Res Function(CountriesDTO) then) =
      _$CountriesDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          List<CountriesList> data,
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
class _$CountriesDTOCopyWithImpl<$Res> implements $CountriesDTOCopyWith<$Res> {
  _$CountriesDTOCopyWithImpl(this._value, this._then);

  final CountriesDTO _value;
  // ignore: unused_field
  final $Res Function(CountriesDTO) _then;

  @override
  $Res call({
    Object data = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<CountriesList>,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

/// @nodoc
abstract class _$CountriesDTOCopyWith<$Res>
    implements $CountriesDTOCopyWith<$Res> {
  factory _$CountriesDTOCopyWith(
          _CountriesDTO value, $Res Function(_CountriesDTO) then) =
      __$CountriesDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          List<CountriesList> data,
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
class __$CountriesDTOCopyWithImpl<$Res> extends _$CountriesDTOCopyWithImpl<$Res>
    implements _$CountriesDTOCopyWith<$Res> {
  __$CountriesDTOCopyWithImpl(
      _CountriesDTO _value, $Res Function(_CountriesDTO) _then)
      : super(_value, (v) => _then(v as _CountriesDTO));

  @override
  _CountriesDTO get _value => super._value as _CountriesDTO;

  @override
  $Res call({
    Object data = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_CountriesDTO(
      data == freezed ? _value.data : data as List<CountriesList>,
      createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CountriesDTO extends _CountriesDTO {
  const _$_CountriesDTO(
      @nullable
      @JsonKey(includeIfNull: false)
          this.data,
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
          this.deletedAt)
      : super._();

  factory _$_CountriesDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CountriesDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final List<CountriesList> data;
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
    return 'CountriesDTO(data: $data, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountriesDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
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
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$CountriesDTOCopyWith<_CountriesDTO> get copyWith =>
      __$CountriesDTOCopyWithImpl<_CountriesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountriesDTOToJson(this);
  }
}

abstract class _CountriesDTO extends CountriesDTO {
  const _CountriesDTO._() : super._();
  const factory _CountriesDTO(
      @nullable
      @JsonKey(includeIfNull: false)
          List<CountriesList> data,
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
          String deletedAt) = _$_CountriesDTO;

  factory _CountriesDTO.fromJson(Map<String, dynamic> json) =
      _$_CountriesDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  List<CountriesList> get data;
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
  _$CountriesDTOCopyWith<_CountriesDTO> get copyWith;
}
