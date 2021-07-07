// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of registered_user_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RegisteredUserDTO _$RegisteredUserDTOFromJson(Map<String, dynamic> json) {
  return _RegisteredUserDTO.fromJson(json);
}

/// @nodoc
class _$RegisteredUserDTOTearOff {
  const _$RegisteredUserDTOTearOff();

// ignore: unused_element
  _RegisteredUserDTO call(
      {@nullable @JsonKey(includeIfNull: false) int id,
      @nullable @JsonKey(includeIfNull: false) UserDTO user,
      @nullable @JsonKey(includeIfNull: false) String message}) {
    return _RegisteredUserDTO(
      id: id,
      user: user,
      message: message,
    );
  }

// ignore: unused_element
  RegisteredUserDTO fromJson(Map<String, Object> json) {
    return RegisteredUserDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RegisteredUserDTO = _$RegisteredUserDTOTearOff();

/// @nodoc
mixin _$RegisteredUserDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get user;
  @nullable
  @JsonKey(includeIfNull: false)
  String get message;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RegisteredUserDTOCopyWith<RegisteredUserDTO> get copyWith;
}

/// @nodoc
abstract class $RegisteredUserDTOCopyWith<$Res> {
  factory $RegisteredUserDTOCopyWith(
          RegisteredUserDTO value, $Res Function(RegisteredUserDTO) then) =
      _$RegisteredUserDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) int id,
      @nullable @JsonKey(includeIfNull: false) UserDTO user,
      @nullable @JsonKey(includeIfNull: false) String message});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisteredUserDTOCopyWithImpl<$Res>
    implements $RegisteredUserDTOCopyWith<$Res> {
  _$RegisteredUserDTOCopyWithImpl(this._value, this._then);

  final RegisteredUserDTO _value;
  // ignore: unused_field
  final $Res Function(RegisteredUserDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object user = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      user: user == freezed ? _value.user : user as UserDTO,
      message: message == freezed ? _value.message : message as String,
    ));
  }

  @override
  $UserDTOCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$RegisteredUserDTOCopyWith<$Res>
    implements $RegisteredUserDTOCopyWith<$Res> {
  factory _$RegisteredUserDTOCopyWith(
          _RegisteredUserDTO value, $Res Function(_RegisteredUserDTO) then) =
      __$RegisteredUserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable @JsonKey(includeIfNull: false) int id,
      @nullable @JsonKey(includeIfNull: false) UserDTO user,
      @nullable @JsonKey(includeIfNull: false) String message});

  @override
  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$RegisteredUserDTOCopyWithImpl<$Res>
    extends _$RegisteredUserDTOCopyWithImpl<$Res>
    implements _$RegisteredUserDTOCopyWith<$Res> {
  __$RegisteredUserDTOCopyWithImpl(
      _RegisteredUserDTO _value, $Res Function(_RegisteredUserDTO) _then)
      : super(_value, (v) => _then(v as _RegisteredUserDTO));

  @override
  _RegisteredUserDTO get _value => super._value as _RegisteredUserDTO;

  @override
  $Res call({
    Object id = freezed,
    Object user = freezed,
    Object message = freezed,
  }) {
    return _then(_RegisteredUserDTO(
      id: id == freezed ? _value.id : id as int,
      user: user == freezed ? _value.user : user as UserDTO,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RegisteredUserDTO extends _RegisteredUserDTO {
  const _$_RegisteredUserDTO(
      {@nullable @JsonKey(includeIfNull: false) this.id,
      @nullable @JsonKey(includeIfNull: false) this.user,
      @nullable @JsonKey(includeIfNull: false) this.message})
      : super._();

  factory _$_RegisteredUserDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RegisteredUserDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final UserDTO user;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String message;

  @override
  String toString() {
    return 'RegisteredUserDTO(id: $id, user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisteredUserDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$RegisteredUserDTOCopyWith<_RegisteredUserDTO> get copyWith =>
      __$RegisteredUserDTOCopyWithImpl<_RegisteredUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegisteredUserDTOToJson(this);
  }
}

abstract class _RegisteredUserDTO extends RegisteredUserDTO {
  const _RegisteredUserDTO._() : super._();
  const factory _RegisteredUserDTO(
          {@nullable @JsonKey(includeIfNull: false) int id,
          @nullable @JsonKey(includeIfNull: false) UserDTO user,
          @nullable @JsonKey(includeIfNull: false) String message}) =
      _$_RegisteredUserDTO;

  factory _RegisteredUserDTO.fromJson(Map<String, dynamic> json) =
      _$_RegisteredUserDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get user;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get message;
  @override
  @JsonKey(ignore: true)
  _$RegisteredUserDTOCopyWith<_RegisteredUserDTO> get copyWith;
}
