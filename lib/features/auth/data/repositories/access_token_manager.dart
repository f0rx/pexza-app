import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/token_response/token_response.dart';
import 'package:pexza/utils/utils.dart';

enum TOKEN_TYPE {
  bearer,
  oAuth2,
}

@lazySingleton
class AccessTokenManager {
  AccessTokenManager();

  Future<void> save({
    String token,
    TokenResponse responseToken,
    TOKEN_TYPE tokenType = TOKEN_TYPE.bearer,
    Duration duration = const Duration(days: 365),
  }) async {
    final String _token = token ?? responseToken?.accessToken;
    // Retrieve opened box
    final _tokenBox = App.box<String>(Keys.HIVE_BOX_ACCESS_TOKEN_KEY);
    // Store expiry date
    _tokenBox.put(
      Keys.HIVE_ACCESS_TOKEN_EXPIRY_KEY,
      responseToken?.expiryDate?.toString() ??
          duration.inMilliseconds.toString(),
    );

    switch (tokenType) {
      case TOKEN_TYPE.bearer:
        String tokenType = "Bearer";
        _tokenBox.put(Keys.HIVE_ACCESS_TOKEN_KEY, "$tokenType $_token");
        break;
      default:
        _tokenBox.put(Keys.HIVE_ACCESS_TOKEN_KEY, "$_token");
    }
  }

  String fetch() {
    // Retrieve opened box
    return App.box<String>(Keys.HIVE_BOX_ACCESS_TOKEN_KEY)
        .get(Keys.HIVE_ACCESS_TOKEN_KEY);
  }
}
