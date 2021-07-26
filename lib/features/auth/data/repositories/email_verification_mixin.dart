import 'package:pexza/features/auth/domain/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
import 'package:pexza/features/auth/data/sources/sources.dart';
import 'package:pexza/features/core/data/models/server_field_errors/server_field_errors.dart';
import 'package:pexza/features/core/data/models/user/user_dto.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

mixin EmailVerificationMixin on AuthFacade {
  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;

  @override
  Future<Either<AuthResponse, Unit>> verifyEmailAddress({
    EmailTokenField token,
  }) async {
    try {
      final UserDTO _dto =
          (await local.getCachedUserInfo())?.getOrElse(() => null);

      // Check if device has good connection
      final _checkConn = await checkHasGoodInternet();

      await local.signOut(clearAccessToken: true, clearUser: false);

      await _checkConn.fold(
        (f) => throw f,
        (_) => remote.verifyUserEmailAddress(
          _dto.email,
          token.getOrEmpty,
        ),
      );

      await local.signOut();

      await login(
        email: EmailAddress(_dto.email),
        password: Password(_dto.password),
        registered: _dto,
      );

      return right(unit);
    } on AuthResponse catch (ex) {
      return handleFailure(authResponse: ex);
    } on DioError catch (ex, trace) {
      return handleFailure(dioError: ex, trace: trace);
    }
  }

  @override
  Future<Either<AuthResponse, AuthResponse>> resendVerificationEmail(
    EmailAddress email,
  ) async {
    try {
      final _checkConn = await checkHasGoodInternet();

      final _response = await _checkConn.fold(
        (f) => throw f,
        (_) => email.value?.fold(
          (f) => throw AuthResponse(
            message: f?.message,
            errors: ServerFieldErrors(email: [f?.message]),
          ),
          (_email) => remote.resendVerificationEmail(email.getOrNull),
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
