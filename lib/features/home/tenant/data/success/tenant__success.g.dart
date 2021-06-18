// GENERATED CODE - DO NOT MODIFY BY HAND

part of tenant__success.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TenantSuccess _$_$_TenantSuccessFromJson(Map<String, dynamic> json) {
  return _$_TenantSuccess(
    message: json['message'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_TenantSuccessToJson(_$_TenantSuccess instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
