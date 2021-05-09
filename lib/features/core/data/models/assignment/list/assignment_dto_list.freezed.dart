// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of assignment_dto_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AssignmentDTOList _$AssignmentDTOListFromJson(Map<String, dynamic> json) {
  return _AssignmentDTOList.fromJson(json);
}

/// @nodoc
class _$AssignmentDTOListTearOff {
  const _$AssignmentDTOListTearOff();

// ignore: unused_element
  _AssignmentDTOList call(
      {@JsonKey(includeIfNull: false)
          List<AssignmentDTOData> data = const <AssignmentDTOData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) {
    return _AssignmentDTOList(
      data: data,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  AssignmentDTOList fromJson(Map<String, Object> json) {
    return AssignmentDTOList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AssignmentDTOList = _$AssignmentDTOListTearOff();

/// @nodoc
mixin _$AssignmentDTOList {
  @JsonKey(includeIfNull: false)
  List<AssignmentDTOData> get data; //
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links; //
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AssignmentDTOListCopyWith<AssignmentDTOList> get copyWith;
}

/// @nodoc
abstract class $AssignmentDTOListCopyWith<$Res> {
  factory $AssignmentDTOListCopyWith(
          AssignmentDTOList value, $Res Function(AssignmentDTOList) then) =
      _$AssignmentDTOListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<AssignmentDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$AssignmentDTOListCopyWithImpl<$Res>
    implements $AssignmentDTOListCopyWith<$Res> {
  _$AssignmentDTOListCopyWithImpl(this._value, this._then);

  final AssignmentDTOList _value;
  // ignore: unused_field
  final $Res Function(AssignmentDTOList) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<AssignmentDTOData>,
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
abstract class _$AssignmentDTOListCopyWith<$Res>
    implements $AssignmentDTOListCopyWith<$Res> {
  factory _$AssignmentDTOListCopyWith(
          _AssignmentDTOList value, $Res Function(_AssignmentDTOList) then) =
      __$AssignmentDTOListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<AssignmentDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$AssignmentDTOListCopyWithImpl<$Res>
    extends _$AssignmentDTOListCopyWithImpl<$Res>
    implements _$AssignmentDTOListCopyWith<$Res> {
  __$AssignmentDTOListCopyWithImpl(
      _AssignmentDTOList _value, $Res Function(_AssignmentDTOList) _then)
      : super(_value, (v) => _then(v as _AssignmentDTOList));

  @override
  _AssignmentDTOList get _value => super._value as _AssignmentDTOList;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_AssignmentDTOList(
      data: data == freezed ? _value.data : data as List<AssignmentDTOData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AssignmentDTOList extends _AssignmentDTOList {
  const _$_AssignmentDTOList(
      {@JsonKey(includeIfNull: false) this.data = const <AssignmentDTOData>[],
      @nullable @JsonKey(includeIfNull: false) this.links,
      @nullable @JsonKey(includeIfNull: false) this.meta})
      : assert(data != null),
        super._();

  factory _$_AssignmentDTOList.fromJson(Map<String, dynamic> json) =>
      _$_$_AssignmentDTOListFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<AssignmentDTOData> data;
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
    return 'AssignmentDTOList(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssignmentDTOList &&
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
  _$AssignmentDTOListCopyWith<_AssignmentDTOList> get copyWith =>
      __$AssignmentDTOListCopyWithImpl<_AssignmentDTOList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssignmentDTOListToJson(this);
  }
}

abstract class _AssignmentDTOList extends AssignmentDTOList {
  const _AssignmentDTOList._() : super._();
  const factory _AssignmentDTOList(
          {@JsonKey(includeIfNull: false) List<AssignmentDTOData> data,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$_AssignmentDTOList;

  factory _AssignmentDTOList.fromJson(Map<String, dynamic> json) =
      _$_AssignmentDTOList.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<AssignmentDTOData> get data;
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
  _$AssignmentDTOListCopyWith<_AssignmentDTOList> get copyWith;
}
