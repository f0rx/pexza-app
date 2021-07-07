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
      {@nullable UniqueId<int> id,
      @nullable Role role,
      @nullable BasicTextField<int> accountBalance,
      @nullable DisplayName firstName,
      @nullable DisplayName lastName,
      @nullable EmailAddress email,
      @nullable Gender gender,
      @nullable DateTimeField dateOfBirth,
      @nullable bool isEmailVerified,
      @nullable AuthProvider provider,
      @nullable TenantApartment apartment,
      @nullable Phone phone,
      @nullable Password password,
      @nullable String photo,
      @nullable DateTime verificationCodeSentAt,
      @nullable DateTime forgotPasswordCodeSentAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _User(
      id: id,
      role: role,
      accountBalance: accountBalance,
      firstName: firstName,
      lastName: lastName,
      email: email,
      gender: gender,
      dateOfBirth: dateOfBirth,
      isEmailVerified: isEmailVerified,
      provider: provider,
      apartment: apartment,
      phone: phone,
      password: password,
      photo: photo,
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
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @nullable
  UniqueId<int> get id;
  @nullable
  Role get role;
  @nullable
  BasicTextField<int> get accountBalance;
  @nullable
  DisplayName get firstName;
  @nullable
  DisplayName get lastName;
  @nullable
  EmailAddress get email;
  @nullable
  Gender get gender;
  @nullable
  DateTimeField get dateOfBirth;
  @nullable
  bool get isEmailVerified;
  @nullable
  AuthProvider get provider;
  @nullable
  TenantApartment get apartment;
  @nullable
  Phone get phone;
  @nullable
  Password get password;
  @nullable
  String get photo;
  @nullable
  DateTime get verificationCodeSentAt;
  @nullable
  DateTime get forgotPasswordCodeSentAt;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable Role role,
      @nullable BasicTextField<int> accountBalance,
      @nullable DisplayName firstName,
      @nullable DisplayName lastName,
      @nullable EmailAddress email,
      @nullable Gender gender,
      @nullable DateTimeField dateOfBirth,
      @nullable bool isEmailVerified,
      @nullable AuthProvider provider,
      @nullable TenantApartment apartment,
      @nullable Phone phone,
      @nullable Password password,
      @nullable String photo,
      @nullable DateTime verificationCodeSentAt,
      @nullable DateTime forgotPasswordCodeSentAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $TenantApartmentCopyWith<$Res> get apartment;
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
    Object accountBalance = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object dateOfBirth = freezed,
    Object isEmailVerified = freezed,
    Object provider = freezed,
    Object apartment = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object photo = freezed,
    Object verificationCodeSentAt = freezed,
    Object forgotPasswordCodeSentAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      role: role == freezed ? _value.role : role as Role,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance as BasicTextField<int>,
      firstName:
          firstName == freezed ? _value.firstName : firstName as DisplayName,
      lastName: lastName == freezed ? _value.lastName : lastName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateTimeField,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      provider:
          provider == freezed ? _value.provider : provider as AuthProvider,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as TenantApartment,
      phone: phone == freezed ? _value.phone : phone as Phone,
      password: password == freezed ? _value.password : password as Password,
      photo: photo == freezed ? _value.photo : photo as String,
      verificationCodeSentAt: verificationCodeSentAt == freezed
          ? _value.verificationCodeSentAt
          : verificationCodeSentAt as DateTime,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt == freezed
          ? _value.forgotPasswordCodeSentAt
          : forgotPasswordCodeSentAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $TenantApartmentCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $TenantApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable Role role,
      @nullable BasicTextField<int> accountBalance,
      @nullable DisplayName firstName,
      @nullable DisplayName lastName,
      @nullable EmailAddress email,
      @nullable Gender gender,
      @nullable DateTimeField dateOfBirth,
      @nullable bool isEmailVerified,
      @nullable AuthProvider provider,
      @nullable TenantApartment apartment,
      @nullable Phone phone,
      @nullable Password password,
      @nullable String photo,
      @nullable DateTime verificationCodeSentAt,
      @nullable DateTime forgotPasswordCodeSentAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $TenantApartmentCopyWith<$Res> get apartment;
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
    Object accountBalance = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object dateOfBirth = freezed,
    Object isEmailVerified = freezed,
    Object provider = freezed,
    Object apartment = freezed,
    Object phone = freezed,
    Object password = freezed,
    Object photo = freezed,
    Object verificationCodeSentAt = freezed,
    Object forgotPasswordCodeSentAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      role: role == freezed ? _value.role : role as Role,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance as BasicTextField<int>,
      firstName:
          firstName == freezed ? _value.firstName : firstName as DisplayName,
      lastName: lastName == freezed ? _value.lastName : lastName as DisplayName,
      email: email == freezed ? _value.email : email as EmailAddress,
      gender: gender == freezed ? _value.gender : gender as Gender,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth as DateTimeField,
      isEmailVerified: isEmailVerified == freezed
          ? _value.isEmailVerified
          : isEmailVerified as bool,
      provider:
          provider == freezed ? _value.provider : provider as AuthProvider,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as TenantApartment,
      phone: phone == freezed ? _value.phone : phone as Phone,
      password: password == freezed ? _value.password : password as Password,
      photo: photo == freezed ? _value.photo : photo as String,
      verificationCodeSentAt: verificationCodeSentAt == freezed
          ? _value.verificationCodeSentAt
          : verificationCodeSentAt as DateTime,
      forgotPasswordCodeSentAt: forgotPasswordCodeSentAt == freezed
          ? _value.forgotPasswordCodeSentAt
          : forgotPasswordCodeSentAt as DateTime,
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
class _$_User extends _User with DiagnosticableTreeMixin {
  const _$_User(
      {@nullable this.id,
      @nullable this.role,
      @nullable this.accountBalance,
      @nullable this.firstName,
      @nullable this.lastName,
      @nullable this.email,
      @nullable this.gender,
      @nullable this.dateOfBirth,
      @nullable this.isEmailVerified,
      @nullable this.provider,
      @nullable this.apartment,
      @nullable this.phone,
      @nullable this.password,
      @nullable this.photo,
      @nullable this.verificationCodeSentAt,
      @nullable this.forgotPasswordCodeSentAt,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final Role role;
  @override
  @nullable
  final BasicTextField<int> accountBalance;
  @override
  @nullable
  final DisplayName firstName;
  @override
  @nullable
  final DisplayName lastName;
  @override
  @nullable
  final EmailAddress email;
  @override
  @nullable
  final Gender gender;
  @override
  @nullable
  final DateTimeField dateOfBirth;
  @override
  @nullable
  final bool isEmailVerified;
  @override
  @nullable
  final AuthProvider provider;
  @override
  @nullable
  final TenantApartment apartment;
  @override
  @nullable
  final Phone phone;
  @override
  @nullable
  final Password password;
  @override
  @nullable
  final String photo;
  @override
  @nullable
  final DateTime verificationCodeSentAt;
  @override
  @nullable
  final DateTime forgotPasswordCodeSentAt;
  @override
  @nullable
  final DateTime createdAt;
  @override
  @nullable
  final DateTime updatedAt;
  @override
  @nullable
  final DateTime deletedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, role: $role, accountBalance: $accountBalance, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, dateOfBirth: $dateOfBirth, isEmailVerified: $isEmailVerified, provider: $provider, apartment: $apartment, phone: $phone, password: $password, photo: $photo, verificationCodeSentAt: $verificationCodeSentAt, forgotPasswordCodeSentAt: $forgotPasswordCodeSentAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('accountBalance', accountBalance))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('dateOfBirth', dateOfBirth))
      ..add(DiagnosticsProperty('isEmailVerified', isEmailVerified))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('apartment', apartment))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(
          DiagnosticsProperty('verificationCodeSentAt', verificationCodeSentAt))
      ..add(DiagnosticsProperty(
          'forgotPasswordCodeSentAt', forgotPasswordCodeSentAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('deletedAt', deletedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.accountBalance, accountBalance) ||
                const DeepCollectionEquality()
                    .equals(other.accountBalance, accountBalance)) &&
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
            (identical(other.isEmailVerified, isEmailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailVerified, isEmailVerified)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
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
      const DeepCollectionEquality().hash(accountBalance) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(isEmailVerified) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(verificationCodeSentAt) ^
      const DeepCollectionEquality().hash(forgotPasswordCodeSentAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@nullable UniqueId<int> id,
      @nullable Role role,
      @nullable BasicTextField<int> accountBalance,
      @nullable DisplayName firstName,
      @nullable DisplayName lastName,
      @nullable EmailAddress email,
      @nullable Gender gender,
      @nullable DateTimeField dateOfBirth,
      @nullable bool isEmailVerified,
      @nullable AuthProvider provider,
      @nullable TenantApartment apartment,
      @nullable Phone phone,
      @nullable Password password,
      @nullable String photo,
      @nullable DateTime verificationCodeSentAt,
      @nullable DateTime forgotPasswordCodeSentAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_User;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  Role get role;
  @override
  @nullable
  BasicTextField<int> get accountBalance;
  @override
  @nullable
  DisplayName get firstName;
  @override
  @nullable
  DisplayName get lastName;
  @override
  @nullable
  EmailAddress get email;
  @override
  @nullable
  Gender get gender;
  @override
  @nullable
  DateTimeField get dateOfBirth;
  @override
  @nullable
  bool get isEmailVerified;
  @override
  @nullable
  AuthProvider get provider;
  @override
  @nullable
  TenantApartment get apartment;
  @override
  @nullable
  Phone get phone;
  @override
  @nullable
  Password get password;
  @override
  @nullable
  String get photo;
  @override
  @nullable
  DateTime get verificationCodeSentAt;
  @override
  @nullable
  DateTime get forgotPasswordCodeSentAt;
  @override
  @nullable
  DateTime get createdAt;
  @override
  @nullable
  DateTime get updatedAt;
  @override
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
