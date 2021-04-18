import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart';
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/auth/data/models/auth_failure.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/data/data.dart';
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
  StreamController<Either<AuthFailure, Option<User>>> __controller;

  AuthFacadeImpl(
    this._remote,
    this._local,
  ) : __controller = StreamController.broadcast();

  @override
  Future<void> sink([Either<AuthFailure, Option<User>> userOrFailure]) async =>
      __controller.sink.add(userOrFailure ?? await currentUser);

  @override
  Future<Either<AuthFailure, Option<User>>> get currentUser async {
    // Check if device has good connection
    final _checkConn = await this.checkHasGoodInternet();

    Future<Either<AuthFailure, Option<User>>> _left() async {
      return _local.getCachedUserInfo().fold(
        () => right(none()),
        (dto) {
          try {
            return right(some(dto.domain));
          } catch (e) {
            return handleFailure(
              authFailure: AuthFailure(
                message: "User account not verified!",
                code: AuthFailure.UNVERIFIED,
                details: dto?.email,
              ),
            );
          }
        },
      );
    }

    return _checkConn.fold(
      // If no internet, return cached user
      (_) async => _left(),
      // Fetch fresh user data from remote
      (_) async => (await _remote.fetchUserInfo()).fold(
        (f) async => _left(),
        (dto) => right(some(dto.domain)),
      ),
    );
  }

  @override
  Stream<Either<AuthFailure, Option<User>>> get onAuthStateChanged =>
      __controller.stream;

  @override
  Future<Either<AuthFailure, Unit>> createAccount({
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
      final _result = await this.checkHasGoodInternet();

      await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
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

      // Automatically Login new User
      await this.login(email: emailAddress, password: password);

      return right(unit);
    } on AuthFailure catch (ex) {
      return handleFailure(authFailure: ex);
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          return left(AuthFailure.timeout());
          break;
        default:
          return handleFailure(dioError: ex);
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> login({
    @required EmailAddress email,
    @required Password password,
  }) async {
    try {
      // Check if device has good connection
      final _result = await this.checkHasGoodInternet();

      final _response = await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Authentication
        (r) async => await _remote.login(
          email: email.getOrNull,
          password: password.getOrNull,
        ),
      );

      /* Cache some temp information about the user
        trying to signin. We'll use this to verify the user's account
        and perform other non-sensitive operation
        that may require the user to signin
      */
      await this.getAndCacheUserInfo(UserDTO(
        email: email.getOrEmpty,
        password: password.getOrEmpty,
      ));

      /////////////////////  LOGIN SUCCESSFUL   /////////////////////////////

      //// Cache Access token
      _local.cacheUserAccessToken(_response.data);

      await this.getAndCacheUserInfo();

      // Notify listeners
      await sink();

      return right(unit);
    } on AuthFailure catch (ex) {
      return handleFailure(authFailure: ex);
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          return left(AuthFailure.timeout());
          break;
        default:
          return handleFailure(dioError: ex);
      }
    }
  }

  @override
  Future<void> refreshAccessToken() async {
    // Check if device has good connection
    final _checkConn = await this.checkHasGoodInternet();

    // Refresh Access token
    final _response = await _checkConn.fold(
      (f) async => throw f,
      (_) async => await _local.getCachedUserInfo().fold(
        () async {
          // This piece of code has errors
          return null;
        },
        (dto) async => await _remote.refreshUserAccessToken(
          userDTO: dto,
        ),
      ),
    );

    // Store new Access token
    _local.cacheUserAccessToken(_response.data);

    await sink();
  }

  @override
  Future<Either<AuthFailure, Unit>> verifyEmailAddress({
    EmailAddress email,
    EmailTokenField token,
  }) async {
    try {
      // Check if device has good connection
      final _checkConn = await this.checkHasGoodInternet();

      _local.signOut();

      await _checkConn.fold(
        (f) => throw f,
        (_) async => await _remote.verifyUserEmailAddress(
          email.getOrEmpty,
          token.getOrEmpty,
        ),
      );

      await this.getAndCacheUserInfo();

      // Here, it kinda looks like i'm fetching the user info twice!?
      await sink();

      return right(unit);
    } on AuthFailure catch (ex) {
      return handleFailure(authFailure: ex);
    } on DioError catch (ex) {
      return handleFailure(dioError: ex);
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(EmailAddress email) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmPasswordReset({
    String code,
    Password newPassword,
  }) {
    // TODO: implement confirmPasswordReset
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    try {
      // Sign user-out of remote source
      await _remote.signOut();

      // Delete local user--auth cache
      _local.signOut();

      // Notify listeners
      await sink();
    } on DioError catch (ex) {
      // Delete local user--auth cache
      _local.signOut();
      return handleFailure(authFailure: AuthFailure(message: "Signing out..."));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> facebookAuthentication(
      [Object pendingCredentials]) {
    // TODO: implement facebookAuthentication
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> googleAuthentication(
      [Object pendingCredentials]) {
    // TODO: implement googleAuthentication
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> twitterAuthentication(
      [Object pendingCredentials]) {
    // TODO: implement twitterAuthentication
    throw UnimplementedError();
  }

  Future<void> getAndCacheUserInfo([UserDTO temp]) async {
    UserDTO dto = temp;
    if (temp.isNull) {
      // Check if device has good connection
      final _checkConn = await this.checkHasGoodInternet();
      // Fetch Updated user info from remote source
      dto = await _checkConn.fold(
        (f) => throw f,
        (r) async => (await _remote.fetchUserInfo()).fold(
          (f) => _local.getCachedUserInfo().fold(() => throw f, id),
          id,
        ),
      );
    }

    // Cache updated user info
    await _local.cacheAuthenticatedUser(dto);
  }

  Future<Either<AuthFailure, R>> handleFailure<R>({
    DioError dioError,
    AuthFailure authFailure,
  }) async {
    AuthFailure _exception = authFailure;

    switch (dioError?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        _exception = AuthFailure.timeout();
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        _exception = AuthFailure.receiveTimeout();
        break;
      case DioErrorType.DEFAULT:
      case DioErrorType.RESPONSE:
        _exception = AuthFailure.fromJson(dioError.response.data).copyWith(
          code: dioError.response?.data['code'] ?? dioError.response.statusCode,
        );
        break;
      case DioErrorType.SEND_TIMEOUT:
        _exception = AuthFailure.timeout();
        break;
      default:
        _exception = authFailure ?? AuthFailure.unknownFailure();
    }

    // Sink all unrelated auth-failures
    // propagate any necessary data upwards
    await sink(left(_exception));

    return left(_exception);
  }
}
