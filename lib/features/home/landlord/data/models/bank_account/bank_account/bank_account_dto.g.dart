// GENERATED CODE - DO NOT MODIFY BY HAND

part of bank_account_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankAccountDTO _$_$_BankAccountDTOFromJson(Map<String, dynamic> json) {
  return _$_BankAccountDTO(
    status: json['status'] as String ?? '',
    bankAccount: json['bank_account'] == null
        ? null
        : BankAccountData.fromJson(
            json['bank_account'] as Map<String, dynamic>),
    links: json['links'] == null
        ? null
        : PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : MetaField.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BankAccountDTOToJson(_$_BankAccountDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('bank_account', instance.bankAccount?.toJson());
  writeNotNull('links', instance.links?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}
