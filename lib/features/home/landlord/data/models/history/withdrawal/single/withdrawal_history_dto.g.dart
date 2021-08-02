// GENERATED CODE - DO NOT MODIFY BY HAND

part of withdrawal_history_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WithdrawalHistoryDTO _$_$_WithdrawalHistoryDTOFromJson(
    Map<String, dynamic> json) {
  return _$_WithdrawalHistoryDTO(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : WithdrawalHistoryDTOData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    currentPage: json['current_page'] as int,
    from: json['from'] as int,
    lastPage: json['last_page'] as int,
    links: (json['links'] as List)
        ?.map((e) => e == null
            ? null
            : PaginationLinks.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    path: json['path'] as String,
    perPage: json['per_page'] as int,
    to: json['to'] as int,
    total: json['total'] as int,
  );
}

Map<String, dynamic> _$_$_WithdrawalHistoryDTOToJson(
    _$_WithdrawalHistoryDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  writeNotNull('current_page', instance.currentPage);
  writeNotNull('from', instance.from);
  writeNotNull('last_page', instance.lastPage);
  writeNotNull('links', instance.links?.map((e) => e?.toJson())?.toList());
  writeNotNull('path', instance.path);
  writeNotNull('per_page', instance.perPage);
  writeNotNull('to', instance.to);
  writeNotNull('total', instance.total);
  return val;
}
