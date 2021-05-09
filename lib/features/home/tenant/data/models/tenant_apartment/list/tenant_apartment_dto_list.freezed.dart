// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of tenant_apartment_dto_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TenantApartmentDTOList _$TenantApartmentDTOListFromJson(
    Map<String, dynamic> json) {
  return _TenantApartmentDTOList.fromJson(json);
}

/// @nodoc
class _$TenantApartmentDTOListTearOff {
  const _$TenantApartmentDTOListTearOff();

// ignore: unused_element
  _TenantApartmentDTOList call(
      {@JsonKey(includeIfNull: false)
          List<TenantApartmentData> data = const <TenantApartmentData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) {
    return _TenantApartmentDTOList(
      data: data,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  TenantApartmentDTOList fromJson(Map<String, Object> json) {
    return TenantApartmentDTOList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TenantApartmentDTOList = _$TenantApartmentDTOListTearOff();

/// @nodoc
mixin _$TenantApartmentDTOList {
  @JsonKey(includeIfNull: false)
  List<TenantApartmentData> get data;
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TenantApartmentDTOListCopyWith<TenantApartmentDTOList> get copyWith;
}

/// @nodoc
abstract class $TenantApartmentDTOListCopyWith<$Res> {
  factory $TenantApartmentDTOListCopyWith(TenantApartmentDTOList value,
          $Res Function(TenantApartmentDTOList) then) =
      _$TenantApartmentDTOListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<TenantApartmentData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$TenantApartmentDTOListCopyWithImpl<$Res>
    implements $TenantApartmentDTOListCopyWith<$Res> {
  _$TenantApartmentDTOListCopyWithImpl(this._value, this._then);

  final TenantApartmentDTOList _value;
  // ignore: unused_field
  final $Res Function(TenantApartmentDTOList) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<TenantApartmentData>,
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
abstract class _$TenantApartmentDTOListCopyWith<$Res>
    implements $TenantApartmentDTOListCopyWith<$Res> {
  factory _$TenantApartmentDTOListCopyWith(_TenantApartmentDTOList value,
          $Res Function(_TenantApartmentDTOList) then) =
      __$TenantApartmentDTOListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<TenantApartmentData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$TenantApartmentDTOListCopyWithImpl<$Res>
    extends _$TenantApartmentDTOListCopyWithImpl<$Res>
    implements _$TenantApartmentDTOListCopyWith<$Res> {
  __$TenantApartmentDTOListCopyWithImpl(_TenantApartmentDTOList _value,
      $Res Function(_TenantApartmentDTOList) _then)
      : super(_value, (v) => _then(v as _TenantApartmentDTOList));

  @override
  _TenantApartmentDTOList get _value => super._value as _TenantApartmentDTOList;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_TenantApartmentDTOList(
      data: data == freezed ? _value.data : data as List<TenantApartmentData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TenantApartmentDTOList extends _TenantApartmentDTOList {
  const _$_TenantApartmentDTOList(
      {@JsonKey(includeIfNull: false) this.data = const <TenantApartmentData>[],
      @nullable @JsonKey(includeIfNull: false) this.links,
      @nullable @JsonKey(includeIfNull: false) this.meta})
      : assert(data != null),
        super._();

  factory _$_TenantApartmentDTOList.fromJson(Map<String, dynamic> json) =>
      _$_$_TenantApartmentDTOListFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<TenantApartmentData> data;
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
    return 'TenantApartmentDTOList(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantApartmentDTOList &&
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
  _$TenantApartmentDTOListCopyWith<_TenantApartmentDTOList> get copyWith =>
      __$TenantApartmentDTOListCopyWithImpl<_TenantApartmentDTOList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TenantApartmentDTOListToJson(this);
  }
}

abstract class _TenantApartmentDTOList extends TenantApartmentDTOList {
  const _TenantApartmentDTOList._() : super._();
  const factory _TenantApartmentDTOList(
          {@JsonKey(includeIfNull: false) List<TenantApartmentData> data,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$_TenantApartmentDTOList;

  factory _TenantApartmentDTOList.fromJson(Map<String, dynamic> json) =
      _$_TenantApartmentDTOList.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<TenantApartmentData> get data;
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
  _$TenantApartmentDTOListCopyWith<_TenantApartmentDTOList> get copyWith;
}
