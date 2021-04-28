// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord_apartment_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordApartmentDTO _$_$_LandlordApartmentDTOFromJson(
    Map<String, dynamic> json) {
  return _$_LandlordApartmentDTO(
    data: json['data'] == null
        ? null
        : LandlordApartmentData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LandlordApartmentDTOToJson(
    _$_LandlordApartmentDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
