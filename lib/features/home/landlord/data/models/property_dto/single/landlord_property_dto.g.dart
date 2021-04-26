// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord_property_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordPropertyDTO _$_$_LandlordPropertyDTOFromJson(
    Map<String, dynamic> json) {
  return _$_LandlordPropertyDTO(
    data: json['data'] == null
        ? null
        : LandlordPropertyData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LandlordPropertyDTOToJson(
    _$_LandlordPropertyDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
