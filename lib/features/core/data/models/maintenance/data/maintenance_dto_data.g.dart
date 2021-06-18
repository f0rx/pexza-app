// GENERATED CODE - DO NOT MODIFY BY HAND

part of maintenance_dto_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MaintenanceDTOData _$_$_MaintenanceDTODataFromJson(
    Map<String, dynamic> json) {
  return _$_MaintenanceDTOData(
    id: json['id'] as int,
    comment: json['comment'] as String ?? '',
    service: json['service'] == null
        ? null
        : MaintenanceServiceDTO.fromJson(
            json['service'] as Map<String, dynamic>),
    serviceId: json['service_id'] as int,
    assignmentId: json['assignment_id'] as int,
    urgency: const IntegerSerializer().fromJson(json['urgency']),
    status: json['status'] as String,
    assignment: json['assignment'] == null
        ? null
        : AssignmentDTOData.fromJson(
            json['assignment'] as Map<String, dynamic>),
    fixedAt: json['fixed_at'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_MaintenanceDTODataToJson(
    _$_MaintenanceDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('comment', instance.comment);
  writeNotNull('service', instance.service?.toJson());
  writeNotNull('service_id', instance.serviceId);
  writeNotNull('assignment_id', instance.assignmentId);
  writeNotNull('urgency', const IntegerSerializer().toJson(instance.urgency));
  writeNotNull('status', instance.status);
  writeNotNull('assignment', instance.assignment?.toJson());
  writeNotNull('fixed_at', instance.fixedAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
