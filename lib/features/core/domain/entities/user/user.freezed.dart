// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of user;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@nullable UniqueId id,
      @nullable Role role,
      @nullable DisplayName displayName,
      @nullable EmailAddress email,
      @nullable bool isEmailVerified,
      @nullable AuthProviders providers,
      @nullable Phone phone,
      @nullable String photoURL,
      @nullable DateTime createdAt,
      @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt}) {
    return _User(
      id: id,
      role: role,
      displayName: displayName,
      email: email,
      isEmailVerified: isEmailVerified,
      providers: providers,
      phone: phone,
      photoURL: photoURL,
      createdAt: createdAt,
      lastSeenAt: lastSeenAt,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @nullable
  UniqueId get id;
  @nullable
  Role get role;
  @nullable
  DisplayName get displayName;
  @nullable
  EmailAddress get email;
  @nullable
  bool get isEmailVerified;
  @nullable
  AuthProviders get providers;
  @nullable
  Phone get phone;
  @nullable
  String get photoURL;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get lastSeenAt;
  @nullable
  DateTime get updatedAt;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId id,
      @nullable Role role,
      @nullable DisplayName displayName,
      @nullable EmailAddress email,
      @nullable bool isEmailVerified,
      @nullable AuthProviders providers,
      @nullable Phone phone,
      @nullable String photoURL,
      @nullable DateTime createdAt,
      @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object isEmailVerified = freezed,
    Object providers = freezed,
    Object phone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      role: role == freezed ? _value.role : role as Role,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      providers:
          providers == freezed ? _value.providers : providers as AuthProviders,
      phone: phone == freezed ? _value.phone : phone as Phone,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId id,
      @nullable Role role,
      @nullable DisplayName displayName,
      @nullable EmailAddress email,
      @nullable bool isEmailVerified,
      @nullable AuthProviders providers,
      @nullable Phone phone,
      @nullable String photoURL,
      @nullable DateTime createdAt,
      @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object isEmailVerified = freezed,
    Object providers = freezed,
    Object phone = freezed,
    Object photoURL = freezed,
    Object createdAt = freezed,
    Object lastSeenAt = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      role: role == freezed ? _value.role : role as Role,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      providers:
          providers == freezed ? _value.providers : providers as AuthProviders,
      phone: phone == freezed ? _value.phone : phone as Phone,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

/// @nodoc
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {@nullable this.id,
      @nullable this.role,
      @nullable this.displayName,
      @nullable this.email,
      @nullable this.isEmailVerified,
      @nullable this.providers,
      @nullable this.phone,
      @nullable this.photoURL,
      @nullable this.createdAt,
      @nullable this.lastSeenAt,
      @nullable this.updatedAt})
      : super._();

  @override
  @nullable
  final UniqueId id;
  @override
  @nullable
  final Role role;
  @override
  @nullable
  final DisplayName displayName;
  @override
  @nullable
  final EmailAddress email;
  @override
  @nullable
  final bool isEmailVerified;
  @override
  @nullable
  final AuthProviders providers;
  @override
  @nullable
  final Phone phone;
  @override
  @nullable
  final String photoURL;
  @override
  @nullable
  final DateTime createdAt;
  @override
  @nullable
  final DateTime lastSeenAt;
  @override
  @nullable
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, role: $role, displayName: $displayName, email: $email, isEmailVerified: $isEmailVerified, providers: $providers, phone: $phone, photoURL: $photoURL, createdAt: $createdAt, lastSeenAt: $lastSeenAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('isEmailVerified', isEmailVerified))
      ..add(DiagnosticsProperty('providers', providers))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('photoURL', photoURL))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('lastSeenAt', lastSeenAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.providers, providers) ||
                const DeepCollectionEquality()
                    .equals(other.providers, providers)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(providers) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(lastSeenAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@nullable UniqueId id,
      @nullable Role role,
      @nullable DisplayName displayName,
      @nullable EmailAddress email,
      @nullable bool isEmailVerified,
      @nullable AuthProviders providers,
      @nullable Phone phone,
      @nullable String photoURL,
      @nullable DateTime createdAt,
      @nullable DateTime lastSeenAt,
      @nullable DateTime updatedAt}) = _$_User;

  @override
  @nullable
  UniqueId get id;
  @override
  @nullable
  Role get role;
  @override
  @nullable
  DisplayName get displayName;
  @override
  @nullable
  EmailAddress get email;
  @override
  @nullable
  bool get isEmailVerified;
  @override
  @nullable
  AuthProviders get providers;
  @override
  @nullable
  Phone get phone;
  @override
  @nullable
  String get photoURL;
  @override
  @nullable
  DateTime get createdAt;
  @override
  @nullable
  DateTime get lastSeenAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
