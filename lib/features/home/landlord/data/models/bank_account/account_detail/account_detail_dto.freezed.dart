// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of account_detail_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AccountDetailDTO _$AccountDetailDTOFromJson(Map<String, dynamic> json) {
  return _AccountDetailDTO.fromJson(json);
}

/// @nodoc
class _$AccountDetailDTOTearOff {
  const _$AccountDetailDTOTearOff();

// ignore: unused_element
  _AccountDetailDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'bank_id')
          int bankId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
          String accountNumber,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
          String accountName,
      @nullable
      @JsonKey(includeIfNull: false)
          BankDataModel bank}) {
    return _AccountDetailDTO(
      bankId: bankId,
      accountNumber: accountNumber,
      accountName: accountName,
      bank: bank,
    );
  }

// ignore: unused_element
  AccountDetailDTO fromJson(Map<String, Object> json) {
    return AccountDetailDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AccountDetailDTO = _$AccountDetailDTOTearOff();

/// @nodoc
mixin _$AccountDetailDTO {
  @nullable
  @JsonKey(includeIfNull: false, name: 'bank_id')
  int get bankId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
  String get accountNumber;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
  String get accountName;
  @nullable
  @JsonKey(includeIfNull: false)
  BankDataModel get bank;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AccountDetailDTOCopyWith<AccountDetailDTO> get copyWith;
}

/// @nodoc
abstract class $AccountDetailDTOCopyWith<$Res> {
  factory $AccountDetailDTOCopyWith(
          AccountDetailDTO value, $Res Function(AccountDetailDTO) then) =
      _$AccountDetailDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'bank_id')
          int bankId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
          String accountNumber,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
          String accountName,
      @nullable
      @JsonKey(includeIfNull: false)
          BankDataModel bank});

  $BankDataModelCopyWith<$Res> get bank;
}

/// @nodoc
class _$AccountDetailDTOCopyWithImpl<$Res>
    implements $AccountDetailDTOCopyWith<$Res> {
  _$AccountDetailDTOCopyWithImpl(this._value, this._then);

  final AccountDetailDTO _value;
  // ignore: unused_field
  final $Res Function(AccountDetailDTO) _then;

  @override
  $Res call({
    Object bankId = freezed,
    Object accountNumber = freezed,
    Object accountName = freezed,
    Object bank = freezed,
  }) {
    return _then(_value.copyWith(
      bankId: bankId == freezed ? _value.bankId : bankId as int,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber as String,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      bank: bank == freezed ? _value.bank : bank as BankDataModel,
    ));
  }

  @override
  $BankDataModelCopyWith<$Res> get bank {
    if (_value.bank == null) {
      return null;
    }
    return $BankDataModelCopyWith<$Res>(_value.bank, (value) {
      return _then(_value.copyWith(bank: value));
    });
  }
}

/// @nodoc
abstract class _$AccountDetailDTOCopyWith<$Res>
    implements $AccountDetailDTOCopyWith<$Res> {
  factory _$AccountDetailDTOCopyWith(
          _AccountDetailDTO value, $Res Function(_AccountDetailDTO) then) =
      __$AccountDetailDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'bank_id')
          int bankId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
          String accountNumber,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
          String accountName,
      @nullable
      @JsonKey(includeIfNull: false)
          BankDataModel bank});

  @override
  $BankDataModelCopyWith<$Res> get bank;
}

/// @nodoc
class __$AccountDetailDTOCopyWithImpl<$Res>
    extends _$AccountDetailDTOCopyWithImpl<$Res>
    implements _$AccountDetailDTOCopyWith<$Res> {
  __$AccountDetailDTOCopyWithImpl(
      _AccountDetailDTO _value, $Res Function(_AccountDetailDTO) _then)
      : super(_value, (v) => _then(v as _AccountDetailDTO));

  @override
  _AccountDetailDTO get _value => super._value as _AccountDetailDTO;

  @override
  $Res call({
    Object bankId = freezed,
    Object accountNumber = freezed,
    Object accountName = freezed,
    Object bank = freezed,
  }) {
    return _then(_AccountDetailDTO(
      bankId: bankId == freezed ? _value.bankId : bankId as int,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber as String,
      accountName:
          accountName == freezed ? _value.accountName : accountName as String,
      bank: bank == freezed ? _value.bank : bank as BankDataModel,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AccountDetailDTO extends _AccountDetailDTO {
  const _$_AccountDetailDTO(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'bank_id')
          this.bankId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
          this.accountNumber,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
          this.accountName,
      @nullable
      @JsonKey(includeIfNull: false)
          this.bank})
      : super._();

  factory _$_AccountDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountDetailDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'bank_id')
  final int bankId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
  final String accountNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
  final String accountName;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final BankDataModel bank;

  @override
  String toString() {
    return 'AccountDetailDTO(bankId: $bankId, accountNumber: $accountNumber, accountName: $accountName, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountDetailDTO &&
            (identical(other.bankId, bankId) ||
                const DeepCollectionEquality().equals(other.bankId, bankId)) &&
            (identical(other.accountNumber, accountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.accountNumber, accountNumber)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bankId) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(bank);

  @JsonKey(ignore: true)
  @override
  _$AccountDetailDTOCopyWith<_AccountDetailDTO> get copyWith =>
      __$AccountDetailDTOCopyWithImpl<_AccountDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountDetailDTOToJson(this);
  }
}

abstract class _AccountDetailDTO extends AccountDetailDTO {
  const _AccountDetailDTO._() : super._();
  const factory _AccountDetailDTO(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'bank_id')
          int bankId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
          String accountNumber,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
          String accountName,
      @nullable
      @JsonKey(includeIfNull: false)
          BankDataModel bank}) = _$_AccountDetailDTO;

  factory _AccountDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_AccountDetailDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'bank_id')
  int get bankId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
  String get accountNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
  String get accountName;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  BankDataModel get bank;
  @override
  @JsonKey(ignore: true)
  _$AccountDetailDTOCopyWith<_AccountDetailDTO> get copyWith;
}
