// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord_property_data;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordPropertyData _$_$_LandlordPropertyDataFromJson(
    Map<String, dynamic> json) {
  return _$_LandlordPropertyData(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    propertyType: json['property_type'] as String ?? '',
    houseType: json['house_type'] as String ?? '',
    street: json['street'] as String ?? '',
    town: json['town'] as String ?? '',
    state: json['state'] as String ?? '',
    country: json['country'] as String ?? '',
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
    numberOfTenants: json['number_of_tenants'] as int ?? 0,
  );
}

Map<String, dynamic> _$_$_LandlordPropertyDataToJson(
    _$_LandlordPropertyData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('property_type', instance.propertyType);
  writeNotNull('house_type', instance.houseType);
  writeNotNull('street', instance.street);
  writeNotNull('town', instance.town);
  writeNotNull('state', instance.state);
  writeNotNull('country', instance.country);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  writeNotNull('number_of_tenants', instance.numberOfTenants);
  return val;
}
