library user;

import 'package:firebase_auth/firebase_auth.dart' as _;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/features/core/domain/entities/role/role.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';
import 'package:pexza/features/core/domain/entities/user/auth_providers.dart';
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
    @nullable UniqueId id,
    @nullable Role role,
    @nullable DisplayName displayName,
    @nullable EmailAddress email,
    @nullable bool isEmailVerified,
    @nullable AuthProviders providers,
    @nullable Phone phone,
    @nullable String photoURL,
    @nullable DateTime createdAt,
    @nullable DateTime lastSeenAt,
    @nullable DateTime updatedAt,
  }) = _User;

  factory User.firebaseAuth({
    String id,
    @nullable String displayName,
    String email,
    @nullable bool isEmailVerified,
    @nullable List<_.UserInfo> providers,
    @nullable String phone,
    @nullable String photoURL,
    DateTime createdAt,
    DateTime lastSeenAt,
  }) =>
      User(
        id: UniqueId.fromExternal(id),
        displayName: DisplayName(displayName ?? ''),
        email: EmailAddress(email),
        providers: mapProvidersToDomain(providers ?? []),
        isEmailVerified: isEmailVerified,
        phone: Phone(phone ?? '', Country.NG),
        photoURL: photoURL,
        createdAt: createdAt,
        lastSeenAt: lastSeenAt,
      );

  factory User.guest() => User(
        id: UniqueId.v4(),
        displayName: DisplayName("Guest"),
        email: EmailAddress("name@email.com"),
        isEmailVerified: false,
        providers: AuthProviders.EMPTY,
        phone: Phone("8100000002", Country.NG),
        // photoURL: AppAssets.onlineAnonymous,
        createdAt: Helpers.I.today,
        lastSeenAt: Helpers.I.today,
      );

  static AuthProviders mapProvidersToDomain(List<_.UserInfo> providers) =>
      AuthProviders(providers
          .map((el) => AuthProvider(
                id: el.uid,
                displayName: el.displayName,
                email: el.email,
                providerId: el.providerId,
                phoneNumber: el.phoneNumber,
                photoURL: el.photoURL,
              ))
          .toImmutableList());

  // Student asStudent({
  //   UniqueId id,
  //   DisplayName name,
  //   EmailAddress email,
  //   bool verified,
  //   String photoURL,
  //   Phone phone,
  //   DateTime createdAt,
  //   DateTime lastSeenAt,
  // }) =>
  //     Student(
  //       id: id ?? this.id,
  //       displayName: name ?? this.displayName,
  //       email: email ?? this.email,
  //       providers: providers,
  //       isEmailVerified: verified ?? this.isEmailVerified,
  //       phone: phone ?? this.phone,
  //       photoURL: photoURL ?? this.photoURL,
  //       createdAt: createdAt ?? this.createdAt,
  //       lastSeenAt: lastSeenAt ?? this.lastSeenAt,
  //     );
}
