// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of property_rent_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PropertyRentHistoryDTO _$PropertyRentHistoryDTOFromJson(
    Map<String, dynamic> json) {
  return _PropertyRentHistoryDTO.fromJson(json);
}

/// @nodoc
class _$PropertyRentHistoryDTOTearOff {
  const _$PropertyRentHistoryDTOTearOff();

// ignore: unused_element
  _PropertyRentHistoryDTO call(
      {@nullable
      @JsonKey(includeIfNull: false)
          PropertyRentHistoryDTOData data}) {
    return _PropertyRentHistoryDTO(
      data: data,
    );
  }

// ignore: unused_element
  PropertyRentHistoryDTO fromJson(Map<String, Object> json) {
    return PropertyRentHistoryDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyRentHistoryDTO = _$PropertyRentHistoryDTOTearOff();

/// @nodoc
mixin _$PropertyRentHistoryDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  PropertyRentHistoryDTOData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PropertyRentHistoryDTOCopyWith<PropertyRentHistoryDTO> get copyWith;
}

/// @nodoc
abstract class $PropertyRentHistoryDTOCopyWith<$Res> {
  factory $PropertyRentHistoryDTOCopyWith(PropertyRentHistoryDTO value,
          $Res Function(PropertyRentHistoryDTO) then) =
      _$PropertyRentHistoryDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          PropertyRentHistoryDTOData data});

  $PropertyRentHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$PropertyRentHistoryDTOCopyWithImpl<$Res>
    implements $PropertyRentHistoryDTOCopyWith<$Res> {
  _$PropertyRentHistoryDTOCopyWithImpl(this._value, this._then);

  final PropertyRentHistoryDTO _value;
  // ignore: unused_field
  final $Res Function(PropertyRentHistoryDTO) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as PropertyRentHistoryDTOData,
    ));
  }

  @override
  $PropertyRentHistoryDTODataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $PropertyRentHistoryDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PropertyRentHistoryDTOCopyWith<$Res>
    implements $PropertyRentHistoryDTOCopyWith<$Res> {
  factory _$PropertyRentHistoryDTOCopyWith(_PropertyRentHistoryDTO value,
          $Res Function(_PropertyRentHistoryDTO) then) =
      __$PropertyRentHistoryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          PropertyRentHistoryDTOData data});

  @override
  $PropertyRentHistoryDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$PropertyRentHistoryDTOCopyWithImpl<$Res>
    extends _$PropertyRentHistoryDTOCopyWithImpl<$Res>
    implements _$PropertyRentHistoryDTOCopyWith<$Res> {
  __$PropertyRentHistoryDTOCopyWithImpl(_PropertyRentHistoryDTO _value,
      $Res Function(_PropertyRentHistoryDTO) _then)
      : super(_value, (v) => _then(v as _PropertyRentHistoryDTO));

  @override
  _PropertyRentHistoryDTO get _value => super._value as _PropertyRentHistoryDTO;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_PropertyRentHistoryDTO(
      data: data == freezed ? _value.data : data as PropertyRentHistoryDTOData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PropertyRentHistoryDTO extends _PropertyRentHistoryDTO {
  const _$_PropertyRentHistoryDTO(
      {@nullable @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_PropertyRentHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyRentHistoryDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final PropertyRentHistoryDTOData data;

  @override
  String toString() {
    return 'PropertyRentHistoryDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyRentHistoryDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$PropertyRentHistoryDTOCopyWith<_PropertyRentHistoryDTO> get copyWith =>
      __$PropertyRentHistoryDTOCopyWithImpl<_PropertyRentHistoryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyRentHistoryDTOToJson(this);
  }
}

abstract class _PropertyRentHistoryDTO extends PropertyRentHistoryDTO {
  const _PropertyRentHistoryDTO._() : super._();
  const factory _PropertyRentHistoryDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          PropertyRentHistoryDTOData data}) = _$_PropertyRentHistoryDTO;

  factory _PropertyRentHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertyRentHistoryDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  PropertyRentHistoryDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$PropertyRentHistoryDTOCopyWith<_PropertyRentHistoryDTO> get copyWith;
}
