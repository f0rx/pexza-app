// GENERATED CODE - DO NOT MODIFY BY HAND

part of card_details_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMetaDTO _$_$_PaymentMetaDTOFromJson(Map<String, dynamic> json) {
  return _$_PaymentMetaDTO(
    cardNumber: json['card_number'] as String ?? '',
    chargeableId: json['chargeable_id'] as int,
    invoiceNumber: json['invoice_no'] as String ?? '',
    isSamplePayment:
        const IntToBoolSerializer().fromJson(json['is_sample_payment']) ??
            false,
    description: json['description'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_PaymentMetaDTOToJson(_$_PaymentMetaDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_number', instance.cardNumber);
  writeNotNull('chargeable_id', instance.chargeableId);
  writeNotNull('invoice_no', instance.invoiceNumber);
  writeNotNull('is_sample_payment',
      const IntToBoolSerializer().toJson(instance.isSamplePayment));
  writeNotNull('description', instance.description);
  return val;
}
