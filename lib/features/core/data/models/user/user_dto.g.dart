// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$_$_UserDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDTO(
    id: json['id'] as int,
    status:
        const ProfileVerificationConverter().fromJson(json['status'] as String),
    role: const RoleConverter().fromJson(json['role'] as String),
    balance: json['balance'] as int,
    token: json['token'] as String ?? '',
    firstName: json['first_name'] as String ?? '',
    lastName: json['last_name'] as String ?? '',
    email: json['email'] as String ?? '',
    gender: json['gender'] as String ?? '',
    dateOfBirth: json['dob'] as String ?? '',
    phone: json['phone'] as String ?? '',
    provider: json['register_via'] as String ?? '',
    password: json['password'] as String ?? '',
    photo: json['photo'] as String ?? '',
    isEmailVerified:
        UserDTO.isEmailVerifiedFromJson(json['email_verified_at'] as String),
    apartment: json['apartment'] == null
        ? null
        : BaseApartmentDTO.fromJson(json['apartment'] as Map<String, dynamic>),
    verificationCodeSentAt: json['verification_code_sent_at'] as String,
    forgotPasswordCodeSentAt: json['forgot_password_code_sent_at'] as String,
    unreadNotifications: json['unreadNotifications'] as int,
    hasPendingAssignment: json['hasPendingAssignment'] as bool ?? false,
    pendingAssignments: (json['pendingAssignment'] as List)
        ?.map((e) => e == null
            ? null
            : BaseApartmentDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastSeenAt: json['last_logged_in'] as String,
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

  writeNotNull('id', instance.id);
  writeNotNull(
      'status', const ProfileVerificationConverter().toJson(instance.status));
  writeNotNull('role', const RoleConverter().toJson(instance.role));
  writeNotNull('balance', instance.balance);
  writeNotNull('token', instance.token);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('gender', instance.gender);
  writeNotNull('dob', instance.dateOfBirth);
  writeNotNull('phone', instance.phone);
  writeNotNull('register_via', instance.provider);
  writeNotNull('password', instance.password);
  writeNotNull('photo', instance.photo);
  writeNotNull('email_verified_at', instance.isEmailVerified);
  writeNotNull('apartment', instance.apartment?.toJson());
  writeNotNull('verification_code_sent_at', instance.verificationCodeSentAt);
  writeNotNull(
      'forgot_password_code_sent_at', instance.forgotPasswordCodeSentAt);
  writeNotNull('unreadNotifications', instance.unreadNotifications);
  writeNotNull('hasPendingAssignment', instance.hasPendingAssignment);
  writeNotNull('pendingAssignment',
      instance.pendingAssignments?.map((e) => e?.toJson())?.toList());
  writeNotNull('last_logged_in', instance.lastSeenAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
