import 'package:freezed_annotation/freezed_annotation.dart';
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

  const factory UserDTO({
    @nullable
    @JsonKey(includeIfNull: false)
        int id,
    @nullable
    @JsonKey(includeIfNull: false)
    @ProfileVerificationConverter()
        ProfileVerificationStatus status,
    @nullable
    @JsonKey(includeIfNull: false)
    @RoleConverter()
        Role role,
    @nullable
    @JsonKey(includeIfNull: false)
        int balance,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String token,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "first_name")
        String firstName,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "last_name")
        String lastName,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String email,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String gender,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "dob")
        String dateOfBirth,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String phone,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "register_via")
        String provider,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String password,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String photo,
    @nullable
    @JsonKey(
      includeIfNull: false,
      name: "email_verified_at",
      fromJson: UserDTO.isEmailVerifiedFromJson,
    )
        bool isEmailVerified,
    @nullable
    @JsonKey(includeIfNull: false)
        BaseApartmentDTO apartment,
    @nullable
    @JsonKey(includeIfNull: false, name: "verification_code_sent_at")
    @TimestampConverter()
        String verificationCodeSentAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "forgot_password_code_sent_at")
    @TimestampConverter()
        String forgotPasswordCodeSentAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "unreadNotifications")
        int unreadNotifications,
    @nullable
    @JsonKey(includeIfNull: false, name: "hasPendingAssignment", defaultValue: false)
        bool hasPendingAssignment,
    @nullable
    @JsonKey(includeIfNull: false, name: "pendingAssignment")
        List<BaseApartmentDTO> pendingAssignments,
    @nullable
    @JsonKey(includeIfNull: false, name: "last_logged_in")
    @TimestampConverter()
        String lastSeenAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User instance) => UserDTO(
        role: instance.role,
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
        role: role,
        accountBalance: balance != null ? BasicTextField(balance) : null,
        firstName: firstName != null ? DisplayName(firstName) : null,
        lastName: lastName != null ? DisplayName(lastName) : null,
        email: email != null ? EmailAddress(email) : null,
        gender: !gender.isNullOrBlank
            ? Gender(GenderType.valueOf(gender?.capitalizeFirst()))
            : null,
        dateOfBirth: !dateOfBirth.isNullOrBlank
            ? DateTimeField(DateTime.parse(dateOfBirth))
            : null,
        isEmailVerified: isEmailVerified,
        phone: phone != null ? Phone(phone, Country.NG) : null,
        provider: provider != null ? AuthProvider.valueOf(provider) : null,
        password: Password.DEFAULT,
        photo: photo,
        forgotPasswordCodeSentAt: !forgotPasswordCodeSentAt.isNullOrBlank
            ? DateTime.tryParse(forgotPasswordCodeSentAt)
            : null,
        verificationCodeSentAt: !verificationCodeSentAt.isNullOrBlank
            ? DateTime.tryParse(verificationCodeSentAt)
            : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
        apartment: !apartment.isNull ? apartment.tenantDomain : null,
      );
}
