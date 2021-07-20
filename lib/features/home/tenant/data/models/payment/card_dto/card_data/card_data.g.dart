// GENERATED CODE - DO NOT MODIFY BY HAND

part of card_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardData _$_$_CardDataFromJson(Map<String, dynamic> json) {
  return _$_CardData(
    id: json['id'] as int,
    userId: const IntegerSerializer().fromJson(json['user_id']),
    type: json['type'] as String ?? '',
    details: json['details'] == null
        ? null
        : PaymentMetaDTO.fromJson(json['details'] as Map<String, dynamic>),
    verified: const IntToBoolSerializer().fromJson(json['verified']),
    primary: const IntToBoolSerializer().fromJson(json['is_primary']),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_CardDataToJson(_$_CardData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', const IntegerSerializer().toJson(instance.userId));
  writeNotNull('type', instance.type);
  writeNotNull('details', instance.details?.toJson());
  writeNotNull(
      'verified', const IntToBoolSerializer().toJson(instance.verified));
  writeNotNull(
      'is_primary', const IntToBoolSerializer().toJson(instance.primary));
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
