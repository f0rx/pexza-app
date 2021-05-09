// GENERATED CODE - DO NOT MODIFY BY HAND

part of maintenance_service_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaintenanceServiceDTO _$_$_MaintenanceServiceDTOFromJson(
    Map<String, dynamic> json) {
  return _$_MaintenanceServiceDTO(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_MaintenanceServiceDTOToJson(
    _$_MaintenanceServiceDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
