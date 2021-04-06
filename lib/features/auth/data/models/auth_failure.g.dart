// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthFailure _$_$_AuthFailureFromJson(Map<String, dynamic> json) {
  return _$_AuthFailure(
    message: json['message'] as String ?? '',
    error: json['error'] as String ?? '',
    errors: const ServerFieldErrorsSerializer()
        .fromJson(json['errors'] as Map<String, dynamic>),
    details: json['details'] as String,
  );
}

Map<String, dynamic> _$_$_AuthFailureToJson(_$_AuthFailure instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('error', instance.error);
  writeNotNull(
      'errors', const ServerFieldErrorsSerializer().toJson(instance.errors));
  val['details'] = instance.details;
  return val;
}
