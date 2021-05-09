// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of assignment_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AssignmentDTO _$AssignmentDTOFromJson(Map<String, dynamic> json) {
  return _AssignmentDTO.fromJson(json);
}

/// @nodoc
class _$AssignmentDTOTearOff {
  const _$AssignmentDTOTearOff();

// ignore: unused_element
  _AssignmentDTO call(
      {@nullable @JsonKey(includeIfNull: false) AssignmentDTOData data}) {
    return _AssignmentDTO(
      data: data,
    );
  }

// ignore: unused_element
  AssignmentDTO fromJson(Map<String, Object> json) {
    return AssignmentDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AssignmentDTO = _$AssignmentDTOTearOff();

/// @nodoc
mixin _$AssignmentDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  AssignmentDTOData get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AssignmentDTOCopyWith<AssignmentDTO> get copyWith;
}

/// @nodoc
abstract class $AssignmentDTOCopyWith<$Res> {
  factory $AssignmentDTOCopyWith(
          AssignmentDTO value, $Res Function(AssignmentDTO) then) =
      _$AssignmentDTOCopyWithImpl<$Res>;
  $Res call({@nullable @JsonKey(includeIfNull: false) AssignmentDTOData data});

  $AssignmentDTODataCopyWith<$Res> get data;
}

/// @nodoc
class _$AssignmentDTOCopyWithImpl<$Res>
    implements $AssignmentDTOCopyWith<$Res> {
  _$AssignmentDTOCopyWithImpl(this._value, this._then);

  final AssignmentDTO _value;
  // ignore: unused_field
  final $Res Function(AssignmentDTO) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as AssignmentDTOData,
    ));
  }

  @override
  $AssignmentDTODataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $AssignmentDTODataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$AssignmentDTOCopyWith<$Res>
    implements $AssignmentDTOCopyWith<$Res> {
  factory _$AssignmentDTOCopyWith(
          _AssignmentDTO value, $Res Function(_AssignmentDTO) then) =
      __$AssignmentDTOCopyWithImpl<$Res>;
  @override
  $Res call({@nullable @JsonKey(includeIfNull: false) AssignmentDTOData data});

  @override
  $AssignmentDTODataCopyWith<$Res> get data;
}

/// @nodoc
class __$AssignmentDTOCopyWithImpl<$Res>
    extends _$AssignmentDTOCopyWithImpl<$Res>
    implements _$AssignmentDTOCopyWith<$Res> {
  __$AssignmentDTOCopyWithImpl(
      _AssignmentDTO _value, $Res Function(_AssignmentDTO) _then)
      : super(_value, (v) => _then(v as _AssignmentDTO));

  @override
  _AssignmentDTO get _value => super._value as _AssignmentDTO;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_AssignmentDTO(
      data: data == freezed ? _value.data : data as AssignmentDTOData,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AssignmentDTO extends _AssignmentDTO {
  const _$_AssignmentDTO({@nullable @JsonKey(includeIfNull: false) this.data})
      : super._();

  factory _$_AssignmentDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AssignmentDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final AssignmentDTOData data;

  @override
  String toString() {
    return 'AssignmentDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssignmentDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$AssignmentDTOCopyWith<_AssignmentDTO> get copyWith =>
      __$AssignmentDTOCopyWithImpl<_AssignmentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssignmentDTOToJson(this);
  }
}

abstract class _AssignmentDTO extends AssignmentDTO {
  const _AssignmentDTO._() : super._();
  const factory _AssignmentDTO(
          {@nullable @JsonKey(includeIfNull: false) AssignmentDTOData data}) =
      _$_AssignmentDTO;

  factory _AssignmentDTO.fromJson(Map<String, dynamic> json) =
      _$_AssignmentDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  AssignmentDTOData get data;
  @override
  @JsonKey(ignore: true)
  _$AssignmentDTOCopyWith<_AssignmentDTO> get copyWith;
}
