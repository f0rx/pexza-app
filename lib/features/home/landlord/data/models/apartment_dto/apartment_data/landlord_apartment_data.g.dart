// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord_apartment_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordApartmentData _$_$_LandlordApartmentDataFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['property_id', 'property']);
  return _$_LandlordApartmentData(
    id: json['id'] as int,
    name: json['name'] as String ?? '',
    status: json['status'] as String ?? '',
    propertyId: const IntegerSerializer().fromJson(json['property_id']),
    property: json['property'] == null
        ? null
        : LandlordPropertyData.fromJson(
            json['property'] as Map<String, dynamic>),
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_LandlordApartmentDataToJson(
    _$_LandlordApartmentData instance) {
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
  writeNotNull('property', instance.property?.toJson());
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
