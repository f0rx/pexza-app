// GENERATED CODE - DO NOT MODIFY BY HAND

part of currency.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyDTO _$_$_CurrencyDTOFromJson(Map<String, dynamic> json) {
  return _$_CurrencyDTO(
    id: json['id'] as int ?? '',
    currency: json['currency'] as String ?? '',
    currencyName: json['currency_name'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_CurrencyDTOToJson(_$_CurrencyDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('currency', instance.currency);
  writeNotNull('currency_name', instance.currencyName);
  return val;
}
