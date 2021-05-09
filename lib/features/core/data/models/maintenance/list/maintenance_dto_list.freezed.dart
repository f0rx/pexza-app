// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of maintenance_dto_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MaintenanceDTOList _$MaintenanceDTOListFromJson(Map<String, dynamic> json) {
  return _MaintenanceDTOList.fromJson(json);
}

/// @nodoc
class _$MaintenanceDTOListTearOff {
  const _$MaintenanceDTOListTearOff();

// ignore: unused_element
  _MaintenanceDTOList call(
      {@JsonKey(includeIfNull: false)
          List<MaintenanceDTOData> data = const <MaintenanceDTOData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) {
    return _MaintenanceDTOList(
      data: data,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  MaintenanceDTOList fromJson(Map<String, Object> json) {
    return MaintenanceDTOList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MaintenanceDTOList = _$MaintenanceDTOListTearOff();

/// @nodoc
mixin _$MaintenanceDTOList {
  @JsonKey(includeIfNull: false)
  List<MaintenanceDTOData> get data; //
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links; //
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MaintenanceDTOListCopyWith<MaintenanceDTOList> get copyWith;
}

/// @nodoc
abstract class $MaintenanceDTOListCopyWith<$Res> {
  factory $MaintenanceDTOListCopyWith(
          MaintenanceDTOList value, $Res Function(MaintenanceDTOList) then) =
      _$MaintenanceDTOListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<MaintenanceDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$MaintenanceDTOListCopyWithImpl<$Res>
    implements $MaintenanceDTOListCopyWith<$Res> {
  _$MaintenanceDTOListCopyWithImpl(this._value, this._then);

  final MaintenanceDTOList _value;
  // ignore: unused_field
  final $Res Function(MaintenanceDTOList) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<MaintenanceDTOData>,
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
abstract class _$MaintenanceDTOListCopyWith<$Res>
    implements $MaintenanceDTOListCopyWith<$Res> {
  factory _$MaintenanceDTOListCopyWith(
          _MaintenanceDTOList value, $Res Function(_MaintenanceDTOList) then) =
      __$MaintenanceDTOListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<MaintenanceDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$MaintenanceDTOListCopyWithImpl<$Res>
    extends _$MaintenanceDTOListCopyWithImpl<$Res>
    implements _$MaintenanceDTOListCopyWith<$Res> {
  __$MaintenanceDTOListCopyWithImpl(
      _MaintenanceDTOList _value, $Res Function(_MaintenanceDTOList) _then)
      : super(_value, (v) => _then(v as _MaintenanceDTOList));

  @override
  _MaintenanceDTOList get _value => super._value as _MaintenanceDTOList;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_MaintenanceDTOList(
      data: data == freezed ? _value.data : data as List<MaintenanceDTOData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MaintenanceDTOList extends _MaintenanceDTOList {
  const _$_MaintenanceDTOList(
      {@JsonKey(includeIfNull: false) this.data = const <MaintenanceDTOData>[],
      @nullable @JsonKey(includeIfNull: false) this.links,
      @nullable @JsonKey(includeIfNull: false) this.meta})
      : assert(data != null),
        super._();

  factory _$_MaintenanceDTOList.fromJson(Map<String, dynamic> json) =>
      _$_$_MaintenanceDTOListFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<MaintenanceDTOData> data;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  final PaginationLinks links;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  final MetaField meta;

  @override
  String toString() {
    return 'MaintenanceDTOList(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MaintenanceDTOList &&
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
  _$MaintenanceDTOListCopyWith<_MaintenanceDTOList> get copyWith =>
      __$MaintenanceDTOListCopyWithImpl<_MaintenanceDTOList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MaintenanceDTOListToJson(this);
  }
}

abstract class _MaintenanceDTOList extends MaintenanceDTOList {
  const _MaintenanceDTOList._() : super._();
  const factory _MaintenanceDTOList(
          {@JsonKey(includeIfNull: false) List<MaintenanceDTOData> data,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$_MaintenanceDTOList;

  factory _MaintenanceDTOList.fromJson(Map<String, dynamic> json) =
      _$_MaintenanceDTOList.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<MaintenanceDTOData> get data;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;
  @override
  @JsonKey(ignore: true)
  _$MaintenanceDTOListCopyWith<_MaintenanceDTOList> get copyWith;
}
