// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDTOAdapter extends TypeAdapter<_$_UserDTO> {
  @override
  final int typeId = 6;

  @override
  _$_UserDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserDTO(
      id: fields[0] as String,
      role: fields[1] as String,
      firstName: fields[2] as String,
      lastName: fields[3] as String,
      email: fields[4] as String,
      gender: fields[5] as String,
      age: fields[6] as String,
      phone: fields[7] as String,
      password: fields[8] as String,
      photo: fields[9] as String,
      isEmailVerified: fields[10] as bool,
      createdAt: fields[11] as String,
      updatedAt: fields[12] as String,
      deletedAt: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserDTO obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.role)
      ..writeByte(2)
      ..write(obj.firstName)
      ..writeByte(3)
      ..write(obj.lastName)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.age)
      ..writeByte(7)
      ..write(obj.phone)
      ..writeByte(8)
      ..write(obj.password)
      ..writeByte(9)
      ..write(obj.photo)
      ..writeByte(10)
      ..write(obj.isEmailVerified)
      ..writeByte(11)
      ..write(obj.createdAt)
      ..writeByte(12)
      ..write(obj.updatedAt)
      ..writeByte(13)
      ..write(obj.deletedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    role: json['user_type'] as String ?? '',
    firstName: json['first_name'] as String ?? '',
    lastName: json['last_name'] as String ?? '',
    email: json['email'] as String ?? '',
    gender: json['gender'] as String ?? '',
    age: json['age'] as String ?? '',
    phone: json['phone'] as String ?? '',
    password: json['password'] as String ?? '',
    photo: json['photo'] as String ?? '',
    isEmailVerified:
        UserDTO.isEmailVerifiedFromJson(json['email_verified_at'] as String),
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_UserDTOToJson(_$_UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_type', instance.role);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('gender', instance.gender);
  writeNotNull('age', instance.age);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('photo', instance.photo);
  writeNotNull('email_verified_at', instance.isEmailVerified);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
