import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

class ProfileVerificationConverter
    implements JsonConverter<ProfileVerificationStatus, String> {
  const ProfileVerificationConverter();

  @override
  ProfileVerificationStatus fromJson(String value) =>
      !value.isNullOrBlank ? ProfileVerificationStatus.valueOf(value) : null;

  @override
  String toJson(ProfileVerificationStatus instance) => instance?.name;
}

class FloorProfileVerificationConverter
    extends TypeConverter<ProfileVerificationStatus, String> {
  @override
  ProfileVerificationStatus decode(String value) =>
      !value.isNullOrBlank ? ProfileVerificationStatus.valueOf(value) : null;

  @override
  String encode(ProfileVerificationStatus instance) => instance?.name;
}
