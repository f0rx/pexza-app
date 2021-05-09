// GENERATED CODE - DO NOT MODIFY BY HAND

part of tenant_apartment_dto_list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TenantApartmentDTOList _$_$_TenantApartmentDTOListFromJson(
    Map<String, dynamic> json) {
  return _$_TenantApartmentDTOList(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : TenantApartmentData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    links: json['links'] == null
        ? null
        : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TenantApartmentDTOListToJson(
    _$_TenantApartmentDTOList instance) {
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
