part of 'transaction_history_cubit.dart';

@freezed
abstract class TransactionHistoryState implements _$TransactionHistoryState {
  const TransactionHistoryState._();

  const factory TransactionHistoryState({
    @Default(false) bool isLoadingWithdrawalHistory,
    @Default(false) bool isLoadingProperties,
    @Default(false) bool isLoadingRentHistory,
    @Default(false) bool validate,
    @nullable LandlordProperty currentProperty,
    @Default(KtList.empty()) KtList<WithdrawalHistory> withdrawalHistory,
    @Default(KtList.empty()) KtList<PropertyRentHistory> propertyRentHistory,
    @Default(KtList.empty()) KtList<LandlordProperty> properties,
    @Default(const None()) Option<Either<Failure, Response>> response,
  }) = _TransactionHistoryState;

  factory TransactionHistoryState.initial() => TransactionHistoryState();
}
