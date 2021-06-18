// GENERATED CODE - DO NOT MODIFY BY HAND

part of payment_details_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDetailsDTO _$_$_PaymentDetailsDTOFromJson(Map<String, dynamic> json) {
  return _$_PaymentDetailsDTO(
    amount: json['amount'] as int,
    meta: json['metadata'] == null
        ? null
        : PaymentMetaDTO.fromJson(json['metadata'] as Map<String, dynamic>),
    email: json['email'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_PaymentDetailsDTOToJson(
    _$_PaymentDetailsDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('metadata', instance.meta?.toJson());
  writeNotNull('email', instance.email);
  return val;
}
