import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pexza/features/auth/data/models/token_response/token_response.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/auth/data/models/auth_failure.dart';

abstract class AuthFacade extends Facade {
  Option<User> get currentUser;

  Stream<Option<User>> get onAuthStateChanged;

  void sink([Option<User> user]);

  Future<Either<AuthFailure, Unit>> login({
    @required Role role,
    @required Phone phone,
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

  Future<Either<AuthFailure, TokenResponse>> refreshAccessToken();

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

  // Future<Either<AuthFailure, Unit>> googleAuthentication(
  //     [Object pendingCredentials]);

  // Future<Either<AuthFailure, Unit>> facebookAuthentication(
  //     [Object pendingCredentials]);

  // Future<Either<AuthFailure, Unit>> twitterAuthentication(
  //     [Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(EmailAddress email);

  Future<Either<AuthFailure, Unit>> confirmPasswordReset(
      {String code, Password newPassword});

  Future<void> signOut();
}
