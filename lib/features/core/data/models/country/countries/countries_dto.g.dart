// GENERATED CODE - DO NOT MODIFY BY HAND

part of countries_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountriesDTO _$_$_CountriesDTOFromJson(Map<String, dynamic> json) {
  return _$_CountriesDTO(
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : CountriesList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['created_at'] as String,
    json['updated_at'] as String,
    json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_CountriesDTOToJson(_$_CountriesDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
