import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/repositories/email_verification_mixin.dart';
import 'package:pexza/features/auth/data/repositories/password_reset_mixin.dart';
import 'package:pexza/features/auth/data/repositories/social_auth_mixin.dart';
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart';
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/features/core/domain/entities/role/role.dart';
import 'package:pexza/features/core/domain/entities/user/user.dart';
import 'package:pexza/features/core/domain/entities/fields/phone/phone.dart';
import 'package:pexza/features/core/domain/entities/fields/password.dart';
import 'package:pexza/features/core/domain/entities/fields/gender/gender.dart';
import 'package:pexza/features/core/domain/entities/fields/email_address.dart';
import 'package:pexza/features/core/domain/entities/fields/display_name.dart';
import 'package:pexza/utils/utils.dart';

@LazySingleton(as: AuthFacade)
class AuthFacadeImpl extends AuthFacade
    with PasswordResetMixin, EmailVerificationMixin, SocialAuthMixin {
  static const int FACEBOOK_IMAGE_SIZE = 600;

  StreamController<Either<AuthResponse, Option<User>>> __controller;

  final FirebaseAnalytics analytics;
  final FacebookLogin facebookLogin;
  final GoogleSignIn googleSignIn;
  final AuthLocalDatasource local;
  final AuthRemoteDatasource remote;

  AuthFacadeImpl(
    this.remote,
    this.local,
    this.analytics,
    this.googleSignIn,
    this.facebookLogin,
  ) : __controller = StreamController.broadcast();

  @override
  Future<Either<AuthResponse, Option<User>>> get currentUser async {
    // Check if device has good connection
    final _checkConn = await checkHasGoodInternet();

    Future<Either<AuthResponse, Option<User>>> _mapped(
      AuthResponse failure,
    ) async {
      return failure.foldCode(
        is1101: () => left(failure),
        orElse: () async => (await local.getCachedUserInfo()).fold(
          () => right(none()),
          (dto) => right(some(dto.domain)),
        ),
      );
    }

    return _checkConn.fold(
      // If no internet, return cached user
      (f) async => _mapped(f),
      // Fetch fresh user data from remote
      (_) async => (await remote.fetchUserInfo()).fold(
        (f) async => _mapped(f),
        (dto) => right(some(dto.domain)),
      ),
    );
  }

  @override
  Future<Either<AuthResponse, Unit>> createAccount({
    @required Role role,
    @required DisplayName firstName,
    @required DisplayName lastName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Gender gender,
    @required DateTimeField dateOfBirth,
    @required Password password,
  }) async {
    try {
      // Check if device has good connection
      final _result = await checkHasGoodInternet();

      final _response = await _result.fold(
        // Re-Throw Exception
        (f) async => throw f,
        // Attempt Registration
        (_) async => await remote.createUserAccount(UserDTO.fromDomain(User(
          role: role,
          firstName: firstName,
          lastName: lastName,
          email: emailAddress,
          phone: phone,
          gender: gender,
          dateOfBirth: dateOfBirth,
          password: password,
        ))),
      );

      // Get Data Access Object
      final _registered = RegisteredUserDTO.fromJson(_response.data);

      // Automatically Login new User
      await login(
        email: emailAddress,
        password: password,
        registered: _registered.user.copyWith(
          password: password.getOrNull,
        ),
      );

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> login({
    @required EmailAddress email,
    @required Password password,
    UserDTO registered,
  }) async {
    try {
      // Check if device has good connection
      final _result = await checkHasGoodInternet();

      final _response = await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Authentication
        (r) async => await remote.login(
          email: email.getOrNull,
          password: password.getOrNull,
        ),
      );

      //// Cache Access token
      local.cacheUserAccessToken(_response.data);

      // If login was successful, fetch updated user creds
      // Else we'll pass in the initial registration response for caching
      await getAndCacheUserInfo(registered ??
          UserDTO.fromDomain(User(
            email: email,
            password: password,
          )));

      // Log Firebase Analytics Login event
      analytics.logLogin(loginMethod: "email");

      // Sink new signin event
      await sink();

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Stream<Either<AuthResponse, Option<User>>> get onAuthStateChanged =>
      __controller.stream;

  @override
  Future<void> signOut([bool notify = true]) async {
    try {
      // Sign user-out of all services
      await Future.wait([
        remote.signOut(),
        // Delete local user--auth token
        local.signOut(),
        googleSignIn.signOut(),
        facebookLogin.logOut(),
      ]);

      // Notify of signout
      if (notify) await sink();
    } on DioError catch (_) {
      // Delete local user--auth cache
      await Future.wait([
        local.signOut(),
        googleSignIn.signOut(),
        facebookLogin.logOut(),
      ]);

      return handleFailure(
        authResponse: AuthResponse(message: "Signing out..."),
      );
    }
  }

  @override
  Future<void> sink([Either<AuthResponse, Option<User>> userOrFailure]) async =>
      __controller.sink.add(userOrFailure ?? await currentUser);

  @override
  Future<Either<AuthResponse, Unit>> updateProfile({
    DisplayName firstName,
    DisplayName lastName,
    Phone phone,
    DateTimeField dob,
    Gender gender,
    Password currentPassword,
    Password newPassword,
  }) async {
    try {
      // Check if device has good connection
      final _result = await checkHasGoodInternet();

      await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => remote.updateProfile(UserDTO.fromDomain(User(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          gender: gender,
          dateOfBirth: dob,
          // password: currentPassword,
        ))),
      );

      // Update was successful, fetch & cache fresh user data
      // await getAndCacheUserInfo();

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  Future<void> getAndCacheUserInfo([UserDTO dto]) async {
    // Cache incoming user data
    await local.cacheAuthenticatedUser(dto);

    // Check if device has good connection
    final _checkConn = await checkHasGoodInternet();
    // Fetch Updated user info from remote source
    dto = await _checkConn.fold(
      (f) async => throw f,
      (r) async => (await remote.fetchUserInfo()).fold(
        (f) async => (await local.getCachedUserInfo()).fold(() => throw f, id),
        id,
      ),
    );

    // Cache updated user data
    await local.cacheAuthenticatedUser(dto);
  }
}
