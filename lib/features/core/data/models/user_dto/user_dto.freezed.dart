// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

// ignore: unused_element
  _UserDTO call(
      {@HiveField(0)
      @nullable
      @JsonKey(includeIfNull: false)
          int id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String role,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String token,
      @HiveField(2)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @HiveField(3)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @HiveField(4)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @HiveField(5)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @HiveField(6)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
          String verificationCodeSentAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @HiveField(14)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(15)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(16)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment}) {
    return _UserDTO(
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
      apartment: apartment,
    );
  }

// ignore: unused_element
  UserDTO fromJson(Map<String, Object> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @HiveField(0)
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @HiveField(1)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  @RoleConverter()
  String get role;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  @RoleConverter()
  String get token;
  @HiveField(2)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
  String get firstName;
  @HiveField(3)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
  String get lastName;
  @HiveField(4)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @HiveField(5)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get gender;
  @HiveField(6)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
  String get dateOfBirth;
  @HiveField(7)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @HiveField(8)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
  String get provider;
  @HiveField(9)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get password;
  @HiveField(10)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @HiveField(11)
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool get isEmailVerified;
  @HiveField(12)
  @nullable
  @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
  String get verificationCodeSentAt;
  @HiveField(13)
  @nullable
  @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
  String get forgotPasswordCodeSentAt;
  @HiveField(14)
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @HiveField(15)
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @HiveField(16)
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @nullable
  @JsonKey(includeIfNull: false)
  BaseApartmentDTO get apartment;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
      @nullable
      @JsonKey(includeIfNull: false)
          int id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String role,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String token,
      @HiveField(2)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @HiveField(3)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @HiveField(4)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @HiveField(5)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @HiveField(6)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
          String verificationCodeSentAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @HiveField(14)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(15)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(16)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment});

  $BaseApartmentDTOCopyWith<$Res> get apartment;
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

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
    Object apartment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      role: role == freezed ? _value.role : role as String,
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
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
    ));
  }

  @override
  $BaseApartmentDTOCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $BaseApartmentDTOCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
      @nullable
      @JsonKey(includeIfNull: false)
          int id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String role,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String token,
      @HiveField(2)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @HiveField(3)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @HiveField(4)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @HiveField(5)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @HiveField(6)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
          String verificationCodeSentAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @HiveField(14)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(15)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(16)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment});

  @override
  $BaseApartmentDTOCopyWith<$Res> get apartment;
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

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
    Object apartment = freezed,
  }) {
    return _then(_UserDTO(
      id: id == freezed ? _value.id : id as int,
      role: role == freezed ? _value.role : role as String,
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
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
    ));
  }
}

@JsonSerializable()
@HiveType(typeId: 6, adapterName: 'UserDTOAdapter')

/// @nodoc
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@HiveField(0)
      @nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          this.role,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          this.token,
      @HiveField(2)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          this.firstName,
      @HiveField(3)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          this.lastName,
      @HiveField(4)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.email,
      @HiveField(5)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.gender,
      @HiveField(6)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          this.dateOfBirth,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          this.provider,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.password,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.photo,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          this.isEmailVerified,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
          this.verificationCodeSentAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
          this.forgotPasswordCodeSentAt,
      @HiveField(14)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @HiveField(15)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @HiveField(16)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt,
      @nullable
      @JsonKey(includeIfNull: false)
          this.apartment})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  @HiveField(0)
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @HiveField(1)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  @RoleConverter()
  final String role;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  @RoleConverter()
  final String token;
  @override
  @HiveField(2)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
  final String firstName;
  @override
  @HiveField(3)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
  final String lastName;
  @override
  @HiveField(4)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String email;
  @override
  @HiveField(5)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String gender;
  @override
  @HiveField(6)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
  final String dateOfBirth;
  @override
  @HiveField(7)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String phone;
  @override
  @HiveField(8)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
  final String provider;
  @override
  @HiveField(9)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String password;
  @override
  @HiveField(10)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String photo;
  @override
  @HiveField(11)
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  final bool isEmailVerified;
  @override
  @HiveField(12)
  @nullable
  @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
  final String verificationCodeSentAt;
  @override
  @HiveField(13)
  @nullable
  @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
  final String forgotPasswordCodeSentAt;
  @override
  @HiveField(14)
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final String createdAt;
  @override
  @HiveField(15)
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final String updatedAt;
  @override
  @HiveField(16)
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final String deletedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final BaseApartmentDTO apartment;

  @override
  String toString() {
    return 'UserDTO(id: $id, role: $role, token: $token, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, dateOfBirth: $dateOfBirth, phone: $phone, provider: $provider, password: $password, photo: $photo, isEmailVerified: $isEmailVerified, verificationCodeSentAt: $verificationCodeSentAt, forgotPasswordCodeSentAt: $forgotPasswordCodeSentAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, apartment: $apartment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
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
                    .equals(other.deletedAt, deletedAt)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)));
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
      const DeepCollectionEquality().hash(deletedAt) ^
      const DeepCollectionEquality().hash(apartment);

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const _UserDTO._() : super._();
  const factory _UserDTO(
      {@HiveField(0)
      @nullable
      @JsonKey(includeIfNull: false)
          int id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String role,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
      @RoleConverter()
          String token,
      @HiveField(2)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @HiveField(3)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @HiveField(4)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @HiveField(5)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @HiveField(6)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
          String verificationCodeSentAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
          String forgotPasswordCodeSentAt,
      @HiveField(14)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(15)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(16)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @HiveField(0)
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @HiveField(1)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  @RoleConverter()
  String get role;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  @RoleConverter()
  String get token;
  @override
  @HiveField(2)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
  String get firstName;
  @override
  @HiveField(3)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
  String get lastName;
  @override
  @HiveField(4)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @override
  @HiveField(5)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get gender;
  @override
  @HiveField(6)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
  String get dateOfBirth;
  @override
  @HiveField(7)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @override
  @HiveField(8)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
  String get provider;
  @override
  @HiveField(9)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get password;
  @override
  @HiveField(10)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @override
  @HiveField(11)
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool get isEmailVerified;
  @override
  @HiveField(12)
  @nullable
  @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
  String get verificationCodeSentAt;
  @override
  @HiveField(13)
  @nullable
  @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
  String get forgotPasswordCodeSentAt;
  @override
  @HiveField(14)
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @override
  @HiveField(15)
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @override
  @HiveField(16)
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  BaseApartmentDTO get apartment;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith;
}
