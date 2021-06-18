// GENERATED CODE - DO NOT MODIFY BY HAND

part of card_verification_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardVerificationDTO _$_$_CardVerificationDTOFromJson(
    Map<String, dynamic> json) {
  return _$_CardVerificationDTO(
    details: json['details'] == null
        ? null
        : CardVerificationDetailsDTO.fromJson(
            json['details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CardVerificationDTOToJson(
    _$_CardVerificationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('details', instance.details?.toJson());
  return val;
}
