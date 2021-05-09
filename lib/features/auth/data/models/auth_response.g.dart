// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponse _$_$_AuthResponseFromJson(Map<String, dynamic> json) {
  return _$_AuthResponse(
    code: json['code'] as int ?? 200,
    status: json['status'] as String ?? '',
    message: json['message'] as String ?? '',
    error: json['error'] as String ?? '',
    errors: const ServerFieldErrorsSerializer()
        .fromJson(json['errors'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AuthResponseToJson(_$_AuthResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('error', instance.error);
  writeNotNull(
      'errors', const ServerFieldErrorsSerializer().toJson(instance.errors));
  return val;
}
