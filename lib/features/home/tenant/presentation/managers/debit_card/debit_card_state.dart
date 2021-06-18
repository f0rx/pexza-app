part of 'debit_card_cubit.dart';

@freezed
abstract class DebitCardState implements _$DebitCardState {
  const DebitCardState._();

  const factory DebitCardState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required DebitCardName cardName,
    @required DebitCardNumber cardNumber,
    @required DebitCardExpiryDate expiryDate,
    @required DebitCardCVV cardCVV,
    @required DebitCardPinField pin,
    @required BasicTextField<String> description,
    @nullable DebitCard currentDebitCard,
    @Default(KtList.empty()) KtList<DebitCard> debitCards,
    @Default(const None()) Option<Either<Failure, Response>> response,
  }) = _DebitCardState;

  factory DebitCardState.initial() => DebitCardState(
        cardName: DebitCardName(''),
        cardNumber: DebitCardNumber(''),
        expiryDate: DebitCardExpiryDate(''),
        cardCVV: DebitCardCVV(''),
        pin: DebitCardPinField(''),
        description: BasicTextField('This is my Primary card.'),
      );
}
