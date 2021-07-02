// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of bank_dto_list.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BankDTOList _$BankDTOListFromJson(Map<String, dynamic> json) {
  return _BankDTOList.fromJson(json);
}

/// @nodoc
class _$BankDTOListTearOff {
  const _$BankDTOListTearOff();

// ignore: unused_element
  _BankDTOList call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @JsonKey(includeIfNull: false)
          List<BankDataModel> banks = const <BankDataModel>[],
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) {
    return _BankDTOList(
      status: status,
      banks: banks,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  BankDTOList fromJson(Map<String, Object> json) {
    return BankDTOList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BankDTOList = _$BankDTOListTearOff();

/// @nodoc
mixin _$BankDTOList {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @JsonKey(includeIfNull: false)
  List<BankDataModel> get banks;
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BankDTOListCopyWith<BankDTOList> get copyWith;
}

/// @nodoc
abstract class $BankDTOListCopyWith<$Res> {
  factory $BankDTOListCopyWith(
          BankDTOList value, $Res Function(BankDTOList) then) =
      _$BankDTOListCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
      @JsonKey(includeIfNull: false) List<BankDataModel> banks,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$BankDTOListCopyWithImpl<$Res> implements $BankDTOListCopyWith<$Res> {
  _$BankDTOListCopyWithImpl(this._value, this._then);

  final BankDTOList _value;
  // ignore: unused_field
  final $Res Function(BankDTOList) _then;

  @override
  $Res call({
    Object status = freezed,
    Object banks = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as String,
      banks: banks == freezed ? _value.banks : banks as List<BankDataModel>,
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
abstract class _$BankDTOListCopyWith<$Res>
    implements $BankDTOListCopyWith<$Res> {
  factory _$BankDTOListCopyWith(
          _BankDTOList value, $Res Function(_BankDTOList) then) =
      __$BankDTOListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
      @JsonKey(includeIfNull: false) List<BankDataModel> banks,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$BankDTOListCopyWithImpl<$Res> extends _$BankDTOListCopyWithImpl<$Res>
    implements _$BankDTOListCopyWith<$Res> {
  __$BankDTOListCopyWithImpl(
      _BankDTOList _value, $Res Function(_BankDTOList) _then)
      : super(_value, (v) => _then(v as _BankDTOList));

  @override
  _BankDTOList get _value => super._value as _BankDTOList;

  @override
  $Res call({
    Object status = freezed,
    Object banks = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_BankDTOList(
      status: status == freezed ? _value.status : status as String,
      banks: banks == freezed ? _value.banks : banks as List<BankDataModel>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BankDTOList extends _BankDTOList {
  const _$_BankDTOList(
      {@nullable @JsonKey(includeIfNull: false, defaultValue: '') this.status,
      @JsonKey(includeIfNull: false) this.banks = const <BankDataModel>[],
      @nullable @JsonKey(includeIfNull: false) this.links,
      @nullable @JsonKey(includeIfNull: false) this.meta})
      : assert(banks != null),
        super._();

  factory _$_BankDTOList.fromJson(Map<String, dynamic> json) =>
      _$_$_BankDTOListFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String status;
  @override
  @JsonKey(includeIfNull: false)
  final List<BankDataModel> banks;
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
    return 'BankDTOList(status: $status, banks: $banks, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BankDTOList &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.banks, banks) ||
                const DeepCollectionEquality().equals(other.banks, banks)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(banks) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$BankDTOListCopyWith<_BankDTOList> get copyWith =>
      __$BankDTOListCopyWithImpl<_BankDTOList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BankDTOListToJson(this);
  }
}

abstract class _BankDTOList extends BankDTOList {
  const _BankDTOList._() : super._();
  const factory _BankDTOList(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @JsonKey(includeIfNull: false)
          List<BankDataModel> banks,
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) = _$_BankDTOList;

  factory _BankDTOList.fromJson(Map<String, dynamic> json) =
      _$_BankDTOList.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @override
  @JsonKey(includeIfNull: false)
  List<BankDataModel> get banks;
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
  _$BankDTOListCopyWith<_BankDTOList> get copyWith;
}
