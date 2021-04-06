import 'package:firebase_auth/firebase_auth.dart';

enum FIELD_VALIDATION { NONE, BASIC, DEEP }

class AuthProviderType {
  // ignore: non_constant_identifier_names
  static AuthProviderType Google = AuthProviderType._(GoogleAuthProvider.PROVIDER_ID);

  // ignore: non_constant_identifier_names
  static AuthProviderType Facebook = AuthProviderType._(FacebookAuthProvider.PROVIDER_ID);

  // ignore: non_constant_identifier_names
  static AuthProviderType Twitter = AuthProviderType._(TwitterAuthProvider.PROVIDER_ID);

  // ignore: non_constant_identifier_names
  static AuthProviderType Password = AuthProviderType._(EmailAuthProvider.EMAIL_PASSWORD_SIGN_IN_METHOD);

  // ignore: non_constant_identifier_names
  static AuthProviderType EmailLink = AuthProviderType._(EmailAuthProvider.EMAIL_LINK_SIGN_IN_METHOD);

  // ignore: non_constant_identifier_names
  static AuthProviderType Phone = AuthProviderType._(PhoneAuthProvider.PHONE_SIGN_IN_METHOD);

  final String name;

  const AuthProviderType._(this.name);

  static List<AuthProviderType> get values => [
        Google,
        Facebook,
        Twitter,
        Password,
        EmailLink,
        Phone,
      ];

  static AuthProviderType valueOf(String name) => switchCase<AuthProviderType>(
        name,
        isGoogle: (name) => Google,
        isFacebook: (name) => Facebook,
        isTwitter: (name) => Twitter,
        isPassword: (name) => Password,
        isEmailLink: (name) => EmailLink,
        isPhone: (name) => Phone,
      );

  static T switchCase<T>(
    String name, {
    T Function(String name) isGoogle,
    T Function(String name) isFacebook,
    T Function(String name) isTwitter,
    T Function(String name) isPassword,
    T Function(String name) isEmailLink,
    T Function(String name) isPhone,
    T Function(String name) orElse,
  }) {
    try {
      switch (name) {
        case 'google.com':
          return isGoogle('Google');
        case 'facebook.com':
          return isFacebook('Facebook');
        case 'twitter.com':
          return isTwitter('Twitter');
        case 'email':
          return isPassword('Password');
        case 'password':
          return isPassword('Password');
        case 'emailLink':
          return isEmailLink('Email link');
        default:
          return orElse != null ? orElse(name) : throw ArgumentError(name);
      }
    } on NoSuchMethodError {
      return orElse(name);
    }
  }

  @override
  String toString() => name;
}
