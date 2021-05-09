// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of maintenance_service_dto_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MaintenanceServiceDTOList _$MaintenanceServiceDTOListFromJson(
    Map<String, dynamic> json) {
  return _MaintenanceServiceDTOList.fromJson(json);
}

/// @nodoc
class _$MaintenanceServiceDTOListTearOff {
  const _$MaintenanceServiceDTOListTearOff();

// ignore: unused_element
  _MaintenanceServiceDTOList call(
      {@JsonKey(includeIfNull: false) List<MaintenanceServiceDTO> services =
          const <MaintenanceServiceDTO>[],
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta}) {
    return _MaintenanceServiceDTOList(
      services: services,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  MaintenanceServiceDTOList fromJson(Map<String, Object> json) {
    return MaintenanceServiceDTOList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MaintenanceServiceDTOList = _$MaintenanceServiceDTOListTearOff();

/// @nodoc
mixin _$MaintenanceServiceDTOList {
  @JsonKey(includeIfNull: false)
  List<MaintenanceServiceDTO> get services; //
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links; //
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MaintenanceServiceDTOListCopyWith<MaintenanceServiceDTOList> get copyWith;
}

/// @nodoc
abstract class $MaintenanceServiceDTOListCopyWith<$Res> {
  factory $MaintenanceServiceDTOListCopyWith(MaintenanceServiceDTOList value,
          $Res Function(MaintenanceServiceDTOList) then) =
      _$MaintenanceServiceDTOListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<MaintenanceServiceDTO> services,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$MaintenanceServiceDTOListCopyWithImpl<$Res>
    implements $MaintenanceServiceDTOListCopyWith<$Res> {
  _$MaintenanceServiceDTOListCopyWithImpl(this._value, this._then);

  final MaintenanceServiceDTOList _value;
  // ignore: unused_field
  final $Res Function(MaintenanceServiceDTOList) _then;

  @override
  $Res call({
    Object services = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      services: services == freezed
          ? _value.services
          : services as List<MaintenanceServiceDTO>,
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
abstract class _$MaintenanceServiceDTOListCopyWith<$Res>
    implements $MaintenanceServiceDTOListCopyWith<$Res> {
  factory _$MaintenanceServiceDTOListCopyWith(_MaintenanceServiceDTOList value,
          $Res Function(_MaintenanceServiceDTOList) then) =
      __$MaintenanceServiceDTOListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<MaintenanceServiceDTO> services,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$MaintenanceServiceDTOListCopyWithImpl<$Res>
    extends _$MaintenanceServiceDTOListCopyWithImpl<$Res>
    implements _$MaintenanceServiceDTOListCopyWith<$Res> {
  __$MaintenanceServiceDTOListCopyWithImpl(_MaintenanceServiceDTOList _value,
      $Res Function(_MaintenanceServiceDTOList) _then)
      : super(_value, (v) => _then(v as _MaintenanceServiceDTOList));

  @override
  _MaintenanceServiceDTOList get _value =>
      super._value as _MaintenanceServiceDTOList;

  @override
  $Res call({
    Object services = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_MaintenanceServiceDTOList(
      services: services == freezed
          ? _value.services
          : services as List<MaintenanceServiceDTO>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MaintenanceServiceDTOList extends _MaintenanceServiceDTOList {
  const _$_MaintenanceServiceDTOList(
      {@JsonKey(includeIfNull: false)
          this.services = const <MaintenanceServiceDTO>[],
      @nullable
      @JsonKey(includeIfNull: false)
          this.links,
      @nullable
      @JsonKey(includeIfNull: false)
          this.meta})
      : assert(services != null),
        super._();

  factory _$_MaintenanceServiceDTOList.fromJson(Map<String, dynamic> json) =>
      _$_$_MaintenanceServiceDTOListFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<MaintenanceServiceDTO> services;
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
    return 'MaintenanceServiceDTOList(services: $services, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MaintenanceServiceDTOList &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(services) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$MaintenanceServiceDTOListCopyWith<_MaintenanceServiceDTOList>
      get copyWith =>
          __$MaintenanceServiceDTOListCopyWithImpl<_MaintenanceServiceDTOList>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MaintenanceServiceDTOListToJson(this);
  }
}

abstract class _MaintenanceServiceDTOList extends MaintenanceServiceDTOList {
  const _MaintenanceServiceDTOList._() : super._();
  const factory _MaintenanceServiceDTOList(
          {@JsonKey(includeIfNull: false) List<MaintenanceServiceDTO> services,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$_MaintenanceServiceDTOList;

  factory _MaintenanceServiceDTOList.fromJson(Map<String, dynamic> json) =
      _$_MaintenanceServiceDTOList.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<MaintenanceServiceDTO> get services;
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
  _$MaintenanceServiceDTOListCopyWith<_MaintenanceServiceDTOList> get copyWith;
}
