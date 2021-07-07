import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
import 'package:pexza/features/auth/data/sources/sources.dart';
import 'package:pexza/features/auth/domain/repositories/auth_facade.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

mixin SocialAuthMixin on AuthFacade {
  AuthRemoteDatasource get remote;
  AuthLocalDatasource get local;
  FirebaseAnalytics get analytics;
  GoogleSignIn get googleSignIn;
  FacebookLogin get facebookLogin;

  @override
  Future<Either<AuthResponse, Unit>> facebookAuthentication() async {
    try {
      // First we'll check for stable Internet connection
      final _result = await checkHasGoodInternet();

      return _result.fold(
        (f) async => throw f,
        (r) async {
          // Clear cached / authenticated user but do not notify UI
          if (await facebookLogin.isLoggedIn) await signOut(false);

          final login = await facebookLogin.logIn(permissions: [
            FacebookPermission.email,
            FacebookPermission.publicProfile,
            FacebookPermission.userGender,
            FacebookPermission.userBirthday,
          ]);

          return login.fold(
            success: (token) async {
              try {
                // Fetch AuthCredentials
                final response =
                    await remote.signInWithFacebook(env.flavor.fold(
                  dev: () =>
                      "EAAGkAOqJ3YcBAOGezFzI4tW1lgKNPsYdLZAbpbuLZBKrArHGZAsrdKBAVfYd3zM4iitb1uOfrdtT4QzGaMbHU7HON01sjBpyT4nVZBY04MUIi87cMsu2DR1bZAusY7XzTdhJMNA8Wzm1ZAZBBcBa1TJgRfA9f0inJv5tex4QKewffEZA9PFJ4v5J",
                  prod: () => token,
                ));

                await analytics.logLogin(loginMethod: "facebook");

                // cache access token
                local.cacheUserAccessToken(response.data);

                // sink new user
                await sink();

                return right(unit);
              } on DioError catch (e) {
                // log.e(e.response.data['message']);
                return handleFailure(dioError: e);
              }
            },
            cancel: () => left(AuthResponse.cancelledAction()),
            failed: (status) async {
              // Log error to crashlytics (if available)
              await env.flavor.fold(
                prod: () async =>
                    await getIt<FirebaseCrashlytics>().recordFlutterError(
                  FlutterErrorDetails(exception: login.error),
                ),
                dev: () {
                  print("Facebook error TITLE ===> "
                      "${login.error?.localizedTitle}");
                  print("Facebook error (for developer) ===> "
                      "${login.error?.developerMessage}");
                },
              );

              return left(AuthResponse.unknownFailure(
                code: status.index ?? 404,
                message:
                    "${login?.error?.localizedDescription ?? 'Provider error. Please contact support.'}",
              ));
            },
          );
        },
      );
    } on AuthResponse catch (e) {
      return left(e);
    } on PlatformException catch (e) {
      log.e(e);
      return left(AuthResponse.unknownFailure(
        code: 404,
        message: e.message,
      ));
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> googleAuthentication() async {
    try {
      // First we'll check for stable Internet connection
      final _conn = await checkHasGoodInternet();

      return await _conn.fold(
        (f) => throw f,
        (_) async {
          // Clear cached / authenticated user but do not notify UI
          if (await googleSignIn.isSignedIn()) await signOut(false);

          // Attempt authenticating user with google credentials
          var account = await googleSignIn.signIn();
          // If null, => user cancelled authentication
          if (account == null) throw AuthResponse.cancelledAction();

          // get authentication details [idToken], [accessToken]
          final authentication = await account.authentication;

          try {
            log.w("ACCESS TOKEN =====> ${authentication.accessToken}");

            // Fetch AuthCredentials
            final response =
                await remote.signInWithGoogle(authentication.accessToken);

            await analytics.logLogin(loginMethod: "google");

            // cache access token
            local.cacheUserAccessToken(response.data);

            // sink new user
            await sink();

            return right(unit);
          } on DioError catch (e) {
            // log.e(e.response.data['message']);
            return handleFailure(dioError: e);
          }
        },
      );
    } on AuthResponse catch (e) {
      return left(e);
    } on PlatformException catch (e) {
      return left(AuthResponse.unknownFailure(
        code: 404,
        message: e.message,
      ));
    }
  }

  @override
  Future<Either<AuthResponse, Unit>> appleAuthentication() async {
    try {
      // First we'll check for stable Internet connection
      final _conn = await checkHasGoodInternet();

      return await _conn.fold(
        (f) => throw f,
        (_) async {
          return left(AuthResponse.unknownFailure(
            message: "Sign-in with Apple coming soon!",
          ));
        },
      );
    } on AuthResponse catch (e) {
      return left(e);
    } on PlatformException catch (e) {
      return left(AuthResponse.unknownFailure(
        code: 404,
        message: e.message,
      ));
    }
  }
}

extension XFacebookLoginStatus on FacebookLoginResult {
  U fold<U>({
    U Function(String) success,
    U Function() cancel,
    U Function(FacebookLoginStatus) failed,
  }) {
    switch (status) {
      case FacebookLoginStatus.success:
        return success?.call(accessToken.token);
      case FacebookLoginStatus.error:
        return failed?.call(status);
      case FacebookLoginStatus.cancel:
      default:
        return cancel?.call();
    }
  }
}
