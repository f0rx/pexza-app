// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_property_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordPropertyDTO _$LandlordPropertyDTOFromJson(Map<String, dynamic> json) {
  return _LandlordPropertyDTO.fromJson(json);
}

/// @nodoc
class _$LandlordPropertyDTOTearOff {
  const _$LandlordPropertyDTOTearOff();

// ignore: unused_element
  _LandlordPropertyDTO call(
      {@nullable @JsonKey(includeIfNull: false) LandlordPropertyData data}) {
    return _LandlordPropertyDTO(
      data: data,
    );
  }

// ignore: unused_element
  LandlordPropertyDTO fromJson(Map<String, Object> json) {
    return LandlordPropertyDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordPropertyDTO = _$LandlordPropertyDTOTearOff();

/// @nodoc
mixin _$LandlordPropertyDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  LandlordPropertyData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LandlordPropertyDTOCopyWith<LandlordPropertyDTO> get copyWith;
}

/// @nodoc
abstract class $LandlordPropertyDTOCopyWith<$Res> {
  factory $LandlordPropertyDTOCopyWith(
          LandlordPropertyDTO value, $Res Function(LandlordPropertyDTO) then) =
      _$LandlordPropertyDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) LandlordPropertyData data});

  $LandlordPropertyDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LandlordPropertyDTOCopyWithImpl<$Res>
    implements $LandlordPropertyDTOCopyWith<$Res> {
  _$LandlordPropertyDTOCopyWithImpl(this._value, this._then);

  final LandlordPropertyDTO _value;
  // ignore: unused_field
  final $Res Function(LandlordPropertyDTO) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as LandlordPropertyData,
    ));
  }

  @override
  $LandlordPropertyDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $LandlordPropertyDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordPropertyDTOCopyWith<$Res>
    implements $LandlordPropertyDTOCopyWith<$Res> {
  factory _$LandlordPropertyDTOCopyWith(_LandlordPropertyDTO value,
          $Res Function(_LandlordPropertyDTO) then) =
      __$LandlordPropertyDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) LandlordPropertyData data});

  @override
  $LandlordPropertyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$LandlordPropertyDTOCopyWithImpl<$Res>
    extends _$LandlordPropertyDTOCopyWithImpl<$Res>
    implements _$LandlordPropertyDTOCopyWith<$Res> {
  __$LandlordPropertyDTOCopyWithImpl(
      _LandlordPropertyDTO _value, $Res Function(_LandlordPropertyDTO) _then)
      : super(_value, (v) => _then(v as _LandlordPropertyDTO));

  @override
  _LandlordPropertyDTO get _value => super._value as _LandlordPropertyDTO;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LandlordPropertyDTO(
      data: data == freezed ? _value.data : data as LandlordPropertyData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LandlordPropertyDTO extends _LandlordPropertyDTO {
  const _$_LandlordPropertyDTO(
      {@nullable @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_LandlordPropertyDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordPropertyDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final LandlordPropertyData data;

  @override
  String toString() {
    return 'LandlordPropertyDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordPropertyDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LandlordPropertyDTOCopyWith<_LandlordPropertyDTO> get copyWith =>
      __$LandlordPropertyDTOCopyWithImpl<_LandlordPropertyDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordPropertyDTOToJson(this);
  }
}

abstract class _LandlordPropertyDTO extends LandlordPropertyDTO {
  const _LandlordPropertyDTO._() : super._();
  const factory _LandlordPropertyDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          LandlordPropertyData data}) = _$_LandlordPropertyDTO;

  factory _LandlordPropertyDTO.fromJson(Map<String, dynamic> json) =
      _$_LandlordPropertyDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  LandlordPropertyData get data;
  @override
  @JsonKey(ignore: true)
  _$LandlordPropertyDTOCopyWith<_LandlordPropertyDTO> get copyWith;
}
