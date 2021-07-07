// GENERATED CODE - DO NOT MODIFY BY HAND

part of account_detail_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountDetailDTO _$_$_AccountDetailDTOFromJson(Map<String, dynamic> json) {
  return _$_AccountDetailDTO(
    bankId: json['bank_id'] as int,
    accountNumber: json['account_number'] as String ?? '',
    accountName: json['account_name'] as String ?? '',
    bank: json['bank'] == null
        ? null
        : BankDataModel.fromJson(json['bank'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AccountDetailDTOToJson(_$_AccountDetailDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bank_id', instance.bankId);
  writeNotNull('account_number', instance.accountNumber);
  writeNotNull('account_name', instance.accountName);
  writeNotNull('bank', instance.bank?.toJson());
  return val;
}
