// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of apartment_merger_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ApartmentMergerDTO _$ApartmentMergerDTOFromJson(Map<String, dynamic> json) {
  return _ApartmentMergerDTO.fromJson(json);
}

/// @nodoc
class _$ApartmentMergerDTOTearOff {
  const _$ApartmentMergerDTOTearOff();

// ignore: unused_element
  _ApartmentMergerDTO call(
      {@nullable @JsonKey(includeIfNull: false) ApartmentMergerData data}) {
    return _ApartmentMergerDTO(
      data: data,
    );
  }

// ignore: unused_element
  ApartmentMergerDTO fromJson(Map<String, Object> json) {
    return ApartmentMergerDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ApartmentMergerDTO = _$ApartmentMergerDTOTearOff();

/// @nodoc
mixin _$ApartmentMergerDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  ApartmentMergerData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ApartmentMergerDTOCopyWith<ApartmentMergerDTO> get copyWith;
}

/// @nodoc
abstract class $ApartmentMergerDTOCopyWith<$Res> {
  factory $ApartmentMergerDTOCopyWith(
          ApartmentMergerDTO value, $Res Function(ApartmentMergerDTO) then) =
      _$ApartmentMergerDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) ApartmentMergerData data});

  $ApartmentMergerDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ApartmentMergerDTOCopyWithImpl<$Res>
    implements $ApartmentMergerDTOCopyWith<$Res> {
  _$ApartmentMergerDTOCopyWithImpl(this._value, this._then);

  final ApartmentMergerDTO _value;
  // ignore: unused_field
  final $Res Function(ApartmentMergerDTO) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as ApartmentMergerData,
    ));
  }

  @override
  $ApartmentMergerDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ApartmentMergerDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ApartmentMergerDTOCopyWith<$Res>
    implements $ApartmentMergerDTOCopyWith<$Res> {
  factory _$ApartmentMergerDTOCopyWith(
          _ApartmentMergerDTO value, $Res Function(_ApartmentMergerDTO) then) =
      __$ApartmentMergerDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) ApartmentMergerData data});

  @override
  $ApartmentMergerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$ApartmentMergerDTOCopyWithImpl<$Res>
    extends _$ApartmentMergerDTOCopyWithImpl<$Res>
    implements _$ApartmentMergerDTOCopyWith<$Res> {
  __$ApartmentMergerDTOCopyWithImpl(
      _ApartmentMergerDTO _value, $Res Function(_ApartmentMergerDTO) _then)
      : super(_value, (v) => _then(v as _ApartmentMergerDTO));

  @override
  _ApartmentMergerDTO get _value => super._value as _ApartmentMergerDTO;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_ApartmentMergerDTO(
      data: data == freezed ? _value.data : data as ApartmentMergerData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ApartmentMergerDTO extends _ApartmentMergerDTO {
  const _$_ApartmentMergerDTO(
      {@nullable @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_ApartmentMergerDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ApartmentMergerDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final ApartmentMergerData data;

  @override
  String toString() {
    return 'ApartmentMergerDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApartmentMergerDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ApartmentMergerDTOCopyWith<_ApartmentMergerDTO> get copyWith =>
      __$ApartmentMergerDTOCopyWithImpl<_ApartmentMergerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApartmentMergerDTOToJson(this);
  }
}

abstract class _ApartmentMergerDTO extends ApartmentMergerDTO {
  const _ApartmentMergerDTO._() : super._();
  const factory _ApartmentMergerDTO(
          {@nullable @JsonKey(includeIfNull: false) ApartmentMergerData data}) =
      _$_ApartmentMergerDTO;

  factory _ApartmentMergerDTO.fromJson(Map<String, dynamic> json) =
      _$_ApartmentMergerDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  ApartmentMergerData get data;
  @override
  @JsonKey(ignore: true)
  _$ApartmentMergerDTOCopyWith<_ApartmentMergerDTO> get copyWith;
}
