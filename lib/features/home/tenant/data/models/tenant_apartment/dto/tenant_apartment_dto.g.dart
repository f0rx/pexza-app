// GENERATED CODE - DO NOT MODIFY BY HAND

part of tenant_apartment_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TenantApartmentDTO _$_$_TenantApartmentDTOFromJson(
    Map<String, dynamic> json) {
  return _$_TenantApartmentDTO(
    data: json['data'] == null
        ? null
        : TenantApartmentData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TenantApartmentDTOToJson(
    _$_TenantApartmentDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
