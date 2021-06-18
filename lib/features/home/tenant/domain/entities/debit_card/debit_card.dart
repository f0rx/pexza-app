library debit_card.dart;

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/home/tenant/domain/domain.dart';

part 'debit_card.freezed.dart';

@freezed
@immutable
abstract class DebitCard implements _$DebitCard {
  @protected
  const DebitCard._();

  const factory DebitCard({
    /// Stored card Id
    @nullable UniqueId<int> id,

    /// Full Name on Card
    @nullable DebitCardName cardName,

    /// 16 digits number on card
    @nullable DebitCardNumber cardNumber,

    /// Card Expiry date
    @nullable DebitCardExpiryDate cardExpiryDate,

    /// Card Verification Value (CVV)
    @nullable DebitCardCVV cvv,

    /// Card Pin
    @nullable DebitCardPinField cardPin,

    /// Card Metadata
    @nullable InvoiceMeta meta,

    /// If card has been verified
    @nullable bool verified,

    /// User that owns this card
    @nullable UniqueId<int> userId,

    /// Invoice data
    @nullable Invoice invoice,

    /// Card Type [Mastercars, Visa...]
    @nullable CardBrand brand,

    /// Sub-brand
    @nullable BasicTextField<String> subBrand,

    /// Country code where card was issued
    @nullable BasicTextField<String> countryCode,

    /// Country Name where card was issued
    @nullable BasicTextField<String> countryName,

    /// Card Type [Debit, Credit]
    @nullable CardType cardType,

    /// Bank Name that issued this card
    @nullable BasicTextField<String> bank,

    /// Bank ID (Used by paystack)
    @nullable BasicTextField<int> bankId,

    /// Date model was created
    @nullable DateTime createdAt,

    /// Date model was updated
    @nullable DateTime updatedAt,

    /// Date model was deleted
    @nullable DateTime deletedAt,
  }) = _DebitCard;

  Option<FieldObjectException<dynamic>> get failures {
    assert(
      cardNumber != null &&
          cardName != null &&
          cardExpiryDate != null &&
          cvv != null,
      // cardPin != null,
    );

    return cardNumber.mapped
        .andThen(cardName.mapped)
        .andThen(cardExpiryDate.mapped)
        .andThen(cvv.mapped)
        .fold(
          (f) => some(f),
          (_) => none(),
        );
  }

  DebitCard merge(DebitCard other) {
    if (other == null) return this;

    return copyWith(
      verified: verified ?? other?.verified,
      userId: userId ?? other?.userId,
      cardNumber: cardNumber ?? other?.cardNumber,
      meta: meta?.copyWith(
            cardNumber: meta?.cardNumber ?? other?.meta?.cardNumber,
            chargeableId: meta?.chargeableId ?? other?.meta?.chargeableId,
            invoiceNo: meta?.invoiceNo ?? other?.meta?.invoiceNo,
            description: meta?.description ?? other?.meta?.description,
            isSamplePayment:
                meta?.isSamplePayment ?? other?.meta?.isSamplePayment,
          ) ??
          other?.meta,
      invoice: invoice ?? other?.invoice,
      brand: brand ?? other?.brand,
      subBrand: subBrand ?? other?.subBrand,
      countryCode: countryCode ?? other?.countryCode,
      countryName: countryName ?? other?.countryName,
      cardType: cardType ?? other?.cardType,
      bank: bank ?? other?.bank,
      bankId: bankId ?? other?.bankId,
    );
  }
}
