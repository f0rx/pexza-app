// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of card_details_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentMetaDTO _$PaymentMetaDTOFromJson(Map<String, dynamic> json) {
  return _PaymentMetaDTO.fromJson(json);
}

/// @nodoc
class _$PaymentMetaDTOTearOff {
  const _$PaymentMetaDTOTearOff();

// ignore: unused_element
  _PaymentMetaDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(
          includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
      @IntToBoolSerializer()
          bool isSamplePayment,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String description}) {
    return _PaymentMetaDTO(
      cardNumber: cardNumber,
      chargeableId: chargeableId,
      invoiceNumber: invoiceNumber,
      isSamplePayment: isSamplePayment,
      description: description,
    );
  }

// ignore: unused_element
  PaymentMetaDTO fromJson(Map<String, Object> json) {
    return PaymentMetaDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentMetaDTO = _$PaymentMetaDTOTearOff();

/// @nodoc
mixin _$PaymentMetaDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
  String get cardNumber;
  @nullable
  @JsonKey(includeIfNull: false, name: 'chargeable_id')
  int get chargeableId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
  String get invoiceNumber;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
  @IntToBoolSerializer()
  bool get isSamplePayment;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PaymentMetaDTOCopyWith<PaymentMetaDTO> get copyWith;
}

/// @nodoc
abstract class $PaymentMetaDTOCopyWith<$Res> {
  factory $PaymentMetaDTOCopyWith(
          PaymentMetaDTO value, $Res Function(PaymentMetaDTO) then) =
      _$PaymentMetaDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(
          includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
      @IntToBoolSerializer()
          bool isSamplePayment,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String description});
}

/// @nodoc
class _$PaymentMetaDTOCopyWithImpl<$Res>
    implements $PaymentMetaDTOCopyWith<$Res> {
  _$PaymentMetaDTOCopyWithImpl(this._value, this._then);

  final PaymentMetaDTO _value;
  // ignore: unused_field
  final $Res Function(PaymentMetaDTO) _then;

  @override
  $Res call({
    Object cardNumber = freezed,
    Object chargeableId = freezed,
    Object invoiceNumber = freezed,
    Object isSamplePayment = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      cardNumber:
          cardNumber == freezed ? _value.cardNumber : cardNumber as String,
      chargeableId:
          chargeableId == freezed ? _value.chargeableId : chargeableId as int,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber as String,
      isSamplePayment: isSamplePayment == freezed
          ? _value.isSamplePayment
          : isSamplePayment as bool,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentMetaDTOCopyWith<$Res>
    implements $PaymentMetaDTOCopyWith<$Res> {
  factory _$PaymentMetaDTOCopyWith(
          _PaymentMetaDTO value, $Res Function(_PaymentMetaDTO) then) =
      __$PaymentMetaDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(
          includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
      @IntToBoolSerializer()
          bool isSamplePayment,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String description});
}

/// @nodoc
class __$PaymentMetaDTOCopyWithImpl<$Res>
    extends _$PaymentMetaDTOCopyWithImpl<$Res>
    implements _$PaymentMetaDTOCopyWith<$Res> {
  __$PaymentMetaDTOCopyWithImpl(
      _PaymentMetaDTO _value, $Res Function(_PaymentMetaDTO) _then)
      : super(_value, (v) => _then(v as _PaymentMetaDTO));

  @override
  _PaymentMetaDTO get _value => super._value as _PaymentMetaDTO;

  @override
  $Res call({
    Object cardNumber = freezed,
    Object chargeableId = freezed,
    Object invoiceNumber = freezed,
    Object isSamplePayment = freezed,
    Object description = freezed,
  }) {
    return _then(_PaymentMetaDTO(
      cardNumber:
          cardNumber == freezed ? _value.cardNumber : cardNumber as String,
      chargeableId:
          chargeableId == freezed ? _value.chargeableId : chargeableId as int,
      invoiceNumber: invoiceNumber == freezed
          ? _value.invoiceNumber
          : invoiceNumber as String,
      isSamplePayment: isSamplePayment == freezed
          ? _value.isSamplePayment
          : isSamplePayment as bool,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaymentMetaDTO extends _PaymentMetaDTO {
  const _$_PaymentMetaDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
          this.cardNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
          this.chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          this.invoiceNumber,
      @nullable
      @JsonKey(
          includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
      @IntToBoolSerializer()
          this.isSamplePayment,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.description})
      : super._();

  factory _$_PaymentMetaDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentMetaDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
  final String cardNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'chargeable_id')
  final int chargeableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
  final String invoiceNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
  @IntToBoolSerializer()
  final bool isSamplePayment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String description;

  @override
  String toString() {
    return 'PaymentMetaDTO(cardNumber: $cardNumber, chargeableId: $chargeableId, invoiceNumber: $invoiceNumber, isSamplePayment: $isSamplePayment, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentMetaDTO &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.chargeableId, chargeableId) ||
                const DeepCollectionEquality()
                    .equals(other.chargeableId, chargeableId)) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                const DeepCollectionEquality()
                    .equals(other.invoiceNumber, invoiceNumber)) &&
            (identical(other.isSamplePayment, isSamplePayment) ||
                const DeepCollectionEquality()
                    .equals(other.isSamplePayment, isSamplePayment)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(chargeableId) ^
      const DeepCollectionEquality().hash(invoiceNumber) ^
      const DeepCollectionEquality().hash(isSamplePayment) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PaymentMetaDTOCopyWith<_PaymentMetaDTO> get copyWith =>
      __$PaymentMetaDTOCopyWithImpl<_PaymentMetaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentMetaDTOToJson(this);
  }
}

abstract class _PaymentMetaDTO extends PaymentMetaDTO {
  const _PaymentMetaDTO._() : super._();
  const factory _PaymentMetaDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false, name: 'chargeable_id')
          int chargeableId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
          String invoiceNumber,
      @nullable
      @JsonKey(
          includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
      @IntToBoolSerializer()
          bool isSamplePayment,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String description}) = _$_PaymentMetaDTO;

  factory _PaymentMetaDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentMetaDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'card_number')
  String get cardNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'chargeable_id')
  int get chargeableId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
  String get invoiceNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_sample_payment')
  @IntToBoolSerializer()
  bool get isSamplePayment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$PaymentMetaDTOCopyWith<_PaymentMetaDTO> get copyWith;
}
