// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of bank_account_detail.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BankAccountDetailTearOff {
  const _$BankAccountDetailTearOff();

// ignore: unused_element
  _BankAccountDetail call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<int> bankId,
      @nullable BasicTextField<String> accountNumber,
      @nullable BasicTextField<String> accountName,
      @nullable Bank bank}) {
    return _BankAccountDetail(
      id: id,
      bankId: bankId,
      accountNumber: accountNumber,
      accountName: accountName,
      bank: bank,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BankAccountDetail = _$BankAccountDetailTearOff();

/// @nodoc
mixin _$BankAccountDetail {
  @nullable
  UniqueId<int> get id;
  @nullable
  BasicTextField<int> get bankId;
  @nullable
  BasicTextField<String> get accountNumber;
  @nullable
  BasicTextField<String> get accountName;
  @nullable
  Bank get bank;

  @JsonKey(ignore: true)
  $BankAccountDetailCopyWith<BankAccountDetail> get copyWith;
}

/// @nodoc
abstract class $BankAccountDetailCopyWith<$Res> {
  factory $BankAccountDetailCopyWith(
          BankAccountDetail value, $Res Function(BankAccountDetail) then) =
      _$BankAccountDetailCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<int> bankId,
      @nullable BasicTextField<String> accountNumber,
      @nullable BasicTextField<String> accountName,
      @nullable Bank bank});

  $BankCopyWith<$Res> get bank;
}

/// @nodoc
class _$BankAccountDetailCopyWithImpl<$Res>
    implements $BankAccountDetailCopyWith<$Res> {
  _$BankAccountDetailCopyWithImpl(this._value, this._then);

  final BankAccountDetail _value;
  // ignore: unused_field
  final $Res Function(BankAccountDetail) _then;

  @override
  $Res call({
    Object id = freezed,
    Object bankId = freezed,
    Object accountNumber = freezed,
    Object accountName = freezed,
    Object bank = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      bankId: bankId == freezed ? _value.bankId : bankId as BasicTextField<int>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber as BasicTextField<String>,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName as BasicTextField<String>,
      bank: bank == freezed ? _value.bank : bank as Bank,
    ));
  }

  @override
  $BankCopyWith<$Res> get bank {
    if (_value.bank == null) {
      return null;
    }
    return $BankCopyWith<$Res>(_value.bank, (value) {
      return _then(_value.copyWith(bank: value));
    });
  }
}

/// @nodoc
abstract class _$BankAccountDetailCopyWith<$Res>
    implements $BankAccountDetailCopyWith<$Res> {
  factory _$BankAccountDetailCopyWith(
          _BankAccountDetail value, $Res Function(_BankAccountDetail) then) =
      __$BankAccountDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<int> bankId,
      @nullable BasicTextField<String> accountNumber,
      @nullable BasicTextField<String> accountName,
      @nullable Bank bank});

  @override
  $BankCopyWith<$Res> get bank;
}

/// @nodoc
class __$BankAccountDetailCopyWithImpl<$Res>
    extends _$BankAccountDetailCopyWithImpl<$Res>
    implements _$BankAccountDetailCopyWith<$Res> {
  __$BankAccountDetailCopyWithImpl(
      _BankAccountDetail _value, $Res Function(_BankAccountDetail) _then)
      : super(_value, (v) => _then(v as _BankAccountDetail));

  @override
  _BankAccountDetail get _value => super._value as _BankAccountDetail;

  @override
  $Res call({
    Object id = freezed,
    Object bankId = freezed,
    Object accountNumber = freezed,
    Object accountName = freezed,
    Object bank = freezed,
  }) {
    return _then(_BankAccountDetail(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      bankId: bankId == freezed ? _value.bankId : bankId as BasicTextField<int>,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber as BasicTextField<String>,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName as BasicTextField<String>,
      bank: bank == freezed ? _value.bank : bank as Bank,
    ));
  }
}

/// @nodoc
class _$_BankAccountDetail extends _BankAccountDetail {
  const _$_BankAccountDetail(
      {@nullable this.id,
      @nullable this.bankId,
      @nullable this.accountNumber,
      @nullable this.accountName,
      @nullable this.bank})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final BasicTextField<int> bankId;
  @override
  @nullable
  final BasicTextField<String> accountNumber;
  @override
  @nullable
  final BasicTextField<String> accountName;
  @override
  @nullable
  final Bank bank;

  @override
  String toString() {
    return 'BankAccountDetail(id: $id, bankId: $bankId, accountNumber: $accountNumber, accountName: $accountName, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BankAccountDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(bankId) ^
      const DeepCollectionEquality().hash(accountNumber) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(bank);

  @JsonKey(ignore: true)
  @override
  _$BankAccountDetailCopyWith<_BankAccountDetail> get copyWith =>
      __$BankAccountDetailCopyWithImpl<_BankAccountDetail>(this, _$identity);
}

abstract class _BankAccountDetail extends BankAccountDetail {
  const _BankAccountDetail._() : super._();
  const factory _BankAccountDetail(
      {@nullable UniqueId<int> id,
      @nullable BasicTextField<int> bankId,
      @nullable BasicTextField<String> accountNumber,
      @nullable BasicTextField<String> accountName,
      @nullable Bank bank}) = _$_BankAccountDetail;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  BasicTextField<int> get bankId;
  @override
  @nullable
  BasicTextField<String> get accountNumber;
  @override
  @nullable
  BasicTextField<String> get accountName;
  @override
  @nullable
  Bank get bank;
  @override
  @JsonKey(ignore: true)
  _$BankAccountDetailCopyWith<_BankAccountDetail> get copyWith;
}
