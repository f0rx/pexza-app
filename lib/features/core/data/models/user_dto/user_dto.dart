import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/entities/role/role.dart';
import 'package:pexza/features/core/domain/entities/user/user.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@immutable
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  @HiveType(typeId: 6, adapterName: 'UserDTOAdapter')
  const factory UserDTO({
    @HiveField(0)
    @nullable
    @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
        String id,
    @HiveField(1)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "user_type")
    @RoleConverter()
        String role,
    @HiveField(2)
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "first_name")
        String firstName,
    @HiveField(3)
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "last_name")
        String lastName,
    @HiveField(4)
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String email,
    @HiveField(5)
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String gender,
    @HiveField(6)
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String age,
    @HiveField(7)
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String phone,
    @HiveField(8)
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String password,
    @HiveField(9)
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String photo,
    @HiveField(10)
    @nullable
    @JsonKey(
      includeIfNull: false,
      name: "email_verified_at",
      fromJson: UserDTO.isEmailVerifiedFromJson,
    )
        bool isEmailVerified,
    @HiveField(11)
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @HiveField(12)
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String deletedAt,
    @HiveField(13)
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String updatedAt,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User instance) {
    return UserDTO(
      firstName: instance.firstName?.getOrNull,
      lastName: instance.lastName?.getOrNull,
      email: instance.email?.getOrNull,
      gender: instance.gender?.getOrNull?.name,
      age: instance.age?.getOrNull != null
          ? App.calculateAge(instance.age.getOrNull).toString()
          : null,
      phone: instance.phone?.getOrNull,
      password: instance.password?.getOrNull,
    );
  }

  static bool isEmailVerifiedFromJson(String dateTime) =>
      dateTime != null && dateTime.isNotEmpty;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  User get domain {
    return User(
      id: UniqueId.fromExternal(id),
      role: role != null ? Role.valueOf(role) : null,
      firstName: firstName != null ? DisplayName(firstName) : null,
      lastName: lastName != null ? DisplayName(lastName) : null,
      email: email != null ? EmailAddress(email) : null,
      gender: gender != null
          ? Gender(GenderType.valueOf(gender.capitalizeFirst()))
          : null,
      age: age != null ? DateTimeField(DateTime.tryParse(age)) : null,
      isEmailVerified: isEmailVerified,
      phone: phone != null ? Phone(phone, Country.NG) : null,
      photo: photo,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
      updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
      deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
    );
  }
}
