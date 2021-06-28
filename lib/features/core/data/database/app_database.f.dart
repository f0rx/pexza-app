// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of app_database.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FloorUserTearOff {
  const _$FloorUserTearOff();

// ignore: unused_element
  _FloorUser call(
      {@primaryKey
          int id,
      @nullable
          Role role,
      @nullable
          String token,
      @nullable
      @ColumnInfo(name: 'first_name')
          String firstName,
      @nullable
      @ColumnInfo(name: 'last_name')
          String lastName,
      @nullable
          String email,
      @nullable
          String gender,
      @nullable
      @ColumnInfo(name: 'dob')
          String dateOfBirth,
      String phone,
      @nullable
          String provider,
      @nullable
          String password,
      @nullable
          String photo,
      @nullable
      @ColumnInfo(name: 'verified_at')
          bool isEmailVerified,
      @nullable
      @ColumnInfo(name: 'verification_sent_at')
          String verificationCodeSentAt,
      @nullable
      @ColumnInfo(name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @nullable
      @ColumnInfo(name: 'created_at')
          DateTime createdAt,
      @nullable
      @ColumnInfo(name: 'updated_at')
          DateTime updatedAt,
      @nullable
      @ColumnInfo(name: 'deleted_at')
          DateTime deletedAt}) {
    return _FloorUser(
      id: id,
      role: role,
      token: token,
      firstName: firstName,
      lastName: lastName,
      email: email,
      gender: gender,
      dateOfBirth: dateOfBirth,
      phone: phone,
      provider: provider,
      password: password,
      photo: photo,
      isEmailVerified: isEmailVerified,
      verificationCodeSentAt: verificationCodeSentAt,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FloorUser = _$FloorUserTearOff();

/// @nodoc
mixin _$FloorUser {
  @primaryKey
  int get id;
  @nullable
  Role get role;
  @nullable
  String get token;
  @nullable
  @ColumnInfo(name: 'first_name')
  String get firstName;
  @nullable
  @ColumnInfo(name: 'last_name')
  String get lastName;
  @nullable
  String get email;
  @nullable
  String get gender;
  @nullable
  @ColumnInfo(name: 'dob')
  String get dateOfBirth;
  String get phone;
  @nullable
  String get provider;
  @nullable
  String get password;
  @nullable
  String get photo;
  @nullable
  @ColumnInfo(name: 'verified_at')
  bool get isEmailVerified;
  @nullable
  @ColumnInfo(name: 'verification_sent_at')
  String get verificationCodeSentAt;
  @nullable
  @ColumnInfo(name: 'forgot_password_code_sent_at')
  String get forgotPasswordCodeSentAt;
  @nullable
  @ColumnInfo(name: 'created_at')
  DateTime get createdAt;
  @nullable
  @ColumnInfo(name: 'updated_at')
  DateTime get updatedAt;
  @nullable
  @ColumnInfo(name: 'deleted_at')
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $FloorUserCopyWith<FloorUser> get copyWith;
}

/// @nodoc
abstract class $FloorUserCopyWith<$Res> {
  factory $FloorUserCopyWith(FloorUser value, $Res Function(FloorUser) then) =
      _$FloorUserCopyWithImpl<$Res>;
  $Res call(
      {@primaryKey
          int id,
      @nullable
          Role role,
      @nullable
          String token,
      @nullable
      @ColumnInfo(name: 'first_name')
          String firstName,
      @nullable
      @ColumnInfo(name: 'last_name')
          String lastName,
      @nullable
          String email,
      @nullable
          String gender,
      @nullable
      @ColumnInfo(name: 'dob')
          String dateOfBirth,
      String phone,
      @nullable
          String provider,
      @nullable
          String password,
      @nullable
          String photo,
      @nullable
      @ColumnInfo(name: 'verified_at')
          bool isEmailVerified,
      @nullable
      @ColumnInfo(name: 'verification_sent_at')
          String verificationCodeSentAt,
      @nullable
      @ColumnInfo(name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @nullable
      @ColumnInfo(name: 'created_at')
          DateTime createdAt,
      @nullable
      @ColumnInfo(name: 'updated_at')
          DateTime updatedAt,
      @nullable
      @ColumnInfo(name: 'deleted_at')
          DateTime deletedAt});
}

/// @nodoc
class _$FloorUserCopyWithImpl<$Res> implements $FloorUserCopyWith<$Res> {
  _$FloorUserCopyWithImpl(this._value, this._then);

  final FloorUser _value;
  // ignore: unused_field
  final $Res Function(FloorUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object token = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object dateOfBirth = freezed,
    Object phone = freezed,
    Object provider = freezed,
    Object password = freezed,
    Object photo = freezed,
    Object isEmailVerified = freezed,
    Object verificationCodeSentAt = freezed,
    Object forgotPasswordCodeSentAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      role: role == freezed ? _value.role : role as Role,
      token: token == freezed ? _value.token : token as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      gender: gender == freezed ? _value.gender : gender as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as String,
      phone: phone == freezed ? _value.phone : phone as String,
      provider: provider == freezed ? _value.provider : provider as String,
      password: password == freezed ? _value.password : password as String,
      photo: photo == freezed ? _value.photo : photo as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      verificationCodeSentAt: verificationCodeSentAt == freezed
          ? _value.verificationCodeSentAt
          : verificationCodeSentAt as String,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt == freezed
          ? _value.forgotPasswordCodeSentAt
          : forgotPasswordCodeSentAt as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FloorUserCopyWith<$Res> implements $FloorUserCopyWith<$Res> {
  factory _$FloorUserCopyWith(
          _FloorUser value, $Res Function(_FloorUser) then) =
      __$FloorUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@primaryKey
          int id,
      @nullable
          Role role,
      @nullable
          String token,
      @nullable
      @ColumnInfo(name: 'first_name')
          String firstName,
      @nullable
      @ColumnInfo(name: 'last_name')
          String lastName,
      @nullable
          String email,
      @nullable
          String gender,
      @nullable
      @ColumnInfo(name: 'dob')
          String dateOfBirth,
      String phone,
      @nullable
          String provider,
      @nullable
          String password,
      @nullable
          String photo,
      @nullable
      @ColumnInfo(name: 'verified_at')
          bool isEmailVerified,
      @nullable
      @ColumnInfo(name: 'verification_sent_at')
          String verificationCodeSentAt,
      @nullable
      @ColumnInfo(name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @nullable
      @ColumnInfo(name: 'created_at')
          DateTime createdAt,
      @nullable
      @ColumnInfo(name: 'updated_at')
          DateTime updatedAt,
      @nullable
      @ColumnInfo(name: 'deleted_at')
          DateTime deletedAt});
}

/// @nodoc
class __$FloorUserCopyWithImpl<$Res> extends _$FloorUserCopyWithImpl<$Res>
    implements _$FloorUserCopyWith<$Res> {
  __$FloorUserCopyWithImpl(_FloorUser _value, $Res Function(_FloorUser) _then)
      : super(_value, (v) => _then(v as _FloorUser));

  @override
  _FloorUser get _value => super._value as _FloorUser;

  @override
  $Res call({
    Object id = freezed,
    Object role = freezed,
    Object token = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object dateOfBirth = freezed,
    Object phone = freezed,
    Object provider = freezed,
    Object password = freezed,
    Object photo = freezed,
    Object isEmailVerified = freezed,
    Object verificationCodeSentAt = freezed,
    Object forgotPasswordCodeSentAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_FloorUser(
      id: id == freezed ? _value.id : id as int,
      role: role == freezed ? _value.role : role as Role,
      token: token == freezed ? _value.token : token as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      gender: gender == freezed ? _value.gender : gender as String,
      dateOfBirth:
          dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth as String,
      phone: phone == freezed ? _value.phone : phone as String,
      provider: provider == freezed ? _value.provider : provider as String,
      password: password == freezed ? _value.password : password as String,
      photo: photo == freezed ? _value.photo : photo as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      verificationCodeSentAt: verificationCodeSentAt == freezed
          ? _value.verificationCodeSentAt
          : verificationCodeSentAt as String,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt == freezed
          ? _value.forgotPasswordCodeSentAt
          : forgotPasswordCodeSentAt as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

@Entity(tableName: FloorUser.tableName)

/// @nodoc
class _$_FloorUser extends _FloorUser {
  const _$_FloorUser(
      {@primaryKey
          this.id,
      @nullable
          this.role,
      @nullable
          this.token,
      @nullable
      @ColumnInfo(name: 'first_name')
          this.firstName,
      @nullable
      @ColumnInfo(name: 'last_name')
          this.lastName,
      @nullable
          this.email,
      @nullable
          this.gender,
      @nullable
      @ColumnInfo(name: 'dob')
          this.dateOfBirth,
      this.phone,
      @nullable
          this.provider,
      @nullable
          this.password,
      @nullable
          this.photo,
      @nullable
      @ColumnInfo(name: 'verified_at')
          this.isEmailVerified,
      @nullable
      @ColumnInfo(name: 'verification_sent_at')
          this.verificationCodeSentAt,
      @nullable
      @ColumnInfo(name: 'forgot_password_code_sent_at')
          this.forgotPasswordCodeSentAt,
      @nullable
      @ColumnInfo(name: 'created_at')
          this.createdAt,
      @nullable
      @ColumnInfo(name: 'updated_at')
          this.updatedAt,
      @nullable
      @ColumnInfo(name: 'deleted_at')
          this.deletedAt})
      : super._();

  @override
  @primaryKey
  final int id;
  @override
  @nullable
  final Role role;
  @override
  @nullable
  final String token;
  @override
  @nullable
  @ColumnInfo(name: 'first_name')
  final String firstName;
  @override
  @nullable
  @ColumnInfo(name: 'last_name')
  final String lastName;
  @override
  @nullable
  final String email;
  @override
  @nullable
  final String gender;
  @override
  @nullable
  @ColumnInfo(name: 'dob')
  final String dateOfBirth;
  @override
  final String phone;
  @override
  @nullable
  final String provider;
  @override
  @nullable
  final String password;
  @override
  @nullable
  final String photo;
  @override
  @nullable
  @ColumnInfo(name: 'verified_at')
  final bool isEmailVerified;
  @override
  @nullable
  @ColumnInfo(name: 'verification_sent_at')
  final String verificationCodeSentAt;
  @override
  @nullable
  @ColumnInfo(name: 'forgot_password_code_sent_at')
  final String forgotPasswordCodeSentAt;
  @override
  @nullable
  @ColumnInfo(name: 'created_at')
  final DateTime createdAt;
  @override
  @nullable
  @ColumnInfo(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @nullable
  @ColumnInfo(name: 'deleted_at')
  final DateTime deletedAt;

  @override
  String toString() {
    return 'FloorUser(id: $id, role: $role, token: $token, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, dateOfBirth: $dateOfBirth, phone: $phone, provider: $provider, password: $password, photo: $photo, isEmailVerified: $isEmailVerified, verificationCodeSentAt: $verificationCodeSentAt, forgotPasswordCodeSentAt: $forgotPasswordCodeSentAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FloorUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.verificationCodeSentAt, verificationCodeSentAt) ||
                const DeepCollectionEquality().equals(
                    other.verificationCodeSentAt, verificationCodeSentAt)) &&
            (identical(
                    other.forgotPasswordCodeSentAt, forgotPasswordCodeSentAt) ||
                const DeepCollectionEquality().equals(
                    other.forgotPasswordCodeSentAt,
                    forgotPasswordCodeSentAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.deletedAt, deletedAt) ||
                const DeepCollectionEquality()
                    .equals(other.deletedAt, deletedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(verificationCodeSentAt) ^
      const DeepCollectionEquality().hash(forgotPasswordCodeSentAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$FloorUserCopyWith<_FloorUser> get copyWith =>
      __$FloorUserCopyWithImpl<_FloorUser>(this, _$identity);
}

abstract class _FloorUser extends FloorUser {
  const _FloorUser._() : super._();
  const factory _FloorUser(
      {@primaryKey
          int id,
      @nullable
          Role role,
      @nullable
          String token,
      @nullable
      @ColumnInfo(name: 'first_name')
          String firstName,
      @nullable
      @ColumnInfo(name: 'last_name')
          String lastName,
      @nullable
          String email,
      @nullable
          String gender,
      @nullable
      @ColumnInfo(name: 'dob')
          String dateOfBirth,
      String phone,
      @nullable
          String provider,
      @nullable
          String password,
      @nullable
          String photo,
      @nullable
      @ColumnInfo(name: 'verified_at')
          bool isEmailVerified,
      @nullable
      @ColumnInfo(name: 'verification_sent_at')
          String verificationCodeSentAt,
      @nullable
      @ColumnInfo(name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @nullable
      @ColumnInfo(name: 'created_at')
          DateTime createdAt,
      @nullable
      @ColumnInfo(name: 'updated_at')
          DateTime updatedAt,
      @nullable
      @ColumnInfo(name: 'deleted_at')
          DateTime deletedAt}) = _$_FloorUser;

  @override
  @primaryKey
  int get id;
  @override
  @nullable
  Role get role;
  @override
  @nullable
  String get token;
  @override
  @nullable
  @ColumnInfo(name: 'first_name')
  String get firstName;
  @override
  @nullable
  @ColumnInfo(name: 'last_name')
  String get lastName;
  @override
  @nullable
  String get email;
  @override
  @nullable
  String get gender;
  @override
  @nullable
  @ColumnInfo(name: 'dob')
  String get dateOfBirth;
  @override
  String get phone;
  @override
  @nullable
  String get provider;
  @override
  @nullable
  String get password;
  @override
  @nullable
  String get photo;
  @override
  @nullable
  @ColumnInfo(name: 'verified_at')
  bool get isEmailVerified;
  @override
  @nullable
  @ColumnInfo(name: 'verification_sent_at')
  String get verificationCodeSentAt;
  @override
  @nullable
  @ColumnInfo(name: 'forgot_password_code_sent_at')
  String get forgotPasswordCodeSentAt;
  @override
  @nullable
  @ColumnInfo(name: 'created_at')
  DateTime get createdAt;
  @override
  @nullable
  @ColumnInfo(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @nullable
  @ColumnInfo(name: 'deleted_at')
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$FloorUserCopyWith<_FloorUser> get copyWith;
}
