// GENERATED CODE - DO NOT MODIFY BY HAND

part of withdrawal_history_dto_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WithdrawalHistoryDTOData _$_$_WithdrawalHistoryDTODataFromJson(
    Map<String, dynamic> json) {
  return _$_WithdrawalHistoryDTOData(
    id: const IntegerSerializer().fromJson(json['id']),
    userId: const IntegerSerializer().fromJson(json['user_id']),
    totalCharges: const DoubleSerializer().fromJson(json['amount']),
    amount: const IntegerSerializer().fromJson(json['base_amount']),
    charges: const DoubleSerializer().fromJson(json['charges']),
    status:
        const WithdrawalStatusConverter().fromJson(json['status'] as String),
    payableId: const IntegerSerializer().fromJson(json['payable_id']),
    reference: json['reference'] as String,
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_WithdrawalHistoryDTODataToJson(
    _$_WithdrawalHistoryDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const IntegerSerializer().toJson(instance.id));
  writeNotNull('user_id', const IntegerSerializer().toJson(instance.userId));
  writeNotNull(
      'amount', const DoubleSerializer().toJson(instance.totalCharges));
  writeNotNull(
      'base_amount', const IntegerSerializer().toJson(instance.amount));
  writeNotNull('charges', const DoubleSerializer().toJson(instance.charges));
  writeNotNull(
      'status', const WithdrawalStatusConverter().toJson(instance.status));
  writeNotNull(
      'payable_id', const IntegerSerializer().toJson(instance.payableId));
  writeNotNull('reference', instance.reference);
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
