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
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
      @RoleConverter()
          String role,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          String age,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) {
    return _UserDTO(
      id: id,
      role: role,
      firstName: firstName,
      lastName: lastName,
      email: email,
      gender: gender,
      age: age,
      phone: phone,
      password: password,
      photo: photo,
      isEmailVerified: isEmailVerified,
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
  @HiveField(0)
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  String get id;
  @HiveField(1)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
  @RoleConverter()
  String get role;
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
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get age;
  @HiveField(7)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @HiveField(8)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get password;
  @HiveField(9)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @HiveField(10)
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool get isEmailVerified;
  @HiveField(11)
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @HiveField(12)
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @HiveField(13)
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
      {@HiveField(0)
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
      @RoleConverter()
          String role,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          String age,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object age = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object photo = freezed,
    Object isEmailVerified = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      role: role == freezed ? _value.role : role as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      gender: gender == freezed ? _value.gender : gender as String,
      age: age == freezed ? _value.age : age as String,
      phone: phone == freezed ? _value.phone : phone as String,
      password: password == freezed ? _value.password : password as String,
      photo: photo == freezed ? _value.photo : photo as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
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
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
      @RoleConverter()
          String role,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          String age,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object age = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object photo = freezed,
    Object isEmailVerified = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_UserDTO(
      id: id == freezed ? _value.id : id as String,
      role: role == freezed ? _value.role : role as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      gender: gender == freezed ? _value.gender : gender as String,
      age: age == freezed ? _value.age : age as String,
      phone: phone == freezed ? _value.phone : phone as String,
      password: password == freezed ? _value.password : password as String,
      photo: photo == freezed ? _value.photo : photo as String,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
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
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          this.id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
      @RoleConverter()
          this.role,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.age,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.password,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.photo,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          this.isEmailVerified,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDTOFromJson(json);

  @override
  @HiveField(0)
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  final String id;
  @override
  @HiveField(1)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
  @RoleConverter()
  final String role;
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
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String age;
  @override
  @HiveField(7)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String phone;
  @override
  @HiveField(8)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String password;
  @override
  @HiveField(9)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String photo;
  @override
  @HiveField(10)
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  final bool isEmailVerified;
  @override
  @HiveField(11)
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final String createdAt;
  @override
  @HiveField(12)
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final String updatedAt;
  @override
  @HiveField(13)
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'UserDTO(id: $id, role: $role, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, age: $age, phone: $phone, password: $password, photo: $photo, isEmailVerified: $isEmailVerified, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
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
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
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
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
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
      {@HiveField(0)
      @nullable
      @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
          String id,
      @HiveField(1)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
      @RoleConverter()
          String role,
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
      @JsonKey(includeIfNull: false, defaultValue: '')
          String age,
      @HiveField(7)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String phone,
      @HiveField(8)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String password,
      @HiveField(9)
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String photo,
      @HiveField(10)
      @nullable
      @JsonKey(includeIfNull: false, name: 'email_verified_at', fromJson: UserDTO.isEmailVerifiedFromJson)
          bool isEmailVerified,
      @HiveField(11)
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @HiveField(12)
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @HiveField(13)
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @HiveField(0)
  @nullable
  @JsonKey(ignore: true, includeIfNull: false, defaultValue: '')
  String get id;
  @override
  @HiveField(1)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'user_type')
  @RoleConverter()
  String get role;
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
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get age;
  @override
  @HiveField(7)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get phone;
  @override
  @HiveField(8)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get password;
  @override
  @HiveField(9)
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get photo;
  @override
  @HiveField(10)
  @nullable
  @JsonKey(
      includeIfNull: false,
      name: 'email_verified_at',
      fromJson: UserDTO.isEmailVerifiedFromJson)
  bool get isEmailVerified;
  @override
  @HiveField(11)
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @override
  @HiveField(12)
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @override
  @HiveField(13)
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith;
}
