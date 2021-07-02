part of 'landlord_wallet_cubit.dart';

@freezed
abstract class LandlordWalletState with _$LandlordWalletState {
  const LandlordWalletState._();

  const factory LandlordWalletState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required AmountField amount,
    @Default(const None()) Option<Either<Failure, Response>> response,
  }) = _LandlordWalletState;

  factory LandlordWalletState.initial() => LandlordWalletState(
        amount: AmountField(0),
      );
}
