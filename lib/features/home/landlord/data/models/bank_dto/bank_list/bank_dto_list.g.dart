// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank_dto_list.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankDTOList _$_$_BankDTOListFromJson(Map<String, dynamic> json) {
  return _$_BankDTOList(
    status: json['status'] as String ?? '',
    banks: (json['banks'] as List)
        ?.map((e) => e == null
            ? null
            : BankDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    links: json['links'] == null
        ? null
        : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BankDTOListToJson(_$_BankDTOList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('banks', instance.banks?.map((e) => e?.toJson())?.toList());
  writeNotNull('links', instance.links?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
