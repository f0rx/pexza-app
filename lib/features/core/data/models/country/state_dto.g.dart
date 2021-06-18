// GENERATED CODE - DO NOT MODIFY BY HAND

part of state_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateDTO _$_$_StateDTOFromJson(Map<String, dynamic> json) {
  return _$_StateDTO(
    id: json['id'] as int,
    name: json['name'] as String ?? '',
    isSupported:
        const IntToBoolSerializer().fromJson(json['is_supported']) ?? true,
    countryId: const IntegerSerializer().fromJson(json['country_id']),
    country: json['country'] == null
        ? null
        : CountryDTO.fromJson(json['country'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_StateDTOToJson(_$_StateDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull(
      'is_supported', const IntToBoolSerializer().toJson(instance.isSupported));
  writeNotNull(
      'country_id', const IntegerSerializer().toJson(instance.countryId));
  writeNotNull('country', instance.country?.toJson());
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
