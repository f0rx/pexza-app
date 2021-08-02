// GENERATED CODE - DO NOT MODIFY BY HAND

part of wallet_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletDTO _$_$_WalletDTOFromJson(Map<String, dynamic> json) {
  return _$_WalletDTO(
    id: json['id'] as int,
    payableId: json['payable_id'] as int,
    amount: json['amount'] as int,
  );
}

Map<String, dynamic> _$_$_WalletDTOToJson(_$_WalletDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('payable_id', instance.payableId);
  writeNotNull('amount', instance.amount);
  return val;
}
