// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord_property_data;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordPropertyData _$_$_LandlordPropertyDataFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['state_id']);
  return _$_LandlordPropertyData(
    id: json['id'] as int ?? 0,
    name: json['name'] as String ?? '',
    propertyType: json['property_type'] as String ?? '',
    houseType: json['house_type'] as String ?? '',
    street: json['street'] as String ?? '',
    town: json['town'] as String ?? '',
    stateId: json['state_id'] as int,
    country: json['country'] as String ?? '',
    numberOfTenants: json['number_of_tenants'] as int ?? 0,
    numberOfApartments: json['number_of_apartments'] as int ?? 0,
    numberOfAvailableApartments:
        json['number_of_available_apartments'] as int ?? 0,
    numberOfRentedApartment: json['number_of_rented_apartment'] as int ?? 0,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
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
  writeNotNull('state_id', instance.stateId);
  writeNotNull('country', instance.country);
  writeNotNull('number_of_tenants', instance.numberOfTenants);
  writeNotNull('number_of_apartments', instance.numberOfApartments);
  writeNotNull(
      'number_of_available_apartments', instance.numberOfAvailableApartments);
  writeNotNull('number_of_rented_apartment', instance.numberOfRentedApartment);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
