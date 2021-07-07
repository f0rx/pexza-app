import 'package:pexza/features/auth/domain/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
import 'package:pexza/features/auth/data/sources/sources.dart';
import 'package:pexza/features/core/data/models/server_field_errors/server_field_errors.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

mixin PasswordResetMixin on AuthFacade {
  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;

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
          (_email) => remote.sendPasswordResetEmail(_email),
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
        (_) => remote.confirmPasswordReset(
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
}
