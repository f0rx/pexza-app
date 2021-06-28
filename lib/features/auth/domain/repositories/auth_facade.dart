import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

abstract class AuthFacade extends Facade {
  Future<Either<AuthResponse, Option<User>>> get currentUser;

  Stream<Either<AuthResponse, Option<User>>> get onAuthStateChanged;

  Future<void> sink([Either<AuthResponse, Option<User>> userOrFailure]);

  Future<Either<AuthResponse, Unit>> login({
    @required EmailAddress email,
    @required Password password,
  });

  Future<Either<AuthResponse, Unit>> createAccount({
    @required Role role,
    @required DisplayName firstName,
    @required DisplayName lastName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Gender gender,
    @required DateTimeField dateOfBirth,
    @required Password password,
  });

  Future<Either<AuthResponse, Unit>> updateProfile({
    DisplayName firstName,
    DisplayName lastName,
    Phone phone,
    Gender gender,
    DateTimeField dateOfBirth,
  });

  // Future<Either<AuthResponse, Unit>> changePassword({
  //   Password oldPassword,
  //   Password newPassword,
  // });

  Future<Either<AuthResponse, Unit>> resendVerificationEmail(
    EmailAddress email,
  );

  Future<Either<AuthResponse, Unit>> googleAuthentication([
    Object pendingCredentials,
  ]);

  Future<Either<AuthResponse, Unit>> facebookAuthentication([
    Object pendingCredentials,
  ]);

  Future<Either<AuthResponse, Unit>> twitterAuthentication([
    Object pendingCredentials,
  ]);

  Future<Either<AuthResponse, Unit>> verifyEmailAddress({
    EmailTokenField token,
  });

  Future<Either<AuthResponse, AuthResponse>> sendPasswordResetEmail(
      EmailAddress email);

  Future<Either<AuthResponse, AuthResponse>> confirmPasswordReset({
    String code,
    EmailAddress email,
    Password newPassword,
  });

  Future<void> signOut();

  Future<Either<AuthResponse, bool>> checkHasGoodInternet() async {
    final isConnected = (await getIt<Connectivity>().checkConnectivity()) !=
        ConnectivityResult.none;

    if (!isConnected) return left(AuthResponse.noInternetConnection());

    final hasInternet = await getIt<DataConnectionChecker>().hasConnection;

    if (isConnected && !hasInternet)
      return left(AuthResponse.poorInternetConnection());

    return right(isConnected && hasInternet);
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
          code:
              dioError.response?.data['code'] ?? dioError?.response?.statusCode,
        );
        // Log Exception to Firebase Analytics
        if (dioError?.response?.data != null)
          await env.flavor.fold(
            prod: () async => // Log Inknown Exceptions to Firebase Analytics
                await getIt<FirebaseCrashlytics>().recordFlutterError(
              FlutterErrorDetails(exception: dioError?.message, stack: trace),
            ),
          );
        break;
      case DioErrorType.SEND_TIMEOUT:
        _exception = AuthResponse.timeout();
        break;
      // case DioErrorType.DEFAULT:
      default:
        env.flavor.fold(dev: () {
          log.wtf(dioError?.error);
          log.wtf(dioError?.request?.receiveTimeout);
          log.wtf(dioError?.request?.path);
          log.wtf(dioError?.response?.data);
          log.wtf(dioError?.response?.statusCode);
          log.wtf(dioError?.response?.statusMessage);
        });

        _exception = authResponse ??
            AuthResponse.unknownFailure(message: dioError?.message);
        if (dioError?.message != null)
          await env.flavor.fold(
            prod: () async => // Log Inknown Exceptions to Firebase Analytics
                await getIt<FirebaseCrashlytics>().recordFlutterError(
              FlutterErrorDetails(exception: dioError?.message, stack: trace),
            ),
          );
    }

    // Sink all unrelated auth-failures
    // propagate any necessary data upwards
    await sink(left(_exception));

    return left(_exception);
  }
}
