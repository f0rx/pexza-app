// GENERATED CODE - DO NOT MODIFY BY HAND

part of state_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StateDTO _$_$_StateDTOFromJson(Map<String, dynamic> json) {
  return _$_StateDTO(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    phoneCode: json['country_id'] as String ?? '',
    isSupported: json['is_supported'] as bool ?? false,
    country: json['country'] == null
        ? null
        : CountryDTO.fromJson(json['country'] as Map<String, dynamic>) ?? '',
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
  writeNotNull('country_id', instance.phoneCode);
  writeNotNull('is_supported', instance.isSupported);
  writeNotNull('country', instance.country?.toJson());
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
