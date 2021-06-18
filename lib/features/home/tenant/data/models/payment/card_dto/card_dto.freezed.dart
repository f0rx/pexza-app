// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of card_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CardDTO _$CardDTOFromJson(Map<String, dynamic> json) {
  return _CardDTO.fromJson(json);
}

/// @nodoc
class _$CardDTOTearOff {
  const _$CardDTOTearOff();

// ignore: unused_element
  _CardDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          String description,
      @nullable
      @JsonKey(includeIfNull: false)
          CardData card,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_details')
          PaymentDetailsDTO paymentDetails}) {
    return _CardDTO(
      cardNumber: cardNumber,
      description: description,
      card: card,
      invoice: invoice,
      paymentDetails: paymentDetails,
    );
  }

// ignore: unused_element
  CardDTO fromJson(Map<String, Object> json) {
    return CardDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CardDTO = _$CardDTOTearOff();

/// @nodoc
mixin _$CardDTO {
  @nullable
  @JsonKey(includeIfNull: false, name: 'card_number')
  String get cardNumber;
  @nullable
  @JsonKey(includeIfNull: false)
  String get description; //
  @nullable
  @JsonKey(includeIfNull: false)
  CardData get card;
  @nullable
  @JsonKey(includeIfNull: false)
  InvoiceDTO get invoice;
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_details')
  PaymentDetailsDTO get paymentDetails;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CardDTOCopyWith<CardDTO> get copyWith;
}

/// @nodoc
abstract class $CardDTOCopyWith<$Res> {
  factory $CardDTOCopyWith(CardDTO value, $Res Function(CardDTO) then) =
      _$CardDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          String description,
      @nullable
      @JsonKey(includeIfNull: false)
          CardData card,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_details')
          PaymentDetailsDTO paymentDetails});

  $CardDataCopyWith<$Res> get card;
  $InvoiceDTOCopyWith<$Res> get invoice;
  $PaymentDetailsDTOCopyWith<$Res> get paymentDetails;
}

/// @nodoc
class _$CardDTOCopyWithImpl<$Res> implements $CardDTOCopyWith<$Res> {
  _$CardDTOCopyWithImpl(this._value, this._then);

  final CardDTO _value;
  // ignore: unused_field
  final $Res Function(CardDTO) _then;

  @override
  $Res call({
    Object cardNumber = freezed,
    Object description = freezed,
    Object card = freezed,
    Object invoice = freezed,
    Object paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      cardNumber:
          cardNumber == freezed ? _value.cardNumber : cardNumber as String,
      description:
          description == freezed ? _value.description : description as String,
      card: card == freezed ? _value.card : card as CardData,
      invoice: invoice == freezed ? _value.invoice : invoice as InvoiceDTO,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails as PaymentDetailsDTO,
    ));
  }

  @override
  $CardDataCopyWith<$Res> get card {
    if (_value.card == null) {
      return null;
    }
    return $CardDataCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }

  @override
  $InvoiceDTOCopyWith<$Res> get invoice {
    if (_value.invoice == null) {
      return null;
    }
    return $InvoiceDTOCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }

  @override
  $PaymentDetailsDTOCopyWith<$Res> get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }
    return $PaymentDetailsDTOCopyWith<$Res>(_value.paymentDetails, (value) {
      return _then(_value.copyWith(paymentDetails: value));
    });
  }
}

/// @nodoc
abstract class _$CardDTOCopyWith<$Res> implements $CardDTOCopyWith<$Res> {
  factory _$CardDTOCopyWith(_CardDTO value, $Res Function(_CardDTO) then) =
      __$CardDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          String description,
      @nullable
      @JsonKey(includeIfNull: false)
          CardData card,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_details')
          PaymentDetailsDTO paymentDetails});

  @override
  $CardDataCopyWith<$Res> get card;
  @override
  $InvoiceDTOCopyWith<$Res> get invoice;
  @override
  $PaymentDetailsDTOCopyWith<$Res> get paymentDetails;
}

/// @nodoc
class __$CardDTOCopyWithImpl<$Res> extends _$CardDTOCopyWithImpl<$Res>
    implements _$CardDTOCopyWith<$Res> {
  __$CardDTOCopyWithImpl(_CardDTO _value, $Res Function(_CardDTO) _then)
      : super(_value, (v) => _then(v as _CardDTO));

  @override
  _CardDTO get _value => super._value as _CardDTO;

  @override
  $Res call({
    Object cardNumber = freezed,
    Object description = freezed,
    Object card = freezed,
    Object invoice = freezed,
    Object paymentDetails = freezed,
  }) {
    return _then(_CardDTO(
      cardNumber:
          cardNumber == freezed ? _value.cardNumber : cardNumber as String,
      description:
          description == freezed ? _value.description : description as String,
      card: card == freezed ? _value.card : card as CardData,
      invoice: invoice == freezed ? _value.invoice : invoice as InvoiceDTO,
      paymentDetails: paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails as PaymentDetailsDTO,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CardDTO extends _CardDTO {
  const _$_CardDTO(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'card_number')
          this.cardNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          this.description,
      @nullable
      @JsonKey(includeIfNull: false)
          this.card,
      @nullable
      @JsonKey(includeIfNull: false)
          this.invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_details')
          this.paymentDetails})
      : super._();

  factory _$_CardDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CardDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'card_number')
  final String cardNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String description;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  final CardData card;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final InvoiceDTO invoice;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_details')
  final PaymentDetailsDTO paymentDetails;

  @override
  String toString() {
    return 'CardDTO(cardNumber: $cardNumber, description: $description, card: $card, invoice: $invoice, paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardDTO &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)) &&
            (identical(other.invoice, invoice) ||
                const DeepCollectionEquality()
                    .equals(other.invoice, invoice)) &&
            (identical(other.paymentDetails, paymentDetails) ||
                const DeepCollectionEquality()
                    .equals(other.paymentDetails, paymentDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(card) ^
      const DeepCollectionEquality().hash(invoice) ^
      const DeepCollectionEquality().hash(paymentDetails);

  @JsonKey(ignore: true)
  @override
  _$CardDTOCopyWith<_CardDTO> get copyWith =>
      __$CardDTOCopyWithImpl<_CardDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardDTOToJson(this);
  }
}

abstract class _CardDTO extends CardDTO {
  const _CardDTO._() : super._();
  const factory _CardDTO(
      {@nullable
      @JsonKey(includeIfNull: false, name: 'card_number')
          String cardNumber,
      @nullable
      @JsonKey(includeIfNull: false)
          String description,
      @nullable
      @JsonKey(includeIfNull: false)
          CardData card,
      @nullable
      @JsonKey(includeIfNull: false)
          InvoiceDTO invoice,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_details')
          PaymentDetailsDTO paymentDetails}) = _$_CardDTO;

  factory _CardDTO.fromJson(Map<String, dynamic> json) = _$_CardDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'card_number')
  String get cardNumber;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get description;
  @override //
  @nullable
  @JsonKey(includeIfNull: false)
  CardData get card;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  InvoiceDTO get invoice;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_details')
  PaymentDetailsDTO get paymentDetails;
  @override
  @JsonKey(ignore: true)
  _$CardDTOCopyWith<_CardDTO> get copyWith;
}
