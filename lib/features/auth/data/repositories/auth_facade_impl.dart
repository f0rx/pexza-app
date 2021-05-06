import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart';
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
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
  final FirebaseAnalytics _analytics;
  final FirebaseCrashlytics _crashlytics;
  StreamController<Either<AuthResponse, Option<User>>> __controller;

  AuthFacadeImpl(
    this._remote,
    this._local,
    this._analytics,
    this._crashlytics,
  ) : __controller = StreamController.broadcast();

  @override
  Future<void> sink([Either<AuthResponse, Option<User>> userOrFailure]) async =>
      __controller.sink.add(userOrFailure ?? await currentUser);

  @override
  Future<Either<AuthResponse, Option<User>>> get currentUser async {
    // Check if device has good connection
    final _checkConn = await this.checkHasGoodInternet();

    Future<Either<AuthResponse, Option<User>>> _left() async {
      return _local.getCachedUserInfo().fold(
        () => right(none()),
        (dto) {
          try {
            return right(some(dto.domain));
          } catch (e) {
            return handleFailure(
              authResponse: AuthResponse(
                message: "User account not verified!",
                code: AuthResponse.UNVERIFIED,
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
    } on AuthResponse catch (ex) {
      return handleFailure(
        authResponse: ex,
      );
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> login({
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

      // Login was successful, so we get fresh server update
      // It makes sense that this should be here
      await this.getAndCacheUserInfo();

      // Log Firebase Analytics Login event
      _analytics.logLogin(loginMethod: "jwt");

      // Sink new signin event
      await sink();

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(
        authResponse: ex,
      );
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> verifyEmailAddress({
    EmailAddress email,
    EmailTokenField token,
  }) async {
    try {
      final UserDTO dto = _local.getCachedUserInfo()?.getOrElse(() => null);
      // Check if device has good connection
      final _checkConn = await this.checkHasGoodInternet();

      _local.signOut(clearAccessToken: true, clearUser: false);

      await _checkConn.fold(
        (f) => throw f,
        (_) => _remote.verifyUserEmailAddress(
          email.getOrEmpty,
          token.getOrEmpty,
        ),
      );

      _local.signOut();

      await this.login(
        email: EmailAddress(dto.email),
        password: Password(dto.password),
      );

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(
        authResponse: ex,
      );
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
      final _result = await this.checkHasGoodInternet();

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
      return handleFailure(
        authResponse: ex,
      );
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
      final _result = await this.checkHasGoodInternet();

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
      final _result = await this.checkHasGoodInternet();

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
      _local.signOut();

      // Notify listeners
      await sink();
    } on DioError catch (_) {
      // Delete local user--auth cache
      _local.signOut();
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

  Future<Either<AuthResponse, R>> handleFailure<R>({
    DioError dioError,
    AuthResponse authResponse,
    StackTrace trace,
  }) async {
    AuthResponse _exception = authResponse;

    switch (dioError?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        _exception = AuthResponse.timeout();
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        _exception = AuthResponse.receiveTimeout();
        break;
      case DioErrorType.RESPONSE:
        _exception = AuthResponse.fromJson(dioError.response.data).copyWith(
          code: dioError.response?.data['code'] ?? dioError.response.statusCode,
        );
        // Log Exception to Firebase Analytics
        if (dioError?.response?.data != null)
          _crashlytics.recordFlutterError(
            FlutterErrorDetails(
              exception: dioError?.response?.data,
              stack: trace,
            ),
          );
        break;
      case DioErrorType.SEND_TIMEOUT:
        _exception = AuthResponse.timeout();
        break;
      case DioErrorType.DEFAULT:
      default:
        _exception = authResponse ??
            AuthResponse.unknownFailure(message: dioError?.message);
        if (dioError?.message != null)
          // Log Inknown Exceptions to Firebase Analytics
          _crashlytics.recordFlutterError(
            FlutterErrorDetails(exception: dioError?.message, stack: trace),
          );
    }

    // Sink all unrelated auth-failures
    // propagate any necessary data upwards
    await sink(left(_exception));

    return left(_exception);
  }
}
