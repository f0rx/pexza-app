part of 'payment_cubit.dart';

@freezed
abstract class PaymentState implements _$PaymentState {
  const PaymentState._();

  const factory PaymentState({
    @Default(false) bool isLoading,
    @nullable DebitCard chargeableCard,
    @Default(false) bool hideEmail,
    @Default(false) bool hideAmount,
    @Default(false) bool fullScreen,
    //
    @nullable String reference,
    @Default(false) bool status,
    @Default(false) bool verify,
    @Default(PexzaLogo(padding: EdgeInsets.all(8.0))) Widget logo,
    //
    Either<Failure, Response> response,
  }) = _PaymentState;

  factory PaymentState.initial() => PaymentState();
}
