// GENERATED CODE - DO NOT MODIFY BY HAND

part of card_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardDTO _$_$_CardDTOFromJson(Map<String, dynamic> json) {
  return _$_CardDTO(
    cardNumber: json['card_number'] as String,
    description: json['description'] as String,
    card: json['card'] == null
        ? null
        : CardData.fromJson(json['card'] as Map<String, dynamic>),
    invoice: json['invoice'] == null
        ? null
        : InvoiceDTO.fromJson(json['invoice'] as Map<String, dynamic>),
    paymentDetails: json['payment_details'] == null
        ? null
        : PaymentDetailsDTO.fromJson(
            json['payment_details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CardDTOToJson(_$_CardDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_number', instance.cardNumber);
  writeNotNull('description', instance.description);
  writeNotNull('card', instance.card?.toJson());
  writeNotNull('invoice', instance.invoice?.toJson());
  writeNotNull('payment_details', instance.paymentDetails?.toJson());
  return val;
}
