// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord_property_data;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordPropertyData _$_$_LandlordPropertyDataFromJson(
    Map<String, dynamic> json) {
  return _$_LandlordPropertyData(
    id: json['id'] as int,
    name: json['name'] as String ?? '',
    propertyType: json['property_type'] as String ?? '',
    houseType: json['house_type'] as String ?? '',
    photo: json['photo'] as String ?? '',
    street: json['street'] as String ?? '',
    town: json['town'] as String ?? '',
    primary: json['swatch'] as String ?? '',
    state: json['state'] == null
        ? null
        : StateDTO.fromJson(json['state'] as Map<String, dynamic>),
    landlord: json['landlord'] == null
        ? null
        : UserDTO.fromJson(json['landlord'] as Map<String, dynamic>),
    stateId: const IntegerSerializer().fromJson(json['state_id']),
    country: json['country'] as String ?? '',
    numberOfTenants: json['number_of_tenants'] as int,
    numberOfApartments: json['number_of_apartments'] as int,
    numberOfAvailableApartments: json['number_of_available_apartments'] as int,
    numberOfRentedApartment: json['number_of_rented_apartment'] as int,
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
  writeNotNull('photo', instance.photo);
  writeNotNull('street', instance.street);
  writeNotNull('town', instance.town);
  writeNotNull('swatch', instance.primary);
  writeNotNull('state', instance.state?.toJson());
  writeNotNull('landlord', instance.landlord?.toJson());
  val['state_id'] = const IntegerSerializer().toJson(instance.stateId);
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
