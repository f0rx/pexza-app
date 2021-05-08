// GENERATED CODE - DO NOT MODIFY BY HAND

part of apartment_merger_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApartmentMergerDTO _$_$_ApartmentMergerDTOFromJson(
    Map<String, dynamic> json) {
  return _$_ApartmentMergerDTO(
    data: json['data'] == null
        ? null
        : ApartmentMergerData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ApartmentMergerDTOToJson(
    _$_ApartmentMergerDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}
