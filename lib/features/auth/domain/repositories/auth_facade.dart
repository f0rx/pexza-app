import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/foundation.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/auth/data/models/auth_failure.dart';
import 'package:pexza/manager/locator/locator.dart';

abstract class AuthFacade extends Facade {
  Future<Either<AuthFailure, Option<User>>> get currentUser;

  Stream<Either<AuthFailure, Option<User>>> get onAuthStateChanged;

  Future<void> sink([Either<AuthFailure, Option<User>> userOrFailure]);

  Future<Either<AuthFailure, Unit>> login({
    @required EmailAddress email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> createAccount({
    @required Role role,
    @required DisplayName firstName,
    @required DisplayName lastName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Gender gender,
    @required DateTimeField dateOfBirth,
    @required Password password,
  });

  Future<void> refreshAccessToken();

  // Future<Either<AuthFailure, Unit>> updateProfile({
  //   DisplayName name,
  //   EmailAddress email,
  //   String photoURL,
  //   bool inFirestore = true,
  // });

  // Future<Either<AuthFailure, Unit>> changePassword({
  //   Password oldPassword,
  //   Password newPassword,
  // });

  Future<Either<AuthFailure, Unit>> googleAuthentication(
      [Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> facebookAuthentication(
      [Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> twitterAuthentication(
      [Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> verifyEmailAddress(
      {EmailAddress email, EmailTokenField token});

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(EmailAddress email);

  Future<Either<AuthFailure, Unit>> confirmPasswordReset(
      {String code, Password newPassword});

  Future<void> signOut();

  Future<Either<AuthFailure, bool>> checkHasGoodInternet() async {
    try {
      final _conn = await getIt<DataConnectionChecker>().hasConnection;
      if (!_conn) throw AuthFailure.poorInternetConnection();
      return right(_conn);
    } on AuthFailure catch (e) {
      return left(e);
    }
  }
}
