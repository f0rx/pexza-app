import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

class RoleConverter implements JsonConverter<Role, String> {
  const RoleConverter();

  @override
  Role fromJson(String value) =>
      !value.isNullOrBlank ? Role.valueOf(value) : null;

  @override
  String toJson(Role instance) => instance?.name;
}

class FloorRoleConverter extends TypeConverter<Role, String> {
  @override
  Role decode(String value) =>
      !value.isNullOrBlank ? Role.valueOf(value) : null;

  @override
  String encode(Role instance) => instance?.name;
}
