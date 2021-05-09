// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of maintenance_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MaintenanceDTO _$MaintenanceDTOFromJson(Map<String, dynamic> json) {
  return _MaintenanceDTO.fromJson(json);
}

/// @nodoc
class _$MaintenanceDTOTearOff {
  const _$MaintenanceDTOTearOff();

// ignore: unused_element
  _MaintenanceDTO call(
      {@nullable @JsonKey(includeIfNull: false) MaintenanceDTOData data}) {
    return _MaintenanceDTO(
      data: data,
    );
  }

// ignore: unused_element
  MaintenanceDTO fromJson(Map<String, Object> json) {
    return MaintenanceDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MaintenanceDTO = _$MaintenanceDTOTearOff();

/// @nodoc
mixin _$MaintenanceDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  MaintenanceDTOData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MaintenanceDTOCopyWith<MaintenanceDTO> get copyWith;
}

/// @nodoc
abstract class $MaintenanceDTOCopyWith<$Res> {
  factory $MaintenanceDTOCopyWith(
          MaintenanceDTO value, $Res Function(MaintenanceDTO) then) =
      _$MaintenanceDTOCopyWithImpl<$Res>;
  $Res call({@nullable @JsonKey(includeIfNull: false) MaintenanceDTOData data});

  $MaintenanceDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$MaintenanceDTOCopyWithImpl<$Res>
    implements $MaintenanceDTOCopyWith<$Res> {
  _$MaintenanceDTOCopyWithImpl(this._value, this._then);

  final MaintenanceDTO _value;
  // ignore: unused_field
  final $Res Function(MaintenanceDTO) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as MaintenanceDTOData,
    ));
  }

  @override
  $MaintenanceDTODataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $MaintenanceDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$MaintenanceDTOCopyWith<$Res>
    implements $MaintenanceDTOCopyWith<$Res> {
  factory _$MaintenanceDTOCopyWith(
          _MaintenanceDTO value, $Res Function(_MaintenanceDTO) then) =
      __$MaintenanceDTOCopyWithImpl<$Res>;
  @override
  $Res call({@nullable @JsonKey(includeIfNull: false) MaintenanceDTOData data});

  @override
  $MaintenanceDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$MaintenanceDTOCopyWithImpl<$Res>
    extends _$MaintenanceDTOCopyWithImpl<$Res>
    implements _$MaintenanceDTOCopyWith<$Res> {
  __$MaintenanceDTOCopyWithImpl(
      _MaintenanceDTO _value, $Res Function(_MaintenanceDTO) _then)
      : super(_value, (v) => _then(v as _MaintenanceDTO));

  @override
  _MaintenanceDTO get _value => super._value as _MaintenanceDTO;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_MaintenanceDTO(
      data: data == freezed ? _value.data : data as MaintenanceDTOData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MaintenanceDTO extends _MaintenanceDTO {
  const _$_MaintenanceDTO({@nullable @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_MaintenanceDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_MaintenanceDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final MaintenanceDTOData data;

  @override
  String toString() {
    return 'MaintenanceDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MaintenanceDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$MaintenanceDTOCopyWith<_MaintenanceDTO> get copyWith =>
      __$MaintenanceDTOCopyWithImpl<_MaintenanceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MaintenanceDTOToJson(this);
  }
}

abstract class _MaintenanceDTO extends MaintenanceDTO {
  const _MaintenanceDTO._() : super._();
  const factory _MaintenanceDTO(
          {@nullable @JsonKey(includeIfNull: false) MaintenanceDTOData data}) =
      _$_MaintenanceDTO;

  factory _MaintenanceDTO.fromJson(Map<String, dynamic> json) =
      _$_MaintenanceDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  MaintenanceDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$MaintenanceDTOCopyWith<_MaintenanceDTO> get copyWith;
}
