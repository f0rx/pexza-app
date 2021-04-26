// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_property_dto_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LandlordPropertyDTOList _$LandlordPropertyDTOListFromJson(
    Map<String, dynamic> json) {
  return _LandlordPropertyDTOList.fromJson(json);
}

/// @nodoc
class _$LandlordPropertyDTOListTearOff {
  const _$LandlordPropertyDTOListTearOff();

// ignore: unused_element
  _LandlordPropertyDTOList call(
      {@JsonKey(includeIfNull: false)
          List<LandlordPropertyData> data = const <LandlordPropertyData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) {
    return _LandlordPropertyDTOList(
      data: data,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  LandlordPropertyDTOList fromJson(Map<String, Object> json) {
    return LandlordPropertyDTOList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordPropertyDTOList = _$LandlordPropertyDTOListTearOff();

/// @nodoc
mixin _$LandlordPropertyDTOList {
  @JsonKey(includeIfNull: false)
  List<LandlordPropertyData> get data;
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LandlordPropertyDTOListCopyWith<LandlordPropertyDTOList> get copyWith;
}

/// @nodoc
abstract class $LandlordPropertyDTOListCopyWith<$Res> {
  factory $LandlordPropertyDTOListCopyWith(LandlordPropertyDTOList value,
          $Res Function(LandlordPropertyDTOList) then) =
      _$LandlordPropertyDTOListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<LandlordPropertyData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$LandlordPropertyDTOListCopyWithImpl<$Res>
    implements $LandlordPropertyDTOListCopyWith<$Res> {
  _$LandlordPropertyDTOListCopyWithImpl(this._value, this._then);

  final LandlordPropertyDTOList _value;
  // ignore: unused_field
  final $Res Function(LandlordPropertyDTOList) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<LandlordPropertyData>,
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
abstract class _$LandlordPropertyDTOListCopyWith<$Res>
    implements $LandlordPropertyDTOListCopyWith<$Res> {
  factory _$LandlordPropertyDTOListCopyWith(_LandlordPropertyDTOList value,
          $Res Function(_LandlordPropertyDTOList) then) =
      __$LandlordPropertyDTOListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<LandlordPropertyData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$LandlordPropertyDTOListCopyWithImpl<$Res>
    extends _$LandlordPropertyDTOListCopyWithImpl<$Res>
    implements _$LandlordPropertyDTOListCopyWith<$Res> {
  __$LandlordPropertyDTOListCopyWithImpl(_LandlordPropertyDTOList _value,
      $Res Function(_LandlordPropertyDTOList) _then)
      : super(_value, (v) => _then(v as _LandlordPropertyDTOList));

  @override
  _LandlordPropertyDTOList get _value =>
      super._value as _LandlordPropertyDTOList;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_LandlordPropertyDTOList(
      data: data == freezed ? _value.data : data as List<LandlordPropertyData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LandlordPropertyDTOList extends _LandlordPropertyDTOList {
  const _$_LandlordPropertyDTOList(
      {@JsonKey(includeIfNull: false)
          this.data = const <LandlordPropertyData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          this.links,
      @nullable
      @JsonKey(includeIfNull: false)
          this.meta})
      : assert(data != null),
        super._();

  factory _$_LandlordPropertyDTOList.fromJson(Map<String, dynamic> json) =>
      _$_$_LandlordPropertyDTOListFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<LandlordPropertyData> data;
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
    return 'LandlordPropertyDTOList(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordPropertyDTOList &&
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
  _$LandlordPropertyDTOListCopyWith<_LandlordPropertyDTOList> get copyWith =>
      __$LandlordPropertyDTOListCopyWithImpl<_LandlordPropertyDTOList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandlordPropertyDTOListToJson(this);
  }
}

abstract class _LandlordPropertyDTOList extends LandlordPropertyDTOList {
  const _LandlordPropertyDTOList._() : super._();
  const factory _LandlordPropertyDTOList(
          {@JsonKey(includeIfNull: false) List<LandlordPropertyData> data,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$_LandlordPropertyDTOList;

  factory _LandlordPropertyDTOList.fromJson(Map<String, dynamic> json) =
      _$_LandlordPropertyDTOList.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<LandlordPropertyData> get data;
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
  _$LandlordPropertyDTOListCopyWith<_LandlordPropertyDTOList> get copyWith;
}
