part of 'landlord_withdrawal_cubit.dart';

@freezed
abstract class LandlordWithdrawalState with _$LandlordWithdrawalState {
  static const int ACCOUNT_NUMBER_LENMGTH = 10;
  static final FocusNode amountFocus = FocusNode();

  const factory LandlordWithdrawalState({
    @Default(false) bool isLoading,
    @Default(false) bool verified,
    @Default(false) bool validate,
    @nullable BankAccountDetail accountDetail,
    @required BasicTextField<String> amount,
    @required MoneyMaskedTextController amountController,
    @nullable LandlordWallet landlordWallet,
    @Default(KtList.empty()) KtList<Bank> banks,
    @Default(KtList.empty()) KtList<BankAccountDetail> bankAccounts,
    @Default(KtList.empty()) KtList<WithdrawalHistory> histories,
    @Default(const None()) Option<Either<Failure, Response>> response,
  }) = _LandlordWithdrawalState;

  factory LandlordWithdrawalState.initial() => LandlordWithdrawalState(
        accountDetail: BankAccountDetail(accountNumber: BasicTextField('')),
        amount: BasicTextField(''),
        amountController: MoneyMaskedTextController(
          initialValue: 0,
          precision: 0,
          decimalSeparator: '',
          thousandSeparator: ',',
        ),
      );
}
