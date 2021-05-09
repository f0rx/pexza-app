// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of tenant_apartment_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TenantApartmentDTO _$TenantApartmentDTOFromJson(Map<String, dynamic> json) {
  return _TenantApartmentDTO.fromJson(json);
}

/// @nodoc
class _$TenantApartmentDTOTearOff {
  const _$TenantApartmentDTOTearOff();

// ignore: unused_element
  _TenantApartmentDTO call(
      {@nullable @JsonKey(includeIfNull: false) TenantApartmentData data}) {
    return _TenantApartmentDTO(
      data: data,
    );
  }

// ignore: unused_element
  TenantApartmentDTO fromJson(Map<String, Object> json) {
    return TenantApartmentDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TenantApartmentDTO = _$TenantApartmentDTOTearOff();

/// @nodoc
mixin _$TenantApartmentDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  TenantApartmentData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TenantApartmentDTOCopyWith<TenantApartmentDTO> get copyWith;
}

/// @nodoc
abstract class $TenantApartmentDTOCopyWith<$Res> {
  factory $TenantApartmentDTOCopyWith(
          TenantApartmentDTO value, $Res Function(TenantApartmentDTO) then) =
      _$TenantApartmentDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) TenantApartmentData data});

  $TenantApartmentDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TenantApartmentDTOCopyWithImpl<$Res>
    implements $TenantApartmentDTOCopyWith<$Res> {
  _$TenantApartmentDTOCopyWithImpl(this._value, this._then);

  final TenantApartmentDTO _value;
  // ignore: unused_field
  final $Res Function(TenantApartmentDTO) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as TenantApartmentData,
    ));
  }

  @override
  $TenantApartmentDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $TenantApartmentDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$TenantApartmentDTOCopyWith<$Res>
    implements $TenantApartmentDTOCopyWith<$Res> {
  factory _$TenantApartmentDTOCopyWith(
          _TenantApartmentDTO value, $Res Function(_TenantApartmentDTO) then) =
      __$TenantApartmentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) TenantApartmentData data});

  @override
  $TenantApartmentDataCopyWith<$Res> get data;
}

/// @nodoc
class __$TenantApartmentDTOCopyWithImpl<$Res>
    extends _$TenantApartmentDTOCopyWithImpl<$Res>
    implements _$TenantApartmentDTOCopyWith<$Res> {
  __$TenantApartmentDTOCopyWithImpl(
      _TenantApartmentDTO _value, $Res Function(_TenantApartmentDTO) _then)
      : super(_value, (v) => _then(v as _TenantApartmentDTO));

  @override
  _TenantApartmentDTO get _value => super._value as _TenantApartmentDTO;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_TenantApartmentDTO(
      data: data == freezed ? _value.data : data as TenantApartmentData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TenantApartmentDTO extends _TenantApartmentDTO {
  const _$_TenantApartmentDTO(
      {@nullable @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_TenantApartmentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TenantApartmentDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final TenantApartmentData data;

  @override
  String toString() {
    return 'TenantApartmentDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantApartmentDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$TenantApartmentDTOCopyWith<_TenantApartmentDTO> get copyWith =>
      __$TenantApartmentDTOCopyWithImpl<_TenantApartmentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TenantApartmentDTOToJson(this);
  }
}

abstract class _TenantApartmentDTO extends TenantApartmentDTO {
  const _TenantApartmentDTO._() : super._();
  const factory _TenantApartmentDTO(
          {@nullable @JsonKey(includeIfNull: false) TenantApartmentData data}) =
      _$_TenantApartmentDTO;

  factory _TenantApartmentDTO.fromJson(Map<String, dynamic> json) =
      _$_TenantApartmentDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  TenantApartmentData get data;
  @override
  @JsonKey(ignore: true)
  _$TenantApartmentDTOCopyWith<_TenantApartmentDTO> get copyWith;
}
