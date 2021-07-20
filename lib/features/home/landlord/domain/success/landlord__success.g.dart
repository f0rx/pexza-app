// GENERATED CODE - DO NOT MODIFY BY HAND

part of landlord__success.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LandlordSuccess _$_$_LandlordSuccessFromJson(Map<String, dynamic> json) {
  return _$_LandlordSuccess(
    status: json['status'] as String,
    message: json['message'] as String ?? '',
  );
}

Map<String, dynamic> _$_$_LandlordSuccessToJson(_$_LandlordSuccess instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  return val;
}
