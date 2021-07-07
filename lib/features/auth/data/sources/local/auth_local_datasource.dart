import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/token_response/token_response.dart';
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/data/database/app_database.dart';
import 'package:pexza/utils/utils.dart';

@singleton
class AuthLocalDatasource {
  final AccessTokenManager _tokenManager;
  final AppDatabase _database;

  AuthLocalDatasource(this._tokenManager, this._database);

  Future<void> cacheAuthenticatedUser(
    UserDTO user, {
    Map<String, dynamic> loginResponse,
  }) async {
    // Cache Access Token, Token Type & Expiry date
    if (!loginResponse.isNull) cacheUserAccessToken(loginResponse);

    final dao = _database.userDAO;

    await dao.insert(FloorUser.fromDTO(user));
  }

  Future<Option<UserDTO>> getCachedUserInfo() async {
    final dao = _database.userDAO;

    final _result = await dao.last();

    return optionOf(_result?.dto);
  }

  void cacheUserAccessToken(Map<String, dynamic> response) =>
      _tokenManager.save(responseToken: TokenResponse.fromJson(response));

  Future<void> signOut({
    bool clearUser = true,
    bool clearAccessToken = true,
  }) async {
    if (clearUser) {
      final dao = _database.userDAO;
      final users = await dao.all();
      await dao.deleteAll(users);
    }

    if (clearAccessToken) {
      final accessTokenBox = App.box<String>(Keys.HIVE_BOX_ACCESS_TOKEN_KEY);
      accessTokenBox.delete(Keys.HIVE_ACCESS_TOKEN_KEY);
      accessTokenBox.clear();
    }
  }
}
