// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord_property_dto_list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordPropertyDTOList _$_$_LandlordPropertyDTOListFromJson(
    Map<String, dynamic> json) {
  return _$_LandlordPropertyDTOList(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : LandlordPropertyData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    links: json['links'] == null
        ? null
        : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LandlordPropertyDTOListToJson(
    _$_LandlordPropertyDTOList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  writeNotNull('links', instance.links?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
