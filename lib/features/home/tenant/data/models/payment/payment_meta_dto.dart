library card_details_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'payment_meta_dto.g.dart';
part 'payment_meta_dto.freezed.dart';

@freezed
@immutable
abstract class PaymentMetaDTO implements _$PaymentMetaDTO {
  const PaymentMetaDTO._();

  const factory PaymentMetaDTO({
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
        String cardNumber,
    @nullable
    @JsonKey(includeIfNull: false, name: 'chargeable_id')
        int chargeableId,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
        String invoiceNumber,
    @nullable
    @JsonKey(
      includeIfNull: false,
      defaultValue: false,
      name: 'is_sample_payment',
    )
    @IntToBoolSerializer()
        bool isSamplePayment,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String description,
  }) = _PaymentMetaDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PaymentMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentMetaDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_PaymentMetaDTOToJson(this);

  /// Maps the Domain instance to a Data Transfer Object.
  factory PaymentMetaDTO.fromDomain(InvoiceMeta instance) => PaymentMetaDTO(
        cardNumber: instance.cardNumber?.getOrNull,
        chargeableId: instance.chargeableId?.value,
        description: instance.description?.getOrNull,
      );

  /// Maps the Data Transfer Object to a Domain instance.
  InvoiceMeta get domain => InvoiceMeta(
        cardNumber: !cardNumber.isNull ? DebitCardNumber(cardNumber) : null,
        chargeableId:
            !chargeableId.isNull ? UniqueId.fromExternal(chargeableId) : null,
        isSamplePayment: isSamplePayment,
        description: !description.isNull ? BasicTextField(description) : null,
        invoiceNo:
            !invoiceNumber.isNull ? UniqueId.fromExternal(invoiceNumber) : null,
      );
}
