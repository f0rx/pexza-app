// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank_account_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankAccountData _$_$_BankAccountDataFromJson(Map<String, dynamic> json) {
  return _$_BankAccountData(
    id: json['id'] as int,
    userId: const IntegerSerializer().fromJson(json['user_id']),
    type: json['type'] as String ?? '',
    descriptions: json['descriptions'] as String ?? '',
    details: json['details'] == null
        ? null
        : AccountDetailDTO.fromJson(json['details'] as Map<String, dynamic>),
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_BankAccountDataToJson(_$_BankAccountData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', const IntegerSerializer().toJson(instance.userId));
  writeNotNull('type', instance.type);
  writeNotNull('descriptions', instance.descriptions);
  writeNotNull('details', instance.details?.toJson());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
