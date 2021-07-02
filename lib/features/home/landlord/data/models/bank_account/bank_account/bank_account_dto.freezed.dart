// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of bank_account_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BankAccountDTO _$BankAccountDTOFromJson(Map<String, dynamic> json) {
  return _BankAccountDTO.fromJson(json);
}

/// @nodoc
class _$BankAccountDTOTearOff {
  const _$BankAccountDTOTearOff();

// ignore: unused_element
  _BankAccountDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'bank_account')
          BankAccountData bankAccount,
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) {
    return _BankAccountDTO(
      status: status,
      bankAccount: bankAccount,
      links: links,
      meta: meta,
    );
  }

// ignore: unused_element
  BankAccountDTO fromJson(Map<String, Object> json) {
    return BankAccountDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BankAccountDTO = _$BankAccountDTOTearOff();

/// @nodoc
mixin _$BankAccountDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @nullable
  @JsonKey(includeIfNull: false, name: 'bank_account')
  BankAccountData get bankAccount;
  @nullable
  @JsonKey(includeIfNull: false)
  PaginationLinks get links;
  @nullable
  @JsonKey(includeIfNull: false)
  MetaField get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $BankAccountDTOCopyWith<BankAccountDTO> get copyWith;
}

/// @nodoc
abstract class $BankAccountDTOCopyWith<$Res> {
  factory $BankAccountDTOCopyWith(
          BankAccountDTO value, $Res Function(BankAccountDTO) then) =
      _$BankAccountDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'bank_account')
          BankAccountData bankAccount,
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta});

  $BankAccountDataCopyWith<$Res> get bankAccount;
  $PaginationLinksCopyWith<$Res> get links;
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class _$BankAccountDTOCopyWithImpl<$Res>
    implements $BankAccountDTOCopyWith<$Res> {
  _$BankAccountDTOCopyWithImpl(this._value, this._then);

  final BankAccountDTO _value;
  // ignore: unused_field
  final $Res Function(BankAccountDTO) _then;

  @override
  $Res call({
    Object status = freezed,
    Object bankAccount = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as String,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount as BankAccountData,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }

  @override
  $BankAccountDataCopyWith<$Res> get bankAccount {
    if (_value.bankAccount == null) {
      return null;
    }
    return $BankAccountDataCopyWith<$Res>(_value.bankAccount, (value) {
      return _then(_value.copyWith(bankAccount: value));
    });
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
abstract class _$BankAccountDTOCopyWith<$Res>
    implements $BankAccountDTOCopyWith<$Res> {
  factory _$BankAccountDTOCopyWith(
          _BankAccountDTO value, $Res Function(_BankAccountDTO) then) =
      __$BankAccountDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'bank_account')
          BankAccountData bankAccount,
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta});

  @override
  $BankAccountDataCopyWith<$Res> get bankAccount;
  @override
  $PaginationLinksCopyWith<$Res> get links;
  @override
  $MetaFieldCopyWith<$Res> get meta;
}

/// @nodoc
class __$BankAccountDTOCopyWithImpl<$Res>
    extends _$BankAccountDTOCopyWithImpl<$Res>
    implements _$BankAccountDTOCopyWith<$Res> {
  __$BankAccountDTOCopyWithImpl(
      _BankAccountDTO _value, $Res Function(_BankAccountDTO) _then)
      : super(_value, (v) => _then(v as _BankAccountDTO));

  @override
  _BankAccountDTO get _value => super._value as _BankAccountDTO;

  @override
  $Res call({
    Object status = freezed,
    Object bankAccount = freezed,
    Object links = freezed,
    Object meta = freezed,
  }) {
    return _then(_BankAccountDTO(
      status: status == freezed ? _value.status : status as String,
      bankAccount: bankAccount == freezed
          ? _value.bankAccount
          : bankAccount as BankAccountData,
      links: links == freezed ? _value.links : links as PaginationLinks,
      meta: meta == freezed ? _value.meta : meta as MetaField,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BankAccountDTO extends _BankAccountDTO {
  const _$_BankAccountDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'bank_account')
          this.bankAccount,
      @nullable
      @JsonKey(includeIfNull: false)
          this.links,
      @nullable
      @JsonKey(includeIfNull: false)
          this.meta})
      : super._();

  factory _$_BankAccountDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_BankAccountDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'bank_account')
  final BankAccountData bankAccount;
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
    return 'BankAccountDTO(status: $status, bankAccount: $bankAccount, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BankAccountDTO &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.bankAccount, bankAccount) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccount, bankAccount)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(bankAccount) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$BankAccountDTOCopyWith<_BankAccountDTO> get copyWith =>
      __$BankAccountDTOCopyWithImpl<_BankAccountDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BankAccountDTOToJson(this);
  }
}

abstract class _BankAccountDTO extends BankAccountDTO {
  const _BankAccountDTO._() : super._();
  const factory _BankAccountDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'bank_account')
          BankAccountData bankAccount,
      @nullable
      @JsonKey(includeIfNull: false)
          PaginationLinks links,
      @nullable
      @JsonKey(includeIfNull: false)
          MetaField meta}) = _$_BankAccountDTO;

  factory _BankAccountDTO.fromJson(Map<String, dynamic> json) =
      _$_BankAccountDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'bank_account')
  BankAccountData get bankAccount;
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
  _$BankAccountDTOCopyWith<_BankAccountDTO> get copyWith;
}
