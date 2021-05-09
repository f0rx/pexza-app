// GENERATED CODE - DO NOT MODIFY BY HAND

part of base_apartment_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseApartmentDTO _$_$_BaseApartmentDTOFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['property_id']);
  return _$_BaseApartmentDTO(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    status: json['status'] as String ?? '',
    propertyId: const IntegerSerializer().fromJson(json['property_id']),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_BaseApartmentDTOToJson(_$_BaseApartmentDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('status', instance.status);
  writeNotNull(
      'property_id', const IntegerSerializer().toJson(instance.propertyId));
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
