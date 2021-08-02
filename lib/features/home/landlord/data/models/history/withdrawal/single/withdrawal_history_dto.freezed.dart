// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of withdrawal_history_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WithdrawalHistoryDTO _$WithdrawalHistoryDTOFromJson(Map<String, dynamic> json) {
  return _WithdrawalHistoryDTO.fromJson(json);
}

/// @nodoc
class _$WithdrawalHistoryDTOTearOff {
  const _$WithdrawalHistoryDTOTearOff();

// ignore: unused_element
  _WithdrawalHistoryDTO call(
      {@nullable
      @JsonKey(includeIfNull: false)
          List<WithdrawalHistoryDTOData> data,
      @JsonKey(includeIfNull: false, name: 'current_page')
          int currentPage,
      @JsonKey(includeIfNull: false)
          int from,
      @JsonKey(includeIfNull: false, name: 'last_page')
          int lastPage,
      @nullable
      @JsonKey(includeIfNull: false)
          List<PaginationLinks> links,
      @nullable
      @JsonKey(includeIfNull: false)
          String path,
      @JsonKey(includeIfNull: false, name: 'per_page')
          int perPage,
      @JsonKey(includeIfNull: false)
          int to,
      @JsonKey(includeIfNull: false)
          int total}) {
    return _WithdrawalHistoryDTO(
      data: data,
      currentPage: currentPage,
      from: from,
      lastPage: lastPage,
      links: links,
      path: path,
      perPage: perPage,
      to: to,
      total: total,
    );
  }

// ignore: unused_element
  WithdrawalHistoryDTO fromJson(Map<String, Object> json) {
    return WithdrawalHistoryDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WithdrawalHistoryDTO = _$WithdrawalHistoryDTOTearOff();

/// @nodoc
mixin _$WithdrawalHistoryDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  List<WithdrawalHistoryDTOData> get data;
  @JsonKey(includeIfNull: false, name: 'current_page')
  int get currentPage;
  @JsonKey(includeIfNull: false)
  int get from;
  @JsonKey(includeIfNull: false, name: 'last_page')
  int get lastPage;
  @nullable
  @JsonKey(includeIfNull: false)
  List<PaginationLinks> get links;
  @nullable
  @JsonKey(includeIfNull: false)
  String get path;
  @JsonKey(includeIfNull: false, name: 'per_page')
  int get perPage;
  @JsonKey(includeIfNull: false)
  int get to;
  @JsonKey(includeIfNull: false)
  int get total;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WithdrawalHistoryDTOCopyWith<WithdrawalHistoryDTO> get copyWith;
}

/// @nodoc
abstract class $WithdrawalHistoryDTOCopyWith<$Res> {
  factory $WithdrawalHistoryDTOCopyWith(WithdrawalHistoryDTO value,
          $Res Function(WithdrawalHistoryDTO) then) =
      _$WithdrawalHistoryDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          List<WithdrawalHistoryDTOData> data,
      @JsonKey(includeIfNull: false, name: 'current_page')
          int currentPage,
      @JsonKey(includeIfNull: false)
          int from,
      @JsonKey(includeIfNull: false, name: 'last_page')
          int lastPage,
      @nullable
      @JsonKey(includeIfNull: false)
          List<PaginationLinks> links,
      @nullable
      @JsonKey(includeIfNull: false)
          String path,
      @JsonKey(includeIfNull: false, name: 'per_page')
          int perPage,
      @JsonKey(includeIfNull: false)
          int to,
      @JsonKey(includeIfNull: false)
          int total});
}

/// @nodoc
class _$WithdrawalHistoryDTOCopyWithImpl<$Res>
    implements $WithdrawalHistoryDTOCopyWith<$Res> {
  _$WithdrawalHistoryDTOCopyWithImpl(this._value, this._then);

  final WithdrawalHistoryDTO _value;
  // ignore: unused_field
  final $Res Function(WithdrawalHistoryDTO) _then;

  @override
  $Res call({
    Object data = freezed,
    Object currentPage = freezed,
    Object from = freezed,
    Object lastPage = freezed,
    Object links = freezed,
    Object path = freezed,
    Object perPage = freezed,
    Object to = freezed,
    Object total = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data as List<WithdrawalHistoryDTOData>,
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      from: from == freezed ? _value.from : from as int,
      lastPage: lastPage == freezed ? _value.lastPage : lastPage as int,
      links: links == freezed ? _value.links : links as List<PaginationLinks>,
      path: path == freezed ? _value.path : path as String,
      perPage: perPage == freezed ? _value.perPage : perPage as int,
      to: to == freezed ? _value.to : to as int,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

/// @nodoc
abstract class _$WithdrawalHistoryDTOCopyWith<$Res>
    implements $WithdrawalHistoryDTOCopyWith<$Res> {
  factory _$WithdrawalHistoryDTOCopyWith(_WithdrawalHistoryDTO value,
          $Res Function(_WithdrawalHistoryDTO) then) =
      __$WithdrawalHistoryDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          List<WithdrawalHistoryDTOData> data,
      @JsonKey(includeIfNull: false, name: 'current_page')
          int currentPage,
      @JsonKey(includeIfNull: false)
          int from,
      @JsonKey(includeIfNull: false, name: 'last_page')
          int lastPage,
      @nullable
      @JsonKey(includeIfNull: false)
          List<PaginationLinks> links,
      @nullable
      @JsonKey(includeIfNull: false)
          String path,
      @JsonKey(includeIfNull: false, name: 'per_page')
          int perPage,
      @JsonKey(includeIfNull: false)
          int to,
      @JsonKey(includeIfNull: false)
          int total});
}

/// @nodoc
class __$WithdrawalHistoryDTOCopyWithImpl<$Res>
    extends _$WithdrawalHistoryDTOCopyWithImpl<$Res>
    implements _$WithdrawalHistoryDTOCopyWith<$Res> {
  __$WithdrawalHistoryDTOCopyWithImpl(
      _WithdrawalHistoryDTO _value, $Res Function(_WithdrawalHistoryDTO) _then)
      : super(_value, (v) => _then(v as _WithdrawalHistoryDTO));

  @override
  _WithdrawalHistoryDTO get _value => super._value as _WithdrawalHistoryDTO;

  @override
  $Res call({
    Object data = freezed,
    Object currentPage = freezed,
    Object from = freezed,
    Object lastPage = freezed,
    Object links = freezed,
    Object path = freezed,
    Object perPage = freezed,
    Object to = freezed,
    Object total = freezed,
  }) {
    return _then(_WithdrawalHistoryDTO(
      data: data == freezed
          ? _value.data
          : data as List<WithdrawalHistoryDTOData>,
      currentPage:
          currentPage == freezed ? _value.currentPage : currentPage as int,
      from: from == freezed ? _value.from : from as int,
      lastPage: lastPage == freezed ? _value.lastPage : lastPage as int,
      links: links == freezed ? _value.links : links as List<PaginationLinks>,
      path: path == freezed ? _value.path : path as String,
      perPage: perPage == freezed ? _value.perPage : perPage as int,
      to: to == freezed ? _value.to : to as int,
      total: total == freezed ? _value.total : total as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WithdrawalHistoryDTO extends _WithdrawalHistoryDTO {
  const _$_WithdrawalHistoryDTO(
      {@nullable @JsonKey(includeIfNull: false) this.data,
      @JsonKey(includeIfNull: false, name: 'current_page') this.currentPage,
      @JsonKey(includeIfNull: false) this.from,
      @JsonKey(includeIfNull: false, name: 'last_page') this.lastPage,
      @nullable @JsonKey(includeIfNull: false) this.links,
      @nullable @JsonKey(includeIfNull: false) this.path,
      @JsonKey(includeIfNull: false, name: 'per_page') this.perPage,
      @JsonKey(includeIfNull: false) this.to,
      @JsonKey(includeIfNull: false) this.total})
      : super._();

  factory _$_WithdrawalHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_WithdrawalHistoryDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final List<WithdrawalHistoryDTOData> data;
  @override
  @JsonKey(includeIfNull: false, name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(includeIfNull: false)
  final int from;
  @override
  @JsonKey(includeIfNull: false, name: 'last_page')
  final int lastPage;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final List<PaginationLinks> links;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String path;
  @override
  @JsonKey(includeIfNull: false, name: 'per_page')
  final int perPage;
  @override
  @JsonKey(includeIfNull: false)
  final int to;
  @override
  @JsonKey(includeIfNull: false)
  final int total;

  @override
  String toString() {
    return 'WithdrawalHistoryDTO(data: $data, currentPage: $currentPage, from: $from, lastPage: $lastPage, links: $links, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WithdrawalHistoryDTO &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.lastPage, lastPage) ||
                const DeepCollectionEquality()
                    .equals(other.lastPage, lastPage)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.perPage, perPage) ||
                const DeepCollectionEquality()
                    .equals(other.perPage, perPage)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(lastPage) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(perPage) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$WithdrawalHistoryDTOCopyWith<_WithdrawalHistoryDTO> get copyWith =>
      __$WithdrawalHistoryDTOCopyWithImpl<_WithdrawalHistoryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WithdrawalHistoryDTOToJson(this);
  }
}

abstract class _WithdrawalHistoryDTO extends WithdrawalHistoryDTO {
  const _WithdrawalHistoryDTO._() : super._();
  const factory _WithdrawalHistoryDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          List<WithdrawalHistoryDTOData> data,
      @JsonKey(includeIfNull: false, name: 'current_page')
          int currentPage,
      @JsonKey(includeIfNull: false)
          int from,
      @JsonKey(includeIfNull: false, name: 'last_page')
          int lastPage,
      @nullable
      @JsonKey(includeIfNull: false)
          List<PaginationLinks> links,
      @nullable
      @JsonKey(includeIfNull: false)
          String path,
      @JsonKey(includeIfNull: false, name: 'per_page')
          int perPage,
      @JsonKey(includeIfNull: false)
          int to,
      @JsonKey(includeIfNull: false)
          int total}) = _$_WithdrawalHistoryDTO;

  factory _WithdrawalHistoryDTO.fromJson(Map<String, dynamic> json) =
      _$_WithdrawalHistoryDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  List<WithdrawalHistoryDTOData> get data;
  @override
  @JsonKey(includeIfNull: false, name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(includeIfNull: false)
  int get from;
  @override
  @JsonKey(includeIfNull: false, name: 'last_page')
  int get lastPage;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  List<PaginationLinks> get links;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get path;
  @override
  @JsonKey(includeIfNull: false, name: 'per_page')
  int get perPage;
  @override
  @JsonKey(includeIfNull: false)
  int get to;
  @override
  @JsonKey(includeIfNull: false)
  int get total;
  @override
  @JsonKey(ignore: true)
  _$WithdrawalHistoryDTOCopyWith<_WithdrawalHistoryDTO> get copyWith;
}
