// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of withdrawal_history_list_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WithdrawalHistoryListDTO _$WithdrawalHistoryListDTOFromJson(
    Map<String, dynamic> json) {
  return _WithdrawalHistoryListDTO.fromJson(json);
}

/// @nodoc
class _$WithdrawalHistoryListDTOTearOff {
  const _$WithdrawalHistoryListDTOTearOff();

// ignore: unused_element
  _WithdrawalHistoryListDTO call(
      {@JsonKey(includeIfNull: false) List<WithdrawalHistoryDTOData> data =
          const <WithdrawalHistoryDTOData>[],
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta}) {
    return _WithdrawalHistoryListDTO(
      data: data,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  WithdrawalHistoryListDTO fromJson(Map<String, Object> json) {
    return WithdrawalHistoryListDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WithdrawalHistoryListDTO = _$WithdrawalHistoryListDTOTearOff();

/// @nodoc
mixin _$WithdrawalHistoryListDTO {
  @JsonKey(includeIfNull: false)
  List<WithdrawalHistoryDTOData> get data;
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WithdrawalHistoryListDTOCopyWith<WithdrawalHistoryListDTO> get copyWith;
}

/// @nodoc
abstract class $WithdrawalHistoryListDTOCopyWith<$Res> {
  factory $WithdrawalHistoryListDTOCopyWith(WithdrawalHistoryListDTO value,
          $Res Function(WithdrawalHistoryListDTO) then) =
      _$WithdrawalHistoryListDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) List<WithdrawalHistoryDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$WithdrawalHistoryListDTOCopyWithImpl<$Res>
    implements $WithdrawalHistoryListDTOCopyWith<$Res> {
  _$WithdrawalHistoryListDTOCopyWithImpl(this._value, this._then);

  final WithdrawalHistoryListDTO _value;
  // ignore: unused_field
  final $Res Function(WithdrawalHistoryListDTO) _then;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data as List<WithdrawalHistoryDTOData>,
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
abstract class _$WithdrawalHistoryListDTOCopyWith<$Res>
    implements $WithdrawalHistoryListDTOCopyWith<$Res> {
  factory _$WithdrawalHistoryListDTOCopyWith(_WithdrawalHistoryListDTO value,
          $Res Function(_WithdrawalHistoryListDTO) then) =
      __$WithdrawalHistoryListDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) List<WithdrawalHistoryDTOData> data,
      @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
      @nullable @JsonKey(includeIfNull: false) MetaField meta});

  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$WithdrawalHistoryListDTOCopyWithImpl<$Res>
    extends _$WithdrawalHistoryListDTOCopyWithImpl<$Res>
    implements _$WithdrawalHistoryListDTOCopyWith<$Res> {
  __$WithdrawalHistoryListDTOCopyWithImpl(_WithdrawalHistoryListDTO _value,
      $Res Function(_WithdrawalHistoryListDTO) _then)
      : super(_value, (v) => _then(v as _WithdrawalHistoryListDTO));

  @override
  _WithdrawalHistoryListDTO get _value =>
      super._value as _WithdrawalHistoryListDTO;

  @override
  $Res call({
    Object data = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_WithdrawalHistoryListDTO(
      data: data == freezed
          ? _value.data
          : data as List<WithdrawalHistoryDTOData>,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WithdrawalHistoryListDTO extends _WithdrawalHistoryListDTO {
  const _$_WithdrawalHistoryListDTO(
      {@JsonKey(includeIfNull: false)
          this.data = const <WithdrawalHistoryDTOData>[],
      @nullable
      @JsonKey(includeIfNull: false)
          this.links,
      @nullable
      @JsonKey(includeIfNull: false)
          this.meta})
      : assert(data != null),
        super._();

  factory _$_WithdrawalHistoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_WithdrawalHistoryListDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final List<WithdrawalHistoryDTOData> data;
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
    return 'WithdrawalHistoryListDTO(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithdrawalHistoryListDTO &&
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
  _$WithdrawalHistoryListDTOCopyWith<_WithdrawalHistoryListDTO> get copyWith =>
      __$WithdrawalHistoryListDTOCopyWithImpl<_WithdrawalHistoryListDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WithdrawalHistoryListDTOToJson(this);
  }
}

abstract class _WithdrawalHistoryListDTO extends WithdrawalHistoryListDTO {
  const _WithdrawalHistoryListDTO._() : super._();
  const factory _WithdrawalHistoryListDTO(
          {@JsonKey(includeIfNull: false) List<WithdrawalHistoryDTOData> data,
          @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
          @nullable @JsonKey(includeIfNull: false) MetaField meta}) =
      _$_WithdrawalHistoryListDTO;

  factory _WithdrawalHistoryListDTO.fromJson(Map<String, dynamic> json) =
      _$_WithdrawalHistoryListDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  List<WithdrawalHistoryDTOData> get data;
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
  _$WithdrawalHistoryListDTOCopyWith<_WithdrawalHistoryListDTO> get copyWith;
}
