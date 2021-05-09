// GENERATED CODE - DO NOT MODIFY BY HAND

part of maintenance_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaintenanceDTO _$_$_MaintenanceDTOFromJson(Map<String, dynamic> json) {
  return _$_MaintenanceDTO(
    data: json['data'] == null
        ? null
        : MaintenanceDTOData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_MaintenanceDTOToJson(_$_MaintenanceDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
