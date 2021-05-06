// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord__failure.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordFailure _$_$_LandlordFailureFromJson(Map<String, dynamic> json) {
  return _$_LandlordFailure(
    code: json['code'] as int ?? 200,
    status: json['status'] as String ?? '',
    message: json['message'] as String ?? '',
    error: json['error'] as String ?? '',
    errors: const ServerFieldErrorsSerializer()
        .fromJson(json['errors'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LandlordFailureToJson(_$_LandlordFailure instance) {
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
