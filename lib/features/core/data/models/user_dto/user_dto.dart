import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@immutable
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  static bool isEmailVerifiedFromJson(String dateTime) =>
      dateTime != null && dateTime.isNotEmpty;

  @HiveType(typeId: 6, adapterName: 'UserDTOAdapter')
  const factory UserDTO({
    @HiveField(0)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: 0)
        int id,
    @HiveField(1)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
    @RoleConverter()
        String role,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
    @RoleConverter()
        String token,
    @HiveField(2)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "first_name")
        String firstName,
    @HiveField(3)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "last_name")
        String lastName,
    @HiveField(4)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String email,
    @HiveField(5)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String gender,
    @HiveField(6)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "dob")
        String dateOfBirth,
    @HiveField(7)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String phone,
    @HiveField(8)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "register_via")
        String provider,
    @HiveField(9)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String password,
    @HiveField(10)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String photo,
    @HiveField(11)
    @nullable
    @JsonKey(
      includeIfNull: false,
      name: "email_verified_at",
      fromJson: UserDTO.isEmailVerifiedFromJson,
    )
        bool isEmailVerified,
    @HiveField(12)
    @nullable
    @JsonKey(includeIfNull: false, name: "verification_code_sent_at")
        String verificationCodeSentAt,
    @HiveField(13)
    @nullable
    @JsonKey(includeIfNull: false, name: "forgot_password_code_sent_at")
        String forgotPasswordCodeSentAt,
    @HiveField(14)
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @HiveField(15)
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @HiveField(16)
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
    @nullable
    @JsonKey(includeIfNull: false)
        BaseApartmentDTO apartment,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User instance) => UserDTO(
        role: instance.role?.name?.toLowerCase(),
        firstName: instance.firstName?.getOrNull,
        lastName: instance.lastName?.getOrNull,
        email: instance.email?.getOrNull,
        gender: instance.gender?.getOrNull?.name?.toLowerCase(),
        dateOfBirth: instance.dateOfBirth?.getOrNull?.toIso8601String(),
        phone: instance.phone?.getOrNull,
        password: instance.password?.getOrNull,
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  User get domain => User(
        id: UniqueId<int>.fromExternal(id),
        role: role != null ? Role.valueOf(role) : null,
        firstName: firstName != null ? DisplayName(firstName) : null,
        lastName: lastName != null ? DisplayName(lastName) : null,
        email: email != null ? EmailAddress(email) : null,
        gender: gender != null
            ? Gender(GenderType.valueOf(gender.capitalizeFirst()))
            : null,
        dateOfBirth: dateOfBirth != null
            ? DateTimeField(DateTime.parse(dateOfBirth))
            : null,
        isEmailVerified: isEmailVerified,
        phone: phone != null ? Phone(phone, Country.NG) : null,
        provider: provider != null ? AuthProvider.valueOf(provider) : null,
        password: Password.DEFAULT,
        photo: photo,
        forgotPasswordCodeSentAt: forgotPasswordCodeSentAt != null
            ? DateTime.tryParse(forgotPasswordCodeSentAt)
            : null,
        verificationCodeSentAt: verificationCodeSentAt != null
            ? DateTime.tryParse(verificationCodeSentAt)
            : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
        apartment: !apartment.isNull ? apartment.tenantDomain : null,
      );
}
