// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthProviderTearOff {
  const _$AuthProviderTearOff();

// ignore: unused_element
  _AuthProvider call(
      {@required @nullable String id,
      @required @nullable String displayName,
      @required @nullable String email,
      @required @nullable String phoneNumber,
      @required @nullable String photoURL,
      @required @nullable String providerId}) {
    return _AuthProvider(
      id: id,
      displayName: displayName,
      email: email,
      phoneNumber: phoneNumber,
      photoURL: photoURL,
      providerId: providerId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthProvider = _$AuthProviderTearOff();

/// @nodoc
mixin _$AuthProvider {
  @nullable
  String get id;
  @nullable
  String get displayName;
  @nullable
  String get email;
  @nullable
  String get phoneNumber;
  @nullable
  String get photoURL;
  @nullable
  String get providerId;

  @JsonKey(ignore: true)
  $AuthProviderCopyWith<AuthProvider> get copyWith;
}

/// @nodoc
abstract class $AuthProviderCopyWith<$Res> {
  factory $AuthProviderCopyWith(
          AuthProvider value, $Res Function(AuthProvider) then) =
      _$AuthProviderCopyWithImpl<$Res>;
  $Res call(
      {@nullable String id,
      @nullable String displayName,
      @nullable String email,
      @nullable String phoneNumber,
      @nullable String photoURL,
      @nullable String providerId});
}

/// @nodoc
class _$AuthProviderCopyWithImpl<$Res> implements $AuthProviderCopyWith<$Res> {
  _$AuthProviderCopyWithImpl(this._value, this._then);

  final AuthProvider _value;
  // ignore: unused_field
  final $Res Function(AuthProvider) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object photoURL = freezed,
    Object providerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthProviderCopyWith<$Res>
    implements $AuthProviderCopyWith<$Res> {
  factory _$AuthProviderCopyWith(
          _AuthProvider value, $Res Function(_AuthProvider) then) =
      __$AuthProviderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String id,
      @nullable String displayName,
      @nullable String email,
      @nullable String phoneNumber,
      @nullable String photoURL,
      @nullable String providerId});
}

/// @nodoc
class __$AuthProviderCopyWithImpl<$Res> extends _$AuthProviderCopyWithImpl<$Res>
    implements _$AuthProviderCopyWith<$Res> {
  __$AuthProviderCopyWithImpl(
      _AuthProvider _value, $Res Function(_AuthProvider) _then)
      : super(_value, (v) => _then(v as _AuthProvider));

  @override
  _AuthProvider get _value => super._value as _AuthProvider;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object photoURL = freezed,
    Object providerId = freezed,
  }) {
    return _then(_AuthProvider(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      providerId:
          providerId == freezed ? _value.providerId : providerId as String,
    ));
  }
}

/// @nodoc
class _$_AuthProvider extends _AuthProvider {
  const _$_AuthProvider(
      {@required @nullable this.id,
      @required @nullable this.displayName,
      @required @nullable this.email,
      @required @nullable this.phoneNumber,
      @required @nullable this.photoURL,
      @required @nullable this.providerId})
      : super._();

  @override
  @nullable
  final String id;
  @override
  @nullable
  final String displayName;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final String phoneNumber;
  @override
  @nullable
  final String photoURL;
  @override
  @nullable
  final String providerId;

  @override
  String toString() {
    return 'AuthProvider(id: $id, displayName: $displayName, email: $email, phoneNumber: $phoneNumber, photoURL: $photoURL, providerId: $providerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthProvider &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(providerId);

  @JsonKey(ignore: true)
  @override
  _$AuthProviderCopyWith<_AuthProvider> get copyWith =>
      __$AuthProviderCopyWithImpl<_AuthProvider>(this, _$identity);
}

abstract class _AuthProvider extends AuthProvider {
  const _AuthProvider._() : super._();
  const factory _AuthProvider(
      {@required @nullable String id,
      @required @nullable String displayName,
      @required @nullable String email,
      @required @nullable String phoneNumber,
      @required @nullable String photoURL,
      @required @nullable String providerId}) = _$_AuthProvider;

  @override
  @nullable
  String get id;
  @override
  @nullable
  String get displayName;
  @override
  @nullable
  String get email;
  @override
  @nullable
  String get phoneNumber;
  @override
  @nullable
  String get photoURL;
  @override
  @nullable
  String get providerId;
  @override
  @JsonKey(ignore: true)
  _$AuthProviderCopyWith<_AuthProvider> get copyWith;
}
