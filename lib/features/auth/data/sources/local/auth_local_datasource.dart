import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/token_response/token_response.dart';
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/utils/utils.dart';

@singleton
class AuthLocalDatasource {
  final AccessTokenManager _tokenManager;

  AuthLocalDatasource(this._tokenManager);

  Future<void> cacheAuthenticatedUser(
    UserDTO user, {
    Map<String, dynamic> loginResponse,
  }) async {
    // Cache Access Token, Token Type & Expiry date
    cacheUserAccessToken(loginResponse);

    final userBox = App.box<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);

    // Cache User Info
    return await userBox.put(Keys.HIVE_USER_KEY, user);
  }

  Option<UserDTO> getCachedUserInfo() {
    final userBox = App.box<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);

    final _result = userBox.get(Keys.HIVE_USER_KEY);

    return optionOf(_result);
  }

  void cacheUserAccessToken(Map<String, dynamic> response) =>
      _tokenManager.save(responseToken: TokenResponse.fromJson(response));

  void signOut() {
    final box = App.box<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);
    final accessTokenBox = App.box<String>(Keys.HIVE_BOX_ACCESS_TOKEN_KEY);

    box.delete(Keys.HIVE_USER_KEY);
    accessTokenBox.delete(Keys.HIVE_ACCESS_TOKEN_KEY);
    accessTokenBox.clear();
  }
}
