import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
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
class AuthFacadeImpl extends AuthFacade {
  final AuthRemoteDatasource _remote;
  final AuthLocalDatasource _local;
  final FirebaseAnalytics _analytics;
  StreamController<Either<AuthResponse, Option<User>>> __controller;

  AuthFacadeImpl(
    this._remote,
    this._local,
    this._analytics,
  ) : __controller = StreamController.broadcast();

  @override
  Future<void> sink([Either<AuthResponse, Option<User>> userOrFailure]) async =>
      __controller.sink.add(userOrFailure ?? await currentUser);

  @override
  Future<Either<AuthResponse, Option<User>>> get currentUser async {
    // Check if device has good connection
    final _checkConn = await checkHasGoodInternet();

    Future<Either<AuthResponse, Option<User>>> _mapped(
      AuthResponse failure,
    ) async {
      return failure.fold(
        is1101: () async => left(failure),
        orElse: () async => (await _local.getCachedUserInfo()).fold(
          () => right(none()),
          (dto) => right(some(dto.domain)),
        ),
      );
    }

    return _checkConn.fold(
      // If no internet, return cached user
      (f) async => _mapped(f),
      // Fetch fresh user data from remote
      (_) async => (await _remote.fetchUserInfo()).fold(
        (f) async => _mapped(f),
        (dto) => right(some(dto.domain)),
      ),
    );
  }

  @override
  Stream<Either<AuthResponse, Option<User>>> get onAuthStateChanged =>
      __controller.stream;

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
        (_) async => await _remote.createUserAccount(UserDTO.fromDomain(User(
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
        (r) async => await _remote.login(
          email: email.getOrNull,
          password: password.getOrNull,
        ),
      );

      //// Cache Access token
      _local.cacheUserAccessToken(_response.data);

      // If login was successful, fetch updated user creds
      // Else we'll pass in the initial registration response for caching
      await getAndCacheUserInfo(registered);

      // Log Firebase Analytics Login event
      _analytics.logLogin(loginMethod: "jwt");

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
  Future<Either<AuthResponse, Unit>> verifyEmailAddress({
    EmailTokenField token,
  }) async {
    try {
      final UserDTO local =
          (await _local.getCachedUserInfo())?.getOrElse(() => null);

      // Check if device has good connection
      final _checkConn = await checkHasGoodInternet();

      await _local.signOut(clearAccessToken: true, clearUser: false);

      await _checkConn.fold(
        (f) => throw f,
        (_) => _remote.verifyUserEmailAddress(
          local.email,
          token.getOrEmpty,
        ),
      );

      await _local.signOut();

      await login(
        email: EmailAddress(local.email),
        password: Password(local.password),
        registered: local,
      );

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> resendVerificationEmail(
    EmailAddress email,
  ) async {
    try {
      final _checkConn = await checkHasGoodInternet();

      await _checkConn.fold(
        (f) => throw f,
        (_) => _remote.resendVerificationEmail(email.getOrNull),
      );

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> updateProfile({
    DisplayName firstName,
    DisplayName lastName,
    Phone phone,
    Gender gender,
    DateTimeField dateOfBirth,
  }) async {
    try {
      // Check if device has good connection
      final _result = await checkHasGoodInternet();

      await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => _remote.updateProfile(UserDTO.fromDomain(User(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          gender: gender,
          dateOfBirth: dateOfBirth,
        ))),
      );

      // Update was successful, fetch & cache fresh user data
      await this.getAndCacheUserInfo();

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, AuthResponse>> sendPasswordResetEmail(
    EmailAddress email,
  ) async {
    try {
      // Check if device has good connection
      final _result = await checkHasGoodInternet();

      final _response = await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Update user profile
        (_) => email.value?.fold(
          (f) => throw AuthResponse(
            message: f?.message,
            errors: ServerFieldErrors(email: [f?.message]),
          ),
          (_email) => _remote.sendPasswordResetEmail(_email),
        ),
      );

      return right(AuthResponse.fromJson(_response.data));
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, AuthResponse>> confirmPasswordReset({
    String code,
    EmailAddress email,
    Password newPassword,
  }) async {
    try {
      // Check if device has good connection
      final _result = await checkHasGoodInternet();

      // Reset user's password
      final _response = await _result.fold(
        (f) => throw f,
        (_) => _remote.confirmPasswordReset(
          code: code,
          email: email.getOrEmpty,
          newPassword: newPassword.getOrEmpty,
        ),
      );

      return right(AuthResponse.fromJson(_response.data));
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      // Sign user-out of remote source
      await _remote.signOut();

      // Delete local user--auth cache
      await _local.signOut();

      // Notify listeners
      await sink();
    } on DioError catch (_) {
      // Delete local user--auth cache
      await _local.signOut();
      return handleFailure(
        authResponse: AuthResponse(message: "Signing out..."),
      );
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> facebookAuthentication(
      [Object pendingCredentials]) {
    // TODO: implement facebookAuthentication
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthResponse, Unit>> googleAuthentication(
      [Object pendingCredentials]) {
    // TODO: implement googleAuthentication
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthResponse, Unit>> twitterAuthentication(
      [Object pendingCredentials]) {
    // TODO: implement twitterAuthentication
    throw UnimplementedError();
  }

  Future<void> getAndCacheUserInfo([UserDTO temp]) async {
    UserDTO dto = temp;

    if (temp.isNull) {
      // Check if device has good connection
      final _checkConn = await checkHasGoodInternet();
      // Fetch Updated user info from remote source
      dto = await _checkConn.fold(
        (f) async => throw f,
        (r) async => (await _remote.fetchUserInfo()).fold(
          (f) async =>
              (await _local.getCachedUserInfo()).fold(() => throw f, id),
          id,
        ),
      );
    }

    // Cache updated user info
    await _local.cacheAuthenticatedUser(dto);
  }
}
