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
    assignmentId: json['assignment_id'] as int,
    amount: json['amount'] as int,
    duration: json['duration'] as int,
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
  writeNotNull('assignment_id', instance.assignmentId);
  writeNotNull('amount', instance.amount);
  writeNotNull('duration', instance.duration);
  writeNotNull('status', instance.status);
  writeNotNull('invoice_no', instance.invoiceNumber);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
