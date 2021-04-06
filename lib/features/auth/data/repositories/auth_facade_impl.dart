import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
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
import 'package:pexza/features/core/domain/entities/fields/date_time_field.dart';
import 'package:pexza/utils/utils.dart';

@LazySingleton(as: AuthFacade)
class AuthFacadeImpl extends AuthFacade {
  final AuthRemoteDatasource _remote;
  final AuthLocalDatasource _local;
  StreamController<Option<User>> __controller;

  AuthFacadeImpl(
    this._remote,
    this._local,
  ) : __controller = StreamController.broadcast();

  @override
  Future<void> sink([Option<User> user]) async =>
      __controller.sink.add(user ?? await currentUser);

  @override
  Future<Option<User>> get currentUser async {
    // Check if device has good connection
    final _checkConn = await this.checkHasGoodInternet();

    return _checkConn.fold(
      // If no internet, return cached user
      (_) => _local.getCachedUserInfo().fold(
            () => none(),
            (dto) => some(dto.domain),
          ),
      // Fetch fresh user data from remote
      (_) async => (await _remote.fetchUserInfo()).fold(
        (f) => _local.getCachedUserInfo().fold(
              () => none(),
              (dto) => some(dto.domain),
            ),
        (dto) => some(dto.domain),
      ),
    );
  }

  @override
  Stream<Option<User>> get onAuthStateChanged => __controller.stream;

  @override
  Future<Either<AuthFailure, Unit>> createAccount({
    @required Role role,
    @required DisplayName firstName,
    @required DisplayName lastName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Gender gender,
    @required AgeField age,
    @required Password password,
  }) async {
    try {
      // Check if device has good connection
      final _result = await this.checkHasGoodInternet();

      await _result.fold(
        // Re-Throw Exception
        (f) => throw f,
        // Attempt Registration
        (_) async => await _remote.createUserAccount(
          role: role,
          firstName: firstName.getOrNull,
          lastName: lastName.getOrNull,
          emailAddress: emailAddress.getOrNull,
          phone: phone.getOrNull,
          gender: gender.getOrNull?.name,
          age: age.getOrNull,
          password: password.getOrNull,
        ),
      );

      // Automatically Login new User
      await this.login(role: role, phone: phone, password: password);

      return right(unit);
    } on AuthFailure catch (ex) {
      return left(ex);
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          return left(AuthFailure.timeout());
          break;
        default:
          return handleDioAuthException(ex);
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> login({
    @required Role role,
    @required Phone phone,
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
          role: role,
          phone: phone.getOrNull,
          password: password.getOrNull,
        ),
      );

      //// Cache Access token
      _local.cacheUserAccessToken(_response.data);

      // Check if device has good connection
      final _checkConn = await this.checkHasGoodInternet();
      // Fetch Updated user info from remote source
      final UserDTO dto = await _checkConn.fold(
        (f) => throw f,
        (r) async => (await _remote.fetchUserInfo()).fold(
          (f) => throw f,
          id,
        ),
      );

      // Cache updated user info
      await _local.cacheAuthenticatedUser(
        dto,
        loginResponse: _response.data,
      );

      // Notify listeners
      await sink();

      return right(unit);
    } on AuthFailure catch (ex) {
      return left(ex);
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          return left(AuthFailure.timeout());
          break;
        default:
          return handleDioAuthException(ex, role: role);
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
          role: Role.valueOf(dto.role),
          userDTO: dto,
        ),
      ),
    );

    // Store new Access token
    _local.cacheUserAccessToken(_response.data);

    await sink();
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
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          return left(AuthFailure.timeout());
          break;
        default:
          return handleDioAuthException(ex);
      }
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

  Future<Either<AuthFailure, R>> handleDioAuthException<R>(
    DioError ex, {
    Role role,
  }) async {
    final _exception = AuthFailure.fromJson(ex.response.data).copyWith(
      code: ex.response.statusCode.toString(),
    );

    if (_exception.is401)
      return left(AuthFailure.unAuthenticated(
        code: ex.response.statusCode.toString(),
        message: role.fold(
          landlord: () => "This account is registered as a Tenant!",
          tenant: () => "This account is registered as a Landlord!",
        ),
      ));

    return left(_exception);
  }
}
