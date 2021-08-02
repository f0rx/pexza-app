// GENERATED CODE - DO NOT MODIFY BY HAND

part of rent_payment_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RentPaymentHistoryDTO _$_$_RentPaymentHistoryDTOFromJson(
    Map<String, dynamic> json) {
  return _$_RentPaymentHistoryDTO(
    id: const IntegerSerializer().fromJson(json['id']),
    userId: const IntegerSerializer().fromJson(json['user_id']),
    duration: const IntegerSerializer().fromJson(json['duration']),
    currency: const IntegerSerializer().fromJson(json['currency']),
    totalAmount: const DoubleSerializer().fromJson(json['amount']),
    amount: const IntegerSerializer().fromJson(json['base_amount']),
    charges: const DoubleSerializer().fromJson(json['charges']),
    assignmentId: const IntegerSerializer().fromJson(json['assignment_id']),
    invoiceId: const IntegerSerializer().fromJson(json['invoice_id']),
    chargeableId: const IntegerSerializer().fromJson(json['chargeable_id']),
    invoiceNumber: json['invoice_no'] as String ?? '',
    invoice: json['invoice'] == null
        ? null
        : InvoiceDTO.fromJson(json['invoice'] as Map<String, dynamic>),
    effeciveFrom:
        const TimestampConverter().fromJson(json['effective_from'] as String),
    expiresAt: const TimestampConverter().fromJson(json['expire_at'] as String),
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_RentPaymentHistoryDTOToJson(
    _$_RentPaymentHistoryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const IntegerSerializer().toJson(instance.id));
  writeNotNull('user_id', const IntegerSerializer().toJson(instance.userId));
  writeNotNull('duration', const IntegerSerializer().toJson(instance.duration));
  writeNotNull('currency', const IntegerSerializer().toJson(instance.currency));
  writeNotNull('amount', const DoubleSerializer().toJson(instance.totalAmount));
  writeNotNull(
      'base_amount', const IntegerSerializer().toJson(instance.amount));
  writeNotNull('charges', const DoubleSerializer().toJson(instance.charges));
  writeNotNull(
      'assignment_id', const IntegerSerializer().toJson(instance.assignmentId));
  writeNotNull(
      'invoice_id', const IntegerSerializer().toJson(instance.invoiceId));
  writeNotNull(
      'chargeable_id', const IntegerSerializer().toJson(instance.chargeableId));
  writeNotNull('invoice_no', instance.invoiceNumber);
  writeNotNull('invoice', instance.invoice?.toJson());
  writeNotNull('effective_from',
      const TimestampConverter().toJson(instance.effeciveFrom));
  writeNotNull(
      'expire_at', const TimestampConverter().toJson(instance.expiresAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
