library user;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/features/core/domain/entities/role/role.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';
import 'package:pexza/features/core/domain/entities/user/base_user.dart';
import 'package:pexza/utils/utils.dart';

import 'auth_provider.dart';

part 'user.freezed.dart';

@freezed
@immutable
abstract class User implements _$User, BaseUser {
  @protected
  const User._();

  const factory User({
    @nullable UniqueId<int> id,
    @nullable Role role,
    @nullable DisplayName firstName,
    @nullable DisplayName lastName,
    @nullable EmailAddress email,
    @nullable Gender gender,
    @nullable DateTimeField dateOfBirth,
    @nullable bool isEmailVerified,
    @nullable AuthProvider provider,
    @nullable Phone phone,
    @nullable Password password,
    @nullable String photo,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _User;

  factory User.guest() => User(
        id: UniqueId.fromExternal(45),
        firstName: DisplayName("Guest"),
        lastName: DisplayName("User"),
        email: EmailAddress("name@email.com"),
        isEmailVerified: false,
        phone: Phone("8100000002", Country.NG),
        photo: AppAssets.user,
        createdAt: App.today,
        deletedAt: App.today,
      );
}
