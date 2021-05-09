// GENERATED CODE - DO NOT MODIFY BY HAND

part of assignment_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssignmentDTO _$_$_AssignmentDTOFromJson(Map<String, dynamic> json) {
  return _$_AssignmentDTO(
    data: json['data'] == null
        ? null
        : AssignmentDTOData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AssignmentDTOToJson(_$_AssignmentDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
