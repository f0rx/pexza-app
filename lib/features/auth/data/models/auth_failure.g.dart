// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthFailure _$_$_AuthFailureFromJson(Map<String, dynamic> json) {
  return _$_AuthFailure(
    message: json['message'] as String ?? '',
    details: json['details'] as String,
    errors: const ServerFieldErrorsSerializer()
        .fromJson(json['errors'] as Map<String, dynamic>),
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
  val['details'] = instance.details;
  writeNotNull(
      'errors', const ServerFieldErrorsSerializer().toJson(instance.errors));
  return val;
}
