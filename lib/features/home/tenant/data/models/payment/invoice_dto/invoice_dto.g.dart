// GENERATED CODE - DO NOT MODIFY BY HAND

part of invoice_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceDTO _$_$_InvoiceDTOFromJson(Map<String, dynamic> json) {
  return _$_InvoiceDTO(
    id: json['id'] as int,
    meta: json['meta'] == null
        ? null
        : PaymentMetaDTO.fromJson(json['meta'] as Map<String, dynamic>),
    assignmentId: const IntegerSerializer().fromJson(json['assignment_id']),
    amount: const NumSerializer().fromJson(json['amount']),
    baseAmount: const IntegerSerializer().fromJson(json['base_amount']),
    charges: const DoubleSerializer().fromJson(json['charges']),
    duration: const IntegerSerializer().fromJson(json['duration']),
    status: json['status'] as String ?? '',
    invoiceNumber: json['invoice_no'] as String ?? '',
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_InvoiceDTOToJson(_$_InvoiceDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull(
      'assignment_id', const IntegerSerializer().toJson(instance.assignmentId));
  writeNotNull('amount', const NumSerializer().toJson(instance.amount));
  writeNotNull(
      'base_amount', const IntegerSerializer().toJson(instance.baseAmount));
  writeNotNull('charges', const DoubleSerializer().toJson(instance.charges));
  writeNotNull('duration', const IntegerSerializer().toJson(instance.duration));
  writeNotNull('status', instance.status);
  writeNotNull('invoice_no', instance.invoiceNumber);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
