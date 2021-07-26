// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_withdrawal_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordWithdrawalStateTearOff {
  const _$LandlordWithdrawalStateTearOff();

// ignore: unused_element
  _LandlordWithdrawalState call(
      {bool isLoading = false,
      bool verified = false,
      bool validate = false,
      @nullable BankAccountDetail accountDetail,
      @required BasicTextField<String> amount,
      @required MoneyMaskedTextController amountController,
      @nullable LandlordWallet landlordWallet,
      KtList<Bank> banks = const KtList.empty(),
      KtList<BankAccountDetail> bankAccounts = const KtList.empty(),
      Option<Either<Failure, Response>> response = const None()}) {
    return _LandlordWithdrawalState(
      isLoading: isLoading,
      verified: verified,
      validate: validate,
      accountDetail: accountDetail,
      amount: amount,
      amountController: amountController,
      landlordWallet: landlordWallet,
      banks: banks,
      bankAccounts: bankAccounts,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordWithdrawalState = _$LandlordWithdrawalStateTearOff();

/// @nodoc
mixin _$LandlordWithdrawalState {
  bool get isLoading;
  bool get verified;
  bool get validate;
  @nullable
  BankAccountDetail get accountDetail;
  BasicTextField<String> get amount;
  MoneyMaskedTextController get amountController;
  @nullable
  LandlordWallet get landlordWallet;
  KtList<Bank> get banks;
  KtList<BankAccountDetail> get bankAccounts;
  Option<Either<Failure, Response>> get response;

  @JsonKey(ignore: true)
  $LandlordWithdrawalStateCopyWith<LandlordWithdrawalState> get copyWith;
}

/// @nodoc
abstract class $LandlordWithdrawalStateCopyWith<$Res> {
  factory $LandlordWithdrawalStateCopyWith(LandlordWithdrawalState value,
          $Res Function(LandlordWithdrawalState) then) =
      _$LandlordWithdrawalStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool verified,
      bool validate,
      @nullable BankAccountDetail accountDetail,
      BasicTextField<String> amount,
      MoneyMaskedTextController amountController,
      @nullable LandlordWallet landlordWallet,
      KtList<Bank> banks,
      KtList<BankAccountDetail> bankAccounts,
      Option<Either<Failure, Response>> response});

  $BankAccountDetailCopyWith<$Res> get accountDetail;
  $LandlordWalletCopyWith<$Res> get landlordWallet;
}

/// @nodoc
class _$LandlordWithdrawalStateCopyWithImpl<$Res>
    implements $LandlordWithdrawalStateCopyWith<$Res> {
  _$LandlordWithdrawalStateCopyWithImpl(this._value, this._then);

  final LandlordWithdrawalState _value;
  // ignore: unused_field
  final $Res Function(LandlordWithdrawalState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object verified = freezed,
    Object validate = freezed,
    Object accountDetail = freezed,
    Object amount = freezed,
    Object amountController = freezed,
    Object landlordWallet = freezed,
    Object banks = freezed,
    Object bankAccounts = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      verified: verified == freezed ? _value.verified : verified as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      accountDetail: accountDetail == freezed
          ? _value.accountDetail
          : accountDetail as BankAccountDetail,
      amount:
          amount == freezed ? _value.amount : amount as BasicTextField<String>,
      amountController: amountController == freezed
          ? _value.amountController
          : amountController as MoneyMaskedTextController,
      landlordWallet: landlordWallet == freezed
          ? _value.landlordWallet
          : landlordWallet as LandlordWallet,
      banks: banks == freezed ? _value.banks : banks as KtList<Bank>,
      bankAccounts: bankAccounts == freezed
          ? _value.bankAccounts
          : bankAccounts as KtList<BankAccountDetail>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }

  @override
  $BankAccountDetailCopyWith<$Res> get accountDetail {
    if (_value.accountDetail == null) {
      return null;
    }
    return $BankAccountDetailCopyWith<$Res>(_value.accountDetail, (value) {
      return _then(_value.copyWith(accountDetail: value));
    });
  }

  @override
  $LandlordWalletCopyWith<$Res> get landlordWallet {
    if (_value.landlordWallet == null) {
      return null;
    }
    return $LandlordWalletCopyWith<$Res>(_value.landlordWallet, (value) {
      return _then(_value.copyWith(landlordWallet: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordWithdrawalStateCopyWith<$Res>
    implements $LandlordWithdrawalStateCopyWith<$Res> {
  factory _$LandlordWithdrawalStateCopyWith(_LandlordWithdrawalState value,
          $Res Function(_LandlordWithdrawalState) then) =
      __$LandlordWithdrawalStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool verified,
      bool validate,
      @nullable BankAccountDetail accountDetail,
      BasicTextField<String> amount,
      MoneyMaskedTextController amountController,
      @nullable LandlordWallet landlordWallet,
      KtList<Bank> banks,
      KtList<BankAccountDetail> bankAccounts,
      Option<Either<Failure, Response>> response});

  @override
  $BankAccountDetailCopyWith<$Res> get accountDetail;
  @override
  $LandlordWalletCopyWith<$Res> get landlordWallet;
}

/// @nodoc
class __$LandlordWithdrawalStateCopyWithImpl<$Res>
    extends _$LandlordWithdrawalStateCopyWithImpl<$Res>
    implements _$LandlordWithdrawalStateCopyWith<$Res> {
  __$LandlordWithdrawalStateCopyWithImpl(_LandlordWithdrawalState _value,
      $Res Function(_LandlordWithdrawalState) _then)
      : super(_value, (v) => _then(v as _LandlordWithdrawalState));

  @override
  _LandlordWithdrawalState get _value =>
      super._value as _LandlordWithdrawalState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object verified = freezed,
    Object validate = freezed,
    Object accountDetail = freezed,
    Object amount = freezed,
    Object amountController = freezed,
    Object landlordWallet = freezed,
    Object banks = freezed,
    Object bankAccounts = freezed,
    Object response = freezed,
  }) {
    return _then(_LandlordWithdrawalState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      verified: verified == freezed ? _value.verified : verified as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      accountDetail: accountDetail == freezed
          ? _value.accountDetail
          : accountDetail as BankAccountDetail,
      amount:
          amount == freezed ? _value.amount : amount as BasicTextField<String>,
      amountController: amountController == freezed
          ? _value.amountController
          : amountController as MoneyMaskedTextController,
      landlordWallet: landlordWallet == freezed
          ? _value.landlordWallet
          : landlordWallet as LandlordWallet,
      banks: banks == freezed ? _value.banks : banks as KtList<Bank>,
      bankAccounts: bankAccounts == freezed
          ? _value.bankAccounts
          : bankAccounts as KtList<BankAccountDetail>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }
}

/// @nodoc
class _$_LandlordWithdrawalState implements _LandlordWithdrawalState {
  const _$_LandlordWithdrawalState(
      {this.isLoading = false,
      this.verified = false,
      this.validate = false,
      @nullable this.accountDetail,
      @required this.amount,
      @required this.amountController,
      @nullable this.landlordWallet,
      this.banks = const KtList.empty(),
      this.bankAccounts = const KtList.empty(),
      this.response = const None()})
      : assert(isLoading != null),
        assert(verified != null),
        assert(validate != null),
        assert(amount != null),
        assert(amountController != null),
        assert(banks != null),
        assert(bankAccounts != null),
        assert(response != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool verified;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  @nullable
  final BankAccountDetail accountDetail;
  @override
  final BasicTextField<String> amount;
  @override
  final MoneyMaskedTextController amountController;
  @override
  @nullable
  final LandlordWallet landlordWallet;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Bank> banks;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<BankAccountDetail> bankAccounts;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Response>> response;

  @override
  String toString() {
    return 'LandlordWithdrawalState(isLoading: $isLoading, verified: $verified, validate: $validate, accountDetail: $accountDetail, amount: $amount, amountController: $amountController, landlordWallet: $landlordWallet, banks: $banks, bankAccounts: $bankAccounts, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordWithdrawalState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.accountDetail, accountDetail) ||
                const DeepCollectionEquality()
                    .equals(other.accountDetail, accountDetail)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.amountController, amountController) ||
                const DeepCollectionEquality()
                    .equals(other.amountController, amountController)) &&
            (identical(other.landlordWallet, landlordWallet) ||
                const DeepCollectionEquality()
                    .equals(other.landlordWallet, landlordWallet)) &&
            (identical(other.banks, banks) ||
                const DeepCollectionEquality().equals(other.banks, banks)) &&
            (identical(other.bankAccounts, bankAccounts) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccounts, bankAccounts)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(verified) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(accountDetail) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(amountController) ^
      const DeepCollectionEquality().hash(landlordWallet) ^
      const DeepCollectionEquality().hash(banks) ^
      const DeepCollectionEquality().hash(bankAccounts) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$LandlordWithdrawalStateCopyWith<_LandlordWithdrawalState> get copyWith =>
      __$LandlordWithdrawalStateCopyWithImpl<_LandlordWithdrawalState>(
          this, _$identity);
}

abstract class _LandlordWithdrawalState implements LandlordWithdrawalState {
  const factory _LandlordWithdrawalState(
      {bool isLoading,
      bool verified,
      bool validate,
      @nullable BankAccountDetail accountDetail,
      @required BasicTextField<String> amount,
      @required MoneyMaskedTextController amountController,
      @nullable LandlordWallet landlordWallet,
      KtList<Bank> banks,
      KtList<BankAccountDetail> bankAccounts,
      Option<Either<Failure, Response>> response}) = _$_LandlordWithdrawalState;

  @override
  bool get isLoading;
  @override
  bool get verified;
  @override
  bool get validate;
  @override
  @nullable
  BankAccountDetail get accountDetail;
  @override
  BasicTextField<String> get amount;
  @override
  MoneyMaskedTextController get amountController;
  @override
  @nullable
  LandlordWallet get landlordWallet;
  @override
  KtList<Bank> get banks;
  @override
  KtList<BankAccountDetail> get bankAccounts;
  @override
  Option<Either<Failure, Response>> get response;
  @override
  @JsonKey(ignore: true)
  _$LandlordWithdrawalStateCopyWith<_LandlordWithdrawalState> get copyWith;
}
