// GENERATED CODE - DO NOT MODIFY BY HAND

part of countries__list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountriesList _$_$_CountriesListFromJson(Map<String, dynamic> json) {
  return _$_CountriesList(
    id: json['id'] as int,
    name: json['name'] as String,
    countryPhoneCode: json['country_phone_code'] as String,
    isSupported:
        const IntToBoolSerializer().fromJson(json['is_supported']) ?? true,
    currency: json['currency'] as String,
    currencyName: json['currency_name'] as String,
    states: (json['states'] as List)
        ?.map((e) =>
            e == null ? null : StateDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_CountriesListToJson(_$_CountriesList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('country_phone_code', instance.countryPhoneCode);
  writeNotNull(
      'is_supported', const IntToBoolSerializer().toJson(instance.isSupported));
  writeNotNull('currency', instance.currency);
  writeNotNull('currency_name', instance.currencyName);
  writeNotNull('states', instance.states?.map((e) => e?.toJson())?.toList());
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
