library card_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'card_dto.g.dart';
part 'card_dto.freezed.dart';

@freezed
@immutable
abstract class CardDTO implements _$CardDTO {
  const CardDTO._();

  const factory CardDTO({
    @nullable
    @JsonKey(includeIfNull: false, name: 'card_number')
        String cardNumber,
    @nullable @JsonKey(includeIfNull: false) String description,
    //
    @nullable @JsonKey(includeIfNull: false) CardData card,
    @nullable @JsonKey(includeIfNull: false) InvoiceDTO invoice,
    @nullable
    @JsonKey(includeIfNull: false, name: 'payment_details')
        PaymentDetailsDTO paymentDetails,
  }) = _CardDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory CardDTO.fromJson(Map<String, dynamic> json) =>
      _$CardDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_CardDTOToJson(this);

  /// Maps the Domain instance to a Data Transfer Object.
  factory CardDTO.fromDomain(DebitCard instance) => CardDTO(
        cardNumber: instance?.cardNumber?.getOrNull,
        description: instance?.meta?.description?.getOrNull,
      );

  /// Maps the Data Transfer Object to a Domain instance.
  DebitCard get domain => card?.domain?.copyWith(
        invoice: invoice?.domain?.copyWith(
          email: !paymentDetails.isNull && !paymentDetails.email.isNull
              ? EmailAddress(paymentDetails.email)
              : null,
          amount: !paymentDetails.isNull && !paymentDetails.amount.isNull
              ? AmountField(paymentDetails.amount)
              : null,
          invoiceNo: paymentDetails?.meta?.domain?.invoiceNo ??
              invoice?.domain?.invoiceNo,
        ),
        meta: card?.domain?.meta?.copyWith(
          isSamplePayment: invoice?.meta?.domain?.isSamplePayment,
          chargeableId: invoice?.meta?.domain?.chargeableId,
          description: card?.details?.description != null
              ? BasicTextField(card?.details?.description)
              : null,
        ),
      );
}
