// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of payment_details_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentDetailsDTO _$PaymentDetailsDTOFromJson(Map<String, dynamic> json) {
  return _PaymentDetailsDTO.fromJson(json);
}

/// @nodoc
class _$PaymentDetailsDTOTearOff {
  const _$PaymentDetailsDTOTearOff();

// ignore: unused_element
  _PaymentDetailsDTO call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'metadata')
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email}) {
    return _PaymentDetailsDTO(
      amount: amount,
      meta: meta,
      email: email,
    );
  }

// ignore: unused_element
  PaymentDetailsDTO fromJson(Map<String, Object> json) {
    return PaymentDetailsDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentDetailsDTO = _$PaymentDetailsDTOTearOff();

/// @nodoc
mixin _$PaymentDetailsDTO {
  @nullable
  @JsonKey(includeIfNull: false)
  int get amount;
  @nullable
  @JsonKey(includeIfNull: false, name: 'metadata')
  PaymentMetaDTO get meta;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PaymentDetailsDTOCopyWith<PaymentDetailsDTO> get copyWith;
}

/// @nodoc
abstract class $PaymentDetailsDTOCopyWith<$Res> {
  factory $PaymentDetailsDTOCopyWith(
          PaymentDetailsDTO value, $Res Function(PaymentDetailsDTO) then) =
      _$PaymentDetailsDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'metadata')
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email});

  $PaymentMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class _$PaymentDetailsDTOCopyWithImpl<$Res>
    implements $PaymentDetailsDTOCopyWith<$Res> {
  _$PaymentDetailsDTOCopyWithImpl(this._value, this._then);

  final PaymentDetailsDTO _value;
  // ignore: unused_field
  final $Res Function(PaymentDetailsDTO) _then;

  @override
  $Res call({
    Object amount = freezed,
    Object meta = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as int,
      meta: meta == freezed ? _value.meta : meta as PaymentMetaDTO,
      email: email == freezed ? _value.email : email as String,
    ));
  }

  @override
  $PaymentMetaDTOCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $PaymentMetaDTOCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentDetailsDTOCopyWith<$Res>
    implements $PaymentDetailsDTOCopyWith<$Res> {
  factory _$PaymentDetailsDTOCopyWith(
          _PaymentDetailsDTO value, $Res Function(_PaymentDetailsDTO) then) =
      __$PaymentDetailsDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'metadata')
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email});

  @override
  $PaymentMetaDTOCopyWith<$Res> get meta;
}

/// @nodoc
class __$PaymentDetailsDTOCopyWithImpl<$Res>
    extends _$PaymentDetailsDTOCopyWithImpl<$Res>
    implements _$PaymentDetailsDTOCopyWith<$Res> {
  __$PaymentDetailsDTOCopyWithImpl(
      _PaymentDetailsDTO _value, $Res Function(_PaymentDetailsDTO) _then)
      : super(_value, (v) => _then(v as _PaymentDetailsDTO));

  @override
  _PaymentDetailsDTO get _value => super._value as _PaymentDetailsDTO;

  @override
  $Res call({
    Object amount = freezed,
    Object meta = freezed,
    Object email = freezed,
  }) {
    return _then(_PaymentDetailsDTO(
      amount: amount == freezed ? _value.amount : amount as int,
      meta: meta == freezed ? _value.meta : meta as PaymentMetaDTO,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaymentDetailsDTO extends _PaymentDetailsDTO {
  const _$_PaymentDetailsDTO(
      {@nullable @JsonKey(includeIfNull: false) this.amount,
      @nullable @JsonKey(includeIfNull: false, name: 'metadata') this.meta,
      @nullable @JsonKey(includeIfNull: false, defaultValue: '') this.email})
      : super._();

  factory _$_PaymentDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentDetailsDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'metadata')
  final PaymentMetaDTO meta;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String email;

  @override
  String toString() {
    return 'PaymentDetailsDTO(amount: $amount, meta: $meta, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentDetailsDTO &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(meta) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$PaymentDetailsDTOCopyWith<_PaymentDetailsDTO> get copyWith =>
      __$PaymentDetailsDTOCopyWithImpl<_PaymentDetailsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentDetailsDTOToJson(this);
  }
}

abstract class _PaymentDetailsDTO extends PaymentDetailsDTO {
  const _PaymentDetailsDTO._() : super._();
  const factory _PaymentDetailsDTO(
      {@nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'metadata')
          PaymentMetaDTO meta,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String email}) = _$_PaymentDetailsDTO;

  factory _PaymentDetailsDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentDetailsDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'metadata')
  PaymentMetaDTO get meta;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get email;
  @override
  @JsonKey(ignore: true)
  _$PaymentDetailsDTOCopyWith<_PaymentDetailsDTO> get copyWith;
}
