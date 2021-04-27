// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_apartment_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordApartmentDTO _$LandlordApartmentDTOFromJson(Map<String, dynamic> json) {
  return _LandlordApartmentDTO.fromJson(json);
}

/// @nodoc
class _$LandlordApartmentDTOTearOff {
  const _$LandlordApartmentDTOTearOff();

// ignore: unused_element
  _LandlordApartmentDTO call(
      {@nullable @JsonKey(includeIfNull: false) LandlordApartmentData data}) {
    return _LandlordApartmentDTO(
      data: data,
    );
  }

// ignore: unused_element
  LandlordApartmentDTO fromJson(Map<String, Object> json) {
    return LandlordApartmentDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordApartmentDTO = _$LandlordApartmentDTOTearOff();

/// @nodoc
mixin _$LandlordApartmentDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  LandlordApartmentData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LandlordApartmentDTOCopyWith<LandlordApartmentDTO> get copyWith;
}

/// @nodoc
abstract class $LandlordApartmentDTOCopyWith<$Res> {
  factory $LandlordApartmentDTOCopyWith(LandlordApartmentDTO value,
          $Res Function(LandlordApartmentDTO) then) =
      _$LandlordApartmentDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) LandlordApartmentData data});

  $LandlordApartmentDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LandlordApartmentDTOCopyWithImpl<$Res>
    implements $LandlordApartmentDTOCopyWith<$Res> {
  _$LandlordApartmentDTOCopyWithImpl(this._value, this._then);

  final LandlordApartmentDTO _value;
  // ignore: unused_field
  final $Res Function(LandlordApartmentDTO) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as LandlordApartmentData,
    ));
  }

  @override
  $LandlordApartmentDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $LandlordApartmentDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordApartmentDTOCopyWith<$Res>
    implements $LandlordApartmentDTOCopyWith<$Res> {
  factory _$LandlordApartmentDTOCopyWith(_LandlordApartmentDTO value,
          $Res Function(_LandlordApartmentDTO) then) =
      __$LandlordApartmentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) LandlordApartmentData data});

  @override
  $LandlordApartmentDataCopyWith<$Res> get data;
}

/// @nodoc
class __$LandlordApartmentDTOCopyWithImpl<$Res>
    extends _$LandlordApartmentDTOCopyWithImpl<$Res>
    implements _$LandlordApartmentDTOCopyWith<$Res> {
  __$LandlordApartmentDTOCopyWithImpl(
      _LandlordApartmentDTO _value, $Res Function(_LandlordApartmentDTO) _then)
      : super(_value, (v) => _then(v as _LandlordApartmentDTO));

  @override
  _LandlordApartmentDTO get _value => super._value as _LandlordApartmentDTO;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LandlordApartmentDTO(
      data: data == freezed ? _value.data : data as LandlordApartmentData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LandlordApartmentDTO extends _LandlordApartmentDTO {
  const _$_LandlordApartmentDTO(
      {@nullable @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_LandlordApartmentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordApartmentDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final LandlordApartmentData data;

  @override
  String toString() {
    return 'LandlordApartmentDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordApartmentDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LandlordApartmentDTOCopyWith<_LandlordApartmentDTO> get copyWith =>
      __$LandlordApartmentDTOCopyWithImpl<_LandlordApartmentDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordApartmentDTOToJson(this);
  }
}

abstract class _LandlordApartmentDTO extends LandlordApartmentDTO {
  const _LandlordApartmentDTO._() : super._();
  const factory _LandlordApartmentDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          LandlordApartmentData data}) = _$_LandlordApartmentDTO;

  factory _LandlordApartmentDTO.fromJson(Map<String, dynamic> json) =
      _$_LandlordApartmentDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  LandlordApartmentData get data;
  @override
  @JsonKey(ignore: true)
  _$LandlordApartmentDTOCopyWith<_LandlordApartmentDTO> get copyWith;
}
