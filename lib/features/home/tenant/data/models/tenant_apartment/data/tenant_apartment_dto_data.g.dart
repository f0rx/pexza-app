// GENERATED CODE - DO NOT MODIFY BY HAND

part of tenant_apartment_dto_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TenantApartmentData _$_$_TenantApartmentDataFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['property']);
  return _$_TenantApartmentData(
    id: json['id'] as int,
    name: json['name'] as String ?? '',
    status: json['status'] as String ?? '',
    property: json['property'] == null
        ? null
        : LandlordPropertyData.fromJson(
            json['property'] as Map<String, dynamic>),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_TenantApartmentDataToJson(
    _$_TenantApartmentData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('status', instance.status);
  writeNotNull('property', instance.property?.toJson());
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
