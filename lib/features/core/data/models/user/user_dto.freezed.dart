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
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
      @ProfileVerificationConverter()
          ProfileVerificationStatus status,
      @nullable
      @JsonKey(includeIfNull: false)
      @RoleConverter()
          Role role,
      @nullable
      @JsonKey(includeIfNull: false)
          int balance,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String token,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
      @TimestampConverter()
          String verificationCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
      @TimestampConverter()
          String forgotPasswordCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'unreadNotifications')
          int unreadNotifications,
      @nullable
      @JsonKey(includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
          bool hasPendingAssignment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'pendingAssignment')
          List<BaseApartmentDTO> pendingAssignments,
      @nullable
      @JsonKey(includeIfNull: false, name: 'last_logged_in')
      @TimestampConverter()
          String lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) {
    return _UserDTO(
      id: id,
      status: status,
      role: role,
      balance: balance,
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
      apartment: apartment,
      verificationCodeSentAt: verificationCodeSentAt,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt,
      unreadNotifications: unreadNotifications,
      hasPendingAssignment: hasPendingAssignment,
      pendingAssignments: pendingAssignments,
      lastSeenAt: lastSeenAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
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
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false)
  @ProfileVerificationConverter()
  ProfileVerificationStatus get status;
  @nullable
  @JsonKey(includeIfNull: false)
  @RoleConverter()
  Role get role;
  @nullable
  @JsonKey(includeIfNull: false)
  int get balance;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get token;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
  String get firstName;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
  String get lastName;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get gender;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
  String get dateOfBirth;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
  String get provider;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get password;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool get isEmailVerified;
  @nullable
  @JsonKey(includeIfNull: false)
  BaseApartmentDTO get apartment;
  @nullable
  @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
  @TimestampConverter()
  String get verificationCodeSentAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
  @TimestampConverter()
  String get forgotPasswordCodeSentAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'unreadNotifications')
  int get unreadNotifications;
  @nullable
  @JsonKey(
      includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
  bool get hasPendingAssignment;
  @nullable
  @JsonKey(includeIfNull: false, name: 'pendingAssignment')
  List<BaseApartmentDTO> get pendingAssignments;
  @nullable
  @JsonKey(includeIfNull: false, name: 'last_logged_in')
  @TimestampConverter()
  String get lastSeenAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
      @ProfileVerificationConverter()
          ProfileVerificationStatus status,
      @nullable
      @JsonKey(includeIfNull: false)
      @RoleConverter()
          Role role,
      @nullable
      @JsonKey(includeIfNull: false)
          int balance,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String token,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
      @TimestampConverter()
          String verificationCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
      @TimestampConverter()
          String forgotPasswordCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'unreadNotifications')
          int unreadNotifications,
      @nullable
      @JsonKey(includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
          bool hasPendingAssignment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'pendingAssignment')
          List<BaseApartmentDTO> pendingAssignments,
      @nullable
      @JsonKey(includeIfNull: false, name: 'last_logged_in')
      @TimestampConverter()
          String lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

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
    Object status = freezed,
    Object role = freezed,
    Object balance = freezed,
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
    Object apartment = freezed,
    Object verificationCodeSentAt = freezed,
    Object forgotPasswordCodeSentAt = freezed,
    Object unreadNotifications = freezed,
    Object hasPendingAssignment = freezed,
    Object pendingAssignments = freezed,
    Object lastSeenAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      status: status == freezed
          ? _value.status
          : status as ProfileVerificationStatus,
      role: role == freezed ? _value.role : role as Role,
      balance: balance == freezed ? _value.balance : balance as int,
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
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
      verificationCodeSentAt: verificationCodeSentAt == freezed
          ? _value.verificationCodeSentAt
          : verificationCodeSentAt as String,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt == freezed
          ? _value.forgotPasswordCodeSentAt
          : forgotPasswordCodeSentAt as String,
      unreadNotifications: unreadNotifications == freezed
          ? _value.unreadNotifications
          : unreadNotifications as int,
      hasPendingAssignment: hasPendingAssignment == freezed
          ? _value.hasPendingAssignment
          : hasPendingAssignment as bool,
      pendingAssignments: pendingAssignments == freezed
          ? _value.pendingAssignments
          : pendingAssignments as List<BaseApartmentDTO>,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
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
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
      @ProfileVerificationConverter()
          ProfileVerificationStatus status,
      @nullable
      @JsonKey(includeIfNull: false)
      @RoleConverter()
          Role role,
      @nullable
      @JsonKey(includeIfNull: false)
          int balance,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String token,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
      @TimestampConverter()
          String verificationCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
      @TimestampConverter()
          String forgotPasswordCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'unreadNotifications')
          int unreadNotifications,
      @nullable
      @JsonKey(includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
          bool hasPendingAssignment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'pendingAssignment')
          List<BaseApartmentDTO> pendingAssignments,
      @nullable
      @JsonKey(includeIfNull: false, name: 'last_logged_in')
      @TimestampConverter()
          String lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

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
    Object status = freezed,
    Object role = freezed,
    Object balance = freezed,
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
    Object apartment = freezed,
    Object verificationCodeSentAt = freezed,
    Object forgotPasswordCodeSentAt = freezed,
    Object unreadNotifications = freezed,
    Object hasPendingAssignment = freezed,
    Object pendingAssignments = freezed,
    Object lastSeenAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_UserDTO(
      id: id == freezed ? _value.id : id as int,
      status: status == freezed
          ? _value.status
          : status as ProfileVerificationStatus,
      role: role == freezed ? _value.role : role as Role,
      balance: balance == freezed ? _value.balance : balance as int,
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
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
      verificationCodeSentAt: verificationCodeSentAt == freezed
          ? _value.verificationCodeSentAt
          : verificationCodeSentAt as String,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt == freezed
          ? _value.forgotPasswordCodeSentAt
          : forgotPasswordCodeSentAt as String,
      unreadNotifications: unreadNotifications == freezed
          ? _value.unreadNotifications
          : unreadNotifications as int,
      hasPendingAssignment: hasPendingAssignment == freezed
          ? _value.hasPendingAssignment
          : hasPendingAssignment as bool,
      pendingAssignments: pendingAssignments == freezed
          ? _value.pendingAssignments
          : pendingAssignments as List<BaseApartmentDTO>,
      lastSeenAt:
          lastSeenAt == freezed ? _value.lastSeenAt : lastSeenAt as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false)
      @ProfileVerificationConverter()
          this.status,
      @nullable
      @JsonKey(includeIfNull: false)
      @RoleConverter()
          this.role,
      @nullable
      @JsonKey(includeIfNull: false)
          this.balance,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.token,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          this.firstName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          this.lastName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.gender,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          this.dateOfBirth,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.phone,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          this.provider,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.password,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.photo,
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          this.isEmailVerified,
      @nullable
      @JsonKey(includeIfNull: false)
          this.apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
      @TimestampConverter()
          this.verificationCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
      @TimestampConverter()
          this.forgotPasswordCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'unreadNotifications')
          this.unreadNotifications,
      @nullable
      @JsonKey(includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
          this.hasPendingAssignment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'pendingAssignment')
          this.pendingAssignments,
      @nullable
      @JsonKey(includeIfNull: false, name: 'last_logged_in')
      @TimestampConverter()
          this.lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @ProfileVerificationConverter()
  final ProfileVerificationStatus status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @RoleConverter()
  final Role role;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int balance;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String token;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
  final String firstName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
  final String lastName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String email;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String gender;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
  final String dateOfBirth;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String phone;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
  final String provider;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String password;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String photo;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  final bool isEmailVerified;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final BaseApartmentDTO apartment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
  @TimestampConverter()
  final String verificationCodeSentAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
  @TimestampConverter()
  final String forgotPasswordCodeSentAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'unreadNotifications')
  final int unreadNotifications;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
  final bool hasPendingAssignment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'pendingAssignment')
  final List<BaseApartmentDTO> pendingAssignments;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'last_logged_in')
  @TimestampConverter()
  final String lastSeenAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'UserDTO(id: $id, status: $status, role: $role, balance: $balance, token: $token, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, dateOfBirth: $dateOfBirth, phone: $phone, provider: $provider, password: $password, photo: $photo, isEmailVerified: $isEmailVerified, apartment: $apartment, verificationCodeSentAt: $verificationCodeSentAt, forgotPasswordCodeSentAt: $forgotPasswordCodeSentAt, unreadNotifications: $unreadNotifications, hasPendingAssignment: $hasPendingAssignment, pendingAssignments: $pendingAssignments, lastSeenAt: $lastSeenAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
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
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.verificationCodeSentAt, verificationCodeSentAt) ||
                const DeepCollectionEquality().equals(
                    other.verificationCodeSentAt, verificationCodeSentAt)) &&
            (identical(other.forgotPasswordCodeSentAt, forgotPasswordCodeSentAt) ||
                const DeepCollectionEquality().equals(
                    other.forgotPasswordCodeSentAt,
                    forgotPasswordCodeSentAt)) &&
            (identical(other.unreadNotifications, unreadNotifications) ||
                const DeepCollectionEquality()
                    .equals(other.unreadNotifications, unreadNotifications)) &&
            (identical(other.hasPendingAssignment, hasPendingAssignment) ||
                const DeepCollectionEquality().equals(
                    other.hasPendingAssignment, hasPendingAssignment)) &&
            (identical(other.pendingAssignments, pendingAssignments) ||
                const DeepCollectionEquality()
                    .equals(other.pendingAssignments, pendingAssignments)) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeenAt, lastSeenAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.deletedAt, deletedAt) || const DeepCollectionEquality().equals(other.deletedAt, deletedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(balance) ^
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
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(verificationCodeSentAt) ^
      const DeepCollectionEquality().hash(forgotPasswordCodeSentAt) ^
      const DeepCollectionEquality().hash(unreadNotifications) ^
      const DeepCollectionEquality().hash(hasPendingAssignment) ^
      const DeepCollectionEquality().hash(pendingAssignments) ^
      const DeepCollectionEquality().hash(lastSeenAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

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
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
      @ProfileVerificationConverter()
          ProfileVerificationStatus status,
      @nullable
      @JsonKey(includeIfNull: false)
      @RoleConverter()
          Role role,
      @nullable
      @JsonKey(includeIfNull: false)
          int balance,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String token,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
          String firstName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
          String lastName,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String gender,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
          String dateOfBirth,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
          String provider,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
      @TimestampConverter()
          String verificationCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
      @TimestampConverter()
          String forgotPasswordCodeSentAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'unreadNotifications')
          int unreadNotifications,
      @nullable
      @JsonKey(includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
          bool hasPendingAssignment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'pendingAssignment')
          List<BaseApartmentDTO> pendingAssignments,
      @nullable
      @JsonKey(includeIfNull: false, name: 'last_logged_in')
      @TimestampConverter()
          String lastSeenAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @ProfileVerificationConverter()
  ProfileVerificationStatus get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @RoleConverter()
  Role get role;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get balance;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get token;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'first_name')
  String get firstName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'last_name')
  String get lastName;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get gender;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'dob')
  String get dateOfBirth;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'register_via')
  String get provider;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get password;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool get isEmailVerified;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  BaseApartmentDTO get apartment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'verification_code_sent_at')
  @TimestampConverter()
  String get verificationCodeSentAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'forgot_password_code_sent_at')
  @TimestampConverter()
  String get forgotPasswordCodeSentAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'unreadNotifications')
  int get unreadNotifications;
  @override
  @nullable
  @JsonKey(
      includeIfNull: false, name: 'hasPendingAssignment', defaultValue: false)
  bool get hasPendingAssignment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'pendingAssignment')
  List<BaseApartmentDTO> get pendingAssignments;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'last_logged_in')
  @TimestampConverter()
  String get lastSeenAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith;
}
