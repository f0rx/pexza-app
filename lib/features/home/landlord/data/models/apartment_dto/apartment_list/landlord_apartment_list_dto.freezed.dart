// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_apartment_list_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordApartmentListDTO _$LandlordApartmentListDTOFromJson(
    Map<String, dynamic> json) {
  return Landlord_ApartmentListDTO.fromJson(json);
}

/// @nodoc
class _$LandlordApartmentListDTOTearOff {
  const _$LandlordApartmentListDTOTearOff();

// ignore: unused_element
  Landlord_ApartmentListDTO call(
      {@JsonKey(includeIfNull: false)
          List<LandlordApartmentData> data = const <LandlordApartmentData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) {
    return Landlord_ApartmentListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  LandlordApartmentListDTO fromJson(Map<String, Object> json) {
    return LandlordApartmentListDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordApartmentListDTO = _$LandlordApartmentListDTOTearOff();

/// @nodoc
mixin _$LandlordApartmentListDTO {
  @JsonKey(includeIfNull: false)
  List<LandlordApartmentData> get data;
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LandlordApartmentListDTOCopyWith<LandlordApartmentListDTO> get copyWith;
}

/// @nodoc
abstract class $LandlordApartmentListDTOCopyWith<$Res> {
  factory $LandlordApartmentListDTOCopyWith(LandlordApartmentListDTO value,
          $Res Function(LandlordApartmentListDTO) then) =
      _$LandlordApartmentListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<LandlordApartmentData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$LandlordApartmentListDTOCopyWithImpl<$Res>
    implements $LandlordApartmentListDTOCopyWith<$Res> {
  _$LandlordApartmentListDTOCopyWithImpl(this._value, this._then);

  final LandlordApartmentListDTO _value;
  // ignore: unused_field
  final $Res Function(LandlordApartmentListDTO) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<LandlordApartmentData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }

  @override
  $PaginationLinksCopyWith<$Res> get links {
    if (_value.links == null) {
      return null;
    }
    return $PaginationLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }

  @override
  $MetaFieldCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $MetaFieldCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class $Landlord_ApartmentListDTOCopyWith<$Res>
    implements $LandlordApartmentListDTOCopyWith<$Res> {
  factory $Landlord_ApartmentListDTOCopyWith(Landlord_ApartmentListDTO value,
          $Res Function(Landlord_ApartmentListDTO) then) =
      _$Landlord_ApartmentListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<LandlordApartmentData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$Landlord_ApartmentListDTOCopyWithImpl<$Res>
    extends _$LandlordApartmentListDTOCopyWithImpl<$Res>
    implements $Landlord_ApartmentListDTOCopyWith<$Res> {
  _$Landlord_ApartmentListDTOCopyWithImpl(Landlord_ApartmentListDTO _value,
      $Res Function(Landlord_ApartmentListDTO) _then)
      : super(_value, (v) => _then(v as Landlord_ApartmentListDTO));

  @override
  Landlord_ApartmentListDTO get _value =>
      super._value as Landlord_ApartmentListDTO;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(Landlord_ApartmentListDTO(
      data: data == freezed ? _value.data : data as List<LandlordApartmentData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Landlord_ApartmentListDTO extends Landlord_ApartmentListDTO {
  const _$Landlord_ApartmentListDTO(
      {@JsonKey(includeIfNull: false)
          this.data = const <LandlordApartmentData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          this.links,
      @nullable
      @JsonKey(includeIfNull: false)
          this.meta})
      : assert(data != null),
        super._();

  factory _$Landlord_ApartmentListDTO.fromJson(Map<String, dynamic> json) =>
      _$_$Landlord_ApartmentListDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<LandlordApartmentData> data;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final PaginationLinks links;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final MetaField meta;

  @override
  String toString() {
    return 'LandlordApartmentListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Landlord_ApartmentListDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  $Landlord_ApartmentListDTOCopyWith<Landlord_ApartmentListDTO> get copyWith =>
      _$Landlord_ApartmentListDTOCopyWithImpl<Landlord_ApartmentListDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$Landlord_ApartmentListDTOToJson(this);
  }
}

abstract class Landlord_ApartmentListDTO extends LandlordApartmentListDTO {
  const Landlord_ApartmentListDTO._() : super._();
  const factory Landlord_ApartmentListDTO(
          {@JsonKey(includeIfNull: false) List<LandlordApartmentData> data,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$Landlord_ApartmentListDTO;

  factory Landlord_ApartmentListDTO.fromJson(Map<String, dynamic> json) =
      _$Landlord_ApartmentListDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<LandlordApartmentData> get data;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;
  @override
  @JsonKey(ignore: true)
  $Landlord_ApartmentListDTOCopyWith<Landlord_ApartmentListDTO> get copyWith;
}
