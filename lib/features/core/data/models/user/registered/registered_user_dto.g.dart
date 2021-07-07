// GENERATED CODE - DO NOT MODIFY BY HAND

part of registered_user_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisteredUserDTO _$_$_RegisteredUserDTOFromJson(Map<String, dynamic> json) {
  return _$_RegisteredUserDTO(
    id: json['id'] as int,
    user: json['user'] == null
        ? null
        : UserDTO.fromJson(json['user'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_RegisteredUserDTOToJson(
    _$_RegisteredUserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user', instance.user?.toJson());
  writeNotNull('message', instance.message);
  return val;
}
