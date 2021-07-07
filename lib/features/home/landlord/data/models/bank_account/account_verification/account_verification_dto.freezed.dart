// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of account_verification_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AccountVerificationDTO _$AccountVerificationDTOFromJson(
    Map<String, dynamic> json) {
  return _AccountVerificationDTO.fromJson(json);
}

/// @nodoc
class _$AccountVerificationDTOTearOff {
  const _$AccountVerificationDTOTearOff();

// ignore: unused_element
  _AccountVerificationDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO data}) {
    return _AccountVerificationDTO(
      status: status,
      message: message,
      data: data,
    );
  }

// ignore: unused_element
  AccountVerificationDTO fromJson(Map<String, Object> json) {
    return AccountVerificationDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AccountVerificationDTO = _$AccountVerificationDTOTearOff();

/// @nodoc
mixin _$AccountVerificationDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  bool get status;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message;
  @nullable
  @JsonKey(includeIfNull: false)
  AccountDetailDTO get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AccountVerificationDTOCopyWith<AccountVerificationDTO> get copyWith;
}

/// @nodoc
abstract class $AccountVerificationDTOCopyWith<$Res> {
  factory $AccountVerificationDTOCopyWith(AccountVerificationDTO value,
          $Res Function(AccountVerificationDTO) then) =
      _$AccountVerificationDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO data});

  $AccountDetailDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$AccountVerificationDTOCopyWithImpl<$Res>
    implements $AccountVerificationDTOCopyWith<$Res> {
  _$AccountVerificationDTOCopyWithImpl(this._value, this._then);

  final AccountVerificationDTO _value;
  // ignore: unused_field
  final $Res Function(AccountVerificationDTO) _then;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as bool,
      message: message == freezed ? _value.message : message as String,
      data: data == freezed ? _value.data : data as AccountDetailDTO,
    ));
  }

  @override
  $AccountDetailDTOCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $AccountDetailDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$AccountVerificationDTOCopyWith<$Res>
    implements $AccountVerificationDTOCopyWith<$Res> {
  factory _$AccountVerificationDTOCopyWith(_AccountVerificationDTO value,
          $Res Function(_AccountVerificationDTO) then) =
      __$AccountVerificationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO data});

  @override
  $AccountDetailDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$AccountVerificationDTOCopyWithImpl<$Res>
    extends _$AccountVerificationDTOCopyWithImpl<$Res>
    implements _$AccountVerificationDTOCopyWith<$Res> {
  __$AccountVerificationDTOCopyWithImpl(_AccountVerificationDTO _value,
      $Res Function(_AccountVerificationDTO) _then)
      : super(_value, (v) => _then(v as _AccountVerificationDTO));

  @override
  _AccountVerificationDTO get _value => super._value as _AccountVerificationDTO;

  @override
  $Res call({
    Object status = freezed,
    Object message = freezed,
    Object data = freezed,
  }) {
    return _then(_AccountVerificationDTO(
      status: status == freezed ? _value.status : status as bool,
      message: message == freezed ? _value.message : message as String,
      data: data == freezed ? _value.data : data as AccountDetailDTO,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AccountVerificationDTO extends _AccountVerificationDTO {
  const _$_AccountVerificationDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          this.status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.message,
      @nullable
      @JsonKey(includeIfNull: false)
          this.data})
      : super._();

  factory _$_AccountVerificationDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountVerificationDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  final bool status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String message;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final AccountDetailDTO data;

  @override
  String toString() {
    return 'AccountVerificationDTO(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountVerificationDTO &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$AccountVerificationDTOCopyWith<_AccountVerificationDTO> get copyWith =>
      __$AccountVerificationDTOCopyWithImpl<_AccountVerificationDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountVerificationDTOToJson(this);
  }
}

abstract class _AccountVerificationDTO extends AccountVerificationDTO {
  const _AccountVerificationDTO._() : super._();
  const factory _AccountVerificationDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: false)
          bool status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String message,
      @nullable
      @JsonKey(includeIfNull: false)
          AccountDetailDTO data}) = _$_AccountVerificationDTO;

  factory _AccountVerificationDTO.fromJson(Map<String, dynamic> json) =
      _$_AccountVerificationDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false)
  bool get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get message;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  AccountDetailDTO get data;
  @override
  @JsonKey(ignore: true)
  _$AccountVerificationDTOCopyWith<_AccountVerificationDTO> get copyWith;
}
