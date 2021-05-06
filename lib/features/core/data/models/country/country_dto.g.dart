// GENERATED CODE - DO NOT MODIFY BY HAND

part of country_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryDTO _$_$_CountryDTOFromJson(Map<String, dynamic> json) {
  return _$_CountryDTO(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    phoneCode: json['country_phone_code'] as String ?? '',
    isSupported: json['is_supported'] as bool ?? false,
    currency: json['currency'] as String ?? '',
    currencyName: json['currency_name'] as String ?? '',
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_CountryDTOToJson(_$_CountryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('country_phone_code', instance.phoneCode);
  writeNotNull('is_supported', instance.isSupported);
  writeNotNull('currency', instance.currency);
  writeNotNull('currency_name', instance.currencyName);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
