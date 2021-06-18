// GENERATED CODE - DO NOT MODIFY BY HAND

part of card_verification_details_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardVerificationDetailsDTO _$_$_CardVerificationDetailsDTOFromJson(
    Map<String, dynamic> json) {
  return _$_CardVerificationDetailsDTO(
    bin: json['bin'] as String ?? '',
    brand: json['brand'] as String ?? '',
    subBrand: json['sub_brand'] as String,
    countryCode: json['country_code'] as String ?? '',
    countryName: json['country_name'] as String ?? '',
    cardType: json['card_type'] as String ?? '',
    bank: json['bank'] as String ?? '',
    bankId: json['linked_bank_id'] as int,
  );
}

Map<String, dynamic> _$_$_CardVerificationDetailsDTOToJson(
    _$_CardVerificationDetailsDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bin', instance.bin);
  writeNotNull('brand', instance.brand);
  writeNotNull('sub_brand', instance.subBrand);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('country_name', instance.countryName);
  writeNotNull('card_type', instance.cardType);
  writeNotNull('bank', instance.bank);
  writeNotNull('linked_bank_id', instance.bankId);
  return val;
}
