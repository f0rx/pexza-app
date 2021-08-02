// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank_data_model.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankDataModel _$_$_BankDataModelFromJson(Map<String, dynamic> json) {
  return _$_BankDataModel(
    id: json['id'] as int,
    name: json['name'] as String ?? '',
    code: json['code'] as String ?? '',
    countryCode: json['country'] as String ?? '',
    countryName: json['country_full_name'] as String ?? '',
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_BankDataModelToJson(_$_BankDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('code', instance.code);
  writeNotNull('country', instance.countryCode);
  writeNotNull('country_full_name', instance.countryName);
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
