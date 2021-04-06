import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';

@freezed
@immutable
abstract class TokenResponse implements _$TokenResponse {
  const TokenResponse._();

  const factory TokenResponse({
    @nullable
    @JsonKey(includeIfNull: false, name: "access_token")
        String accessToken,
    @nullable
    @JsonKey(includeIfNull: false, name: "token_type")
        String tokenType,
    @nullable @JsonKey(includeIfNull: false, name: "expires_in") int expiryDate,
  }) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}
