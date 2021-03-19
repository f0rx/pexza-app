import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/auth/domain/auth.dart';
import 'package:pexza/utils/utils.dart';

part 'auth_provider.freezed.dart';

@freezed
@immutable
abstract class AuthProvider implements _$AuthProvider {
  const AuthProvider._();

  const factory AuthProvider({
    @required @nullable String id,
    @required @nullable String displayName,
    @required @nullable String email,
    @required @nullable String phoneNumber,
    @required @nullable String photoURL,
    @required @nullable String providerId,
  }) = _AuthProvider;

  bool get isGoogleAuth =>
      !providerId.isNullOrBlank && providerId == AuthProviderType.Google.name;

  bool get isPasswordAuth =>
      !providerId.isNullOrBlank && providerId == AuthProviderType.Password.name;

  bool get isFacebookAuth =>
      !providerId.isNullOrBlank && providerId == AuthProviderType.Facebook.name;
}
