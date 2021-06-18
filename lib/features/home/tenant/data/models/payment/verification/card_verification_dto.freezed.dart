// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of card_verification_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CardVerificationDTO _$CardVerificationDTOFromJson(Map<String, dynamic> json) {
  return _CardVerificationDTO.fromJson(json);
}

/// @nodoc
class _$CardVerificationDTOTearOff {
  const _$CardVerificationDTOTearOff();

// ignore: unused_element
  _CardVerificationDTO call(
      {@nullable
      @JsonKey(includeIfNull: false)
          CardVerificationDetailsDTO details}) {
    return _CardVerificationDTO(
      details: details,
    );
  }

// ignore: unused_element
  CardVerificationDTO fromJson(Map<String, Object> json) {
    return CardVerificationDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CardVerificationDTO = _$CardVerificationDTOTearOff();

/// @nodoc
mixin _$CardVerificationDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  CardVerificationDetailsDTO get details;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CardVerificationDTOCopyWith<CardVerificationDTO> get copyWith;
}

/// @nodoc
abstract class $CardVerificationDTOCopyWith<$Res> {
  factory $CardVerificationDTOCopyWith(
          CardVerificationDTO value, $Res Function(CardVerificationDTO) then) =
      _$CardVerificationDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          CardVerificationDetailsDTO details});

  $CardVerificationDetailsDTOCopyWith<$Res> get details;
}

/// @nodoc
class _$CardVerificationDTOCopyWithImpl<$Res>
    implements $CardVerificationDTOCopyWith<$Res> {
  _$CardVerificationDTOCopyWithImpl(this._value, this._then);

  final CardVerificationDTO _value;
  // ignore: unused_field
  final $Res Function(CardVerificationDTO) _then;

  @override
  $Res call({
    Object details = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details as CardVerificationDetailsDTO,
    ));
  }

  @override
  $CardVerificationDetailsDTOCopyWith<$Res> get details {
    if (_value.details == null) {
      return null;
    }
    return $CardVerificationDetailsDTOCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$CardVerificationDTOCopyWith<$Res>
    implements $CardVerificationDTOCopyWith<$Res> {
  factory _$CardVerificationDTOCopyWith(_CardVerificationDTO value,
          $Res Function(_CardVerificationDTO) then) =
      __$CardVerificationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          CardVerificationDetailsDTO details});

  @override
  $CardVerificationDetailsDTOCopyWith<$Res> get details;
}

/// @nodoc
class __$CardVerificationDTOCopyWithImpl<$Res>
    extends _$CardVerificationDTOCopyWithImpl<$Res>
    implements _$CardVerificationDTOCopyWith<$Res> {
  __$CardVerificationDTOCopyWithImpl(
      _CardVerificationDTO _value, $Res Function(_CardVerificationDTO) _then)
      : super(_value, (v) => _then(v as _CardVerificationDTO));

  @override
  _CardVerificationDTO get _value => super._value as _CardVerificationDTO;

  @override
  $Res call({
    Object details = freezed,
  }) {
    return _then(_CardVerificationDTO(
      details: details == freezed
          ? _value.details
          : details as CardVerificationDetailsDTO,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CardVerificationDTO extends _CardVerificationDTO {
  const _$_CardVerificationDTO(
      {@nullable @JsonKey(includeIfNull: false) this.details})
      : super._();

  factory _$_CardVerificationDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CardVerificationDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final CardVerificationDetailsDTO details;

  @override
  String toString() {
    return 'CardVerificationDTO(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardVerificationDTO &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$CardVerificationDTOCopyWith<_CardVerificationDTO> get copyWith =>
      __$CardVerificationDTOCopyWithImpl<_CardVerificationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardVerificationDTOToJson(this);
  }
}

abstract class _CardVerificationDTO extends CardVerificationDTO {
  const _CardVerificationDTO._() : super._();
  const factory _CardVerificationDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          CardVerificationDetailsDTO details}) = _$_CardVerificationDTO;

  factory _CardVerificationDTO.fromJson(Map<String, dynamic> json) =
      _$_CardVerificationDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  CardVerificationDetailsDTO get details;
  @override
  @JsonKey(ignore: true)
  _$CardVerificationDTOCopyWith<_CardVerificationDTO> get copyWith;
}
