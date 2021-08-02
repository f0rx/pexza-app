library app_database.dart;

import 'dart:async';
import 'package:floor/floor.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/entities/role/role.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/utils/utils.dart';

part 'app_database.g.dart';
part 'app_database.f.dart';
part 'package:pexza/features/core/data/models/user/floor_user.dart';

@TypeConverters([
  FloorRoleConverter,
  FloorDateTimeConverter,
  FloorProfileVerificationConverter,
])
@Database(version: 1, entities: [_$_FloorUser])
abstract class AppDatabase extends FloorDatabase {
  FloorUserDAO get userDAO;
}
