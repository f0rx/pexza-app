// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of property_rent_history_list_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PropertyRentHistoryListDTO _$PropertyRentHistoryListDTOFromJson(
    Map<String, dynamic> json) {
  return _PropertyRentHistoryListDTO.fromJson(json);
}

/// @nodoc
class _$PropertyRentHistoryListDTOTearOff {
  const _$PropertyRentHistoryListDTOTearOff();

// ignore: unused_element
  _PropertyRentHistoryListDTO call(
      {@JsonKey(includeIfNull: false) List<PropertyRentHistoryDTOData> data =
          const <PropertyRentHistoryDTOData>[],
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta}) {
    return _PropertyRentHistoryListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  PropertyRentHistoryListDTO fromJson(Map<String, Object> json) {
    return PropertyRentHistoryListDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyRentHistoryListDTO = _$PropertyRentHistoryListDTOTearOff();

/// @nodoc
mixin _$PropertyRentHistoryListDTO {
  @JsonKey(includeIfNull: false)
  List<PropertyRentHistoryDTOData> get data;
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PropertyRentHistoryListDTOCopyWith<PropertyRentHistoryListDTO> get copyWith;
}

/// @nodoc
abstract class $PropertyRentHistoryListDTOCopyWith<$Res> {
  factory $PropertyRentHistoryListDTOCopyWith(PropertyRentHistoryListDTO value,
          $Res Function(PropertyRentHistoryListDTO) then) =
      _$PropertyRentHistoryListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<PropertyRentHistoryDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$PropertyRentHistoryListDTOCopyWithImpl<$Res>
    implements $PropertyRentHistoryListDTOCopyWith<$Res> {
  _$PropertyRentHistoryListDTOCopyWithImpl(this._value, this._then);

  final PropertyRentHistoryListDTO _value;
  // ignore: unused_field
  final $Res Function(PropertyRentHistoryListDTO) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data as List<PropertyRentHistoryDTOData>,
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
abstract class _$PropertyRentHistoryListDTOCopyWith<$Res>
    implements $PropertyRentHistoryListDTOCopyWith<$Res> {
  factory _$PropertyRentHistoryListDTOCopyWith(
          _PropertyRentHistoryListDTO value,
          $Res Function(_PropertyRentHistoryListDTO) then) =
      __$PropertyRentHistoryListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<PropertyRentHistoryDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$PropertyRentHistoryListDTOCopyWithImpl<$Res>
    extends _$PropertyRentHistoryListDTOCopyWithImpl<$Res>
    implements _$PropertyRentHistoryListDTOCopyWith<$Res> {
  __$PropertyRentHistoryListDTOCopyWithImpl(_PropertyRentHistoryListDTO _value,
      $Res Function(_PropertyRentHistoryListDTO) _then)
      : super(_value, (v) => _then(v as _PropertyRentHistoryListDTO));

  @override
  _PropertyRentHistoryListDTO get _value =>
      super._value as _PropertyRentHistoryListDTO;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_PropertyRentHistoryListDTO(
      data: data == freezed
          ? _value.data
          : data as List<PropertyRentHistoryDTOData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PropertyRentHistoryListDTO extends _PropertyRentHistoryListDTO {
  const _$_PropertyRentHistoryListDTO(
      {@JsonKey(includeIfNull: false)
          this.data = const <PropertyRentHistoryDTOData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          this.links,
      @nullable
      @JsonKey(includeIfNull: false)
          this.meta})
      : assert(data != null),
        super._();

  factory _$_PropertyRentHistoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyRentHistoryListDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<PropertyRentHistoryDTOData> data;
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
    return 'PropertyRentHistoryListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyRentHistoryListDTO &&
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
  _$PropertyRentHistoryListDTOCopyWith<_PropertyRentHistoryListDTO>
      get copyWith => __$PropertyRentHistoryListDTOCopyWithImpl<
          _PropertyRentHistoryListDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyRentHistoryListDTOToJson(this);
  }
}

abstract class _PropertyRentHistoryListDTO extends PropertyRentHistoryListDTO {
  const _PropertyRentHistoryListDTO._() : super._();
  const factory _PropertyRentHistoryListDTO(
          {@JsonKey(includeIfNull: false) List<PropertyRentHistoryDTOData> data,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$_PropertyRentHistoryListDTO;

  factory _PropertyRentHistoryListDTO.fromJson(Map<String, dynamic> json) =
      _$_PropertyRentHistoryListDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<PropertyRentHistoryDTOData> get data;
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
  _$PropertyRentHistoryListDTOCopyWith<_PropertyRentHistoryListDTO>
      get copyWith;
}
