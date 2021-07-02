part of 'landlord_withdrawal_cubit.dart';

@freezed
abstract class LandlordWithdrawalState with _$LandlordWithdrawalState {
  static const int ACCOUNT_NUMBER_LENMGTH = 10;

  const factory LandlordWithdrawalState({
    @Default(false) bool isLoading,
    @Default(false) bool verified,
    @Default(false) bool validate,
    @nullable BankAccountDetail accountDetail,
    @Default(KtList.empty()) KtList<Bank> banks,
    @Default(const None()) Option<Either<Failure, Response>> response,
  }) = _LandlordWithdrawalState;

  factory LandlordWithdrawalState.initial() => LandlordWithdrawalState(
        accountDetail: BankAccountDetail(accountNumber: BasicTextField('')),
      );
}
