// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return _TokenResponse.fromJson(json);
}

/// @nodoc
class _$TokenResponseTearOff {
  const _$TokenResponseTearOff();

// ignore: unused_element
  _TokenResponse call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'access_token')
          String accessToken,
      @nullable
      @JsonKey(includeIfNull: false, name: 'token_type')
          String tokenType,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expires_in')
          int expiryDate}) {
    return _TokenResponse(
      accessToken: accessToken,
      tokenType: tokenType,
      expiryDate: expiryDate,
    );
  }

// ignore: unused_element
  TokenResponse fromJson(Map<String, Object> json) {
    return TokenResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TokenResponse = _$TokenResponseTearOff();

/// @nodoc
mixin _$TokenResponse {
  @nullable
  @JsonKey(includeIfNull: false, name: 'access_token')
  String get accessToken;
  @nullable
  @JsonKey(includeIfNull: false, name: 'token_type')
  String get tokenType;
  @nullable
  @JsonKey(includeIfNull: false, name: 'expires_in')
  int get expiryDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TokenResponseCopyWith<TokenResponse> get copyWith;
}

/// @nodoc
abstract class $TokenResponseCopyWith<$Res> {
  factory $TokenResponseCopyWith(
          TokenResponse value, $Res Function(TokenResponse) then) =
      _$TokenResponseCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'access_token')
          String accessToken,
      @nullable
      @JsonKey(includeIfNull: false, name: 'token_type')
          String tokenType,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expires_in')
          int expiryDate});
}

/// @nodoc
class _$TokenResponseCopyWithImpl<$Res>
    implements $TokenResponseCopyWith<$Res> {
  _$TokenResponseCopyWithImpl(this._value, this._then);

  final TokenResponse _value;
  // ignore: unused_field
  final $Res Function(TokenResponse) _then;

  @override
  $Res call({
    Object accessToken = freezed,
    Object tokenType = freezed,
    Object expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      expiryDate: expiryDate == freezed ? _value.expiryDate : expiryDate as int,
    ));
  }
}

/// @nodoc
abstract class _$TokenResponseCopyWith<$Res>
    implements $TokenResponseCopyWith<$Res> {
  factory _$TokenResponseCopyWith(
          _TokenResponse value, $Res Function(_TokenResponse) then) =
      __$TokenResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'access_token')
          String accessToken,
      @nullable
      @JsonKey(includeIfNull: false, name: 'token_type')
          String tokenType,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expires_in')
          int expiryDate});
}

/// @nodoc
class __$TokenResponseCopyWithImpl<$Res>
    extends _$TokenResponseCopyWithImpl<$Res>
    implements _$TokenResponseCopyWith<$Res> {
  __$TokenResponseCopyWithImpl(
      _TokenResponse _value, $Res Function(_TokenResponse) _then)
      : super(_value, (v) => _then(v as _TokenResponse));

  @override
  _TokenResponse get _value => super._value as _TokenResponse;

  @override
  $Res call({
    Object accessToken = freezed,
    Object tokenType = freezed,
    Object expiryDate = freezed,
  }) {
    return _then(_TokenResponse(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      expiryDate: expiryDate == freezed ? _value.expiryDate : expiryDate as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TokenResponse extends _TokenResponse {
  const _$_TokenResponse(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'access_token')
          this.accessToken,
      @nullable
      @JsonKey(includeIfNull: false, name: 'token_type')
          this.tokenType,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expires_in')
          this.expiryDate})
      : super._();

  factory _$_TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenResponseFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'access_token')
  final String accessToken;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'token_type')
  final String tokenType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expires_in')
  final int expiryDate;

  @override
  String toString() {
    return 'TokenResponse(accessToken: $accessToken, tokenType: $tokenType, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiryDate);

  @JsonKey(ignore: true)
  @override
  _$TokenResponseCopyWith<_TokenResponse> get copyWith =>
      __$TokenResponseCopyWithImpl<_TokenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenResponseToJson(this);
  }
}

abstract class _TokenResponse extends TokenResponse {
  const _TokenResponse._() : super._();
  const factory _TokenResponse(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'access_token')
          String accessToken,
      @nullable
      @JsonKey(includeIfNull: false, name: 'token_type')
          String tokenType,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expires_in')
          int expiryDate}) = _$_TokenResponse;

  factory _TokenResponse.fromJson(Map<String, dynamic> json) =
      _$_TokenResponse.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'access_token')
  String get accessToken;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'token_type')
  String get tokenType;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expires_in')
  int get expiryDate;
  @override
  @JsonKey(ignore: true)
  _$TokenResponseCopyWith<_TokenResponse> get copyWith;
}
