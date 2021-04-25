import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/foundation.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/auth/data/models/auth_response/auth_response.dart';
import 'package:pexza/manager/locator/locator.dart';

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

  Future<Either<AuthResponse, Unit>> googleAuthentication(
      [Object pendingCredentials]);

  Future<Either<AuthResponse, Unit>> facebookAuthentication(
      [Object pendingCredentials]);

  Future<Either<AuthResponse, Unit>> twitterAuthentication(
      [Object pendingCredentials]);

  Future<Either<AuthResponse, Unit>> verifyEmailAddress({
    EmailAddress email,
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
    try {
      final _conn = await getIt<DataConnectionChecker>().hasConnection;
      if (!_conn) throw AuthResponse.poorInternetConnection();
      return right(_conn);
    } on AuthResponse catch (e) {
      return left(e);
    }
  }
}
