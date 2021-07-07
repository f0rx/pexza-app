// GENERATED CODE - DO NOT MODIFY BY HAND

part of account_verification_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountVerificationDTO _$_$_AccountVerificationDTOFromJson(
    Map<String, dynamic> json) {
  return _$_AccountVerificationDTO(
    status: json['status'] as bool ?? false,
    message: json['message'] as String ?? '',
    data: json['data'] == null
        ? null
        : AccountDetailDTO.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AccountVerificationDTOToJson(
    _$_AccountVerificationDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}
