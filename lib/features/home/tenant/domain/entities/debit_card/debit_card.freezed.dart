// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of debit_card.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DebitCardTearOff {
  const _$DebitCardTearOff();

// ignore: unused_element
  _DebitCard call(
      {@nullable UniqueId<int> id,
      @nullable DebitCardName cardName,
      @nullable DebitCardNumber cardNumber,
      @nullable DebitCardExpiryDate cardExpiryDate,
      @nullable DebitCardCVV cvv,
      @nullable DebitCardPinField cardPin,
      @nullable InvoiceMeta meta,
      @nullable bool verified,
      @nullable bool isPrimary,
      @nullable UniqueId<int> userId,
      @nullable Invoice invoice,
      @nullable CardBrand brand,
      @nullable BasicTextField<String> subBrand,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable CardType cardType,
      @nullable BasicTextField<String> bank,
      @nullable BasicTextField<int> bankId,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _DebitCard(
      id: id,
      cardName: cardName,
      cardNumber: cardNumber,
      cardExpiryDate: cardExpiryDate,
      cvv: cvv,
      cardPin: cardPin,
      meta: meta,
      verified: verified,
      isPrimary: isPrimary,
      userId: userId,
      invoice: invoice,
      brand: brand,
      subBrand: subBrand,
      countryCode: countryCode,
      countryName: countryName,
      cardType: cardType,
      bank: bank,
      bankId: bankId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DebitCard = _$DebitCardTearOff();

/// @nodoc
mixin _$DebitCard {
  /// Stored card Id
  @nullable
  UniqueId<int> get id;

  /// Full Name on Card
  @nullable
  DebitCardName get cardName;

  /// 16 digits number on card
  @nullable
  DebitCardNumber get cardNumber;

  /// Card Expiry date
  @nullable
  DebitCardExpiryDate get cardExpiryDate;

  /// Card Verification Value (CVV)
  @nullable
  DebitCardCVV get cvv;

  /// Card Pin
  @nullable
  DebitCardPinField get cardPin;

  /// Card Metadata
  @nullable
  InvoiceMeta get meta;

  /// If card has been verified
  @nullable
  bool get verified;

  /// If this card is the preferred one
  @nullable
  bool get isPrimary;

  /// User that owns this card
  @nullable
  UniqueId<int> get userId;

  /// Invoice data
  @nullable
  Invoice get invoice;

  /// Card Type [Mastercars, Visa...]
  @nullable
  CardBrand get brand;

  /// Sub-brand
  @nullable
  BasicTextField<String> get subBrand;

  /// Country code where card was issued
  @nullable
  BasicTextField<String> get countryCode;

  /// Country Name where card was issued
  @nullable
  BasicTextField<String> get countryName;

  /// Card Type [Debit, Credit]
  @nullable
  CardType get cardType;

  /// Bank Name that issued this card
  @nullable
  BasicTextField<String> get bank;

  /// Bank ID (Used by paystack)
  @nullable
  BasicTextField<int> get bankId;

  /// Date model was created
  @nullable
  DateTime get createdAt;

  /// Date model was updated
  @nullable
  DateTime get updatedAt;

  /// Date model was deleted
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $DebitCardCopyWith<DebitCard> get copyWith;
}

/// @nodoc
abstract class $DebitCardCopyWith<$Res> {
  factory $DebitCardCopyWith(DebitCard value, $Res Function(DebitCard) then) =
      _$DebitCardCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable DebitCardName cardName,
      @nullable DebitCardNumber cardNumber,
      @nullable DebitCardExpiryDate cardExpiryDate,
      @nullable DebitCardCVV cvv,
      @nullable DebitCardPinField cardPin,
      @nullable InvoiceMeta meta,
      @nullable bool verified,
      @nullable bool isPrimary,
      @nullable UniqueId<int> userId,
      @nullable Invoice invoice,
      @nullable CardBrand brand,
      @nullable BasicTextField<String> subBrand,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable CardType cardType,
      @nullable BasicTextField<String> bank,
      @nullable BasicTextField<int> bankId,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $InvoiceMetaCopyWith<$Res> get meta;
  $InvoiceCopyWith<$Res> get invoice;
}

/// @nodoc
class _$DebitCardCopyWithImpl<$Res> implements $DebitCardCopyWith<$Res> {
  _$DebitCardCopyWithImpl(this._value, this._then);

  final DebitCard _value;
  // ignore: unused_field
  final $Res Function(DebitCard) _then;

  @override
  $Res call({
    Object id = freezed,
    Object cardName = freezed,
    Object cardNumber = freezed,
    Object cardExpiryDate = freezed,
    Object cvv = freezed,
    Object cardPin = freezed,
    Object meta = freezed,
    Object verified = freezed,
    Object isPrimary = freezed,
    Object userId = freezed,
    Object invoice = freezed,
    Object brand = freezed,
    Object subBrand = freezed,
    Object countryCode = freezed,
    Object countryName = freezed,
    Object cardType = freezed,
    Object bank = freezed,
    Object bankId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      cardName:
          cardName == freezed ? _value.cardName : cardName as DebitCardName,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber as DebitCardNumber,
      cardExpiryDate: cardExpiryDate == freezed
          ? _value.cardExpiryDate
          : cardExpiryDate as DebitCardExpiryDate,
      cvv: cvv == freezed ? _value.cvv : cvv as DebitCardCVV,
      cardPin:
          cardPin == freezed ? _value.cardPin : cardPin as DebitCardPinField,
      meta: meta == freezed ? _value.meta : meta as InvoiceMeta,
      verified: verified == freezed ? _value.verified : verified as bool,
      isPrimary: isPrimary == freezed ? _value.isPrimary : isPrimary as bool,
      userId: userId == freezed ? _value.userId : userId as UniqueId<int>,
      invoice: invoice == freezed ? _value.invoice : invoice as Invoice,
      brand: brand == freezed ? _value.brand : brand as CardBrand,
      subBrand: subBrand == freezed
          ? _value.subBrand
          : subBrand as BasicTextField<String>,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode as BasicTextField<String>,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName as BasicTextField<String>,
      cardType: cardType == freezed ? _value.cardType : cardType as CardType,
      bank: bank == freezed ? _value.bank : bank as BasicTextField<String>,
      bankId: bankId == freezed ? _value.bankId : bankId as BasicTextField<int>,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $InvoiceMetaCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $InvoiceMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $InvoiceCopyWith<$Res> get invoice {
    if (_value.invoice == null) {
      return null;
    }
    return $InvoiceCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value));
    });
  }
}

/// @nodoc
abstract class _$DebitCardCopyWith<$Res> implements $DebitCardCopyWith<$Res> {
  factory _$DebitCardCopyWith(
          _DebitCard value, $Res Function(_DebitCard) then) =
      __$DebitCardCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable DebitCardName cardName,
      @nullable DebitCardNumber cardNumber,
      @nullable DebitCardExpiryDate cardExpiryDate,
      @nullable DebitCardCVV cvv,
      @nullable DebitCardPinField cardPin,
      @nullable InvoiceMeta meta,
      @nullable bool verified,
      @nullable bool isPrimary,
      @nullable UniqueId<int> userId,
      @nullable Invoice invoice,
      @nullable CardBrand brand,
      @nullable BasicTextField<String> subBrand,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable CardType cardType,
      @nullable BasicTextField<String> bank,
      @nullable BasicTextField<int> bankId,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $InvoiceMetaCopyWith<$Res> get meta;
  @override
  $InvoiceCopyWith<$Res> get invoice;
}

/// @nodoc
class __$DebitCardCopyWithImpl<$Res> extends _$DebitCardCopyWithImpl<$Res>
    implements _$DebitCardCopyWith<$Res> {
  __$DebitCardCopyWithImpl(_DebitCard _value, $Res Function(_DebitCard) _then)
      : super(_value, (v) => _then(v as _DebitCard));

  @override
  _DebitCard get _value => super._value as _DebitCard;

  @override
  $Res call({
    Object id = freezed,
    Object cardName = freezed,
    Object cardNumber = freezed,
    Object cardExpiryDate = freezed,
    Object cvv = freezed,
    Object cardPin = freezed,
    Object meta = freezed,
    Object verified = freezed,
    Object isPrimary = freezed,
    Object userId = freezed,
    Object invoice = freezed,
    Object brand = freezed,
    Object subBrand = freezed,
    Object countryCode = freezed,
    Object countryName = freezed,
    Object cardType = freezed,
    Object bank = freezed,
    Object bankId = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_DebitCard(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      cardName:
          cardName == freezed ? _value.cardName : cardName as DebitCardName,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber as DebitCardNumber,
      cardExpiryDate: cardExpiryDate == freezed
          ? _value.cardExpiryDate
          : cardExpiryDate as DebitCardExpiryDate,
      cvv: cvv == freezed ? _value.cvv : cvv as DebitCardCVV,
      cardPin:
          cardPin == freezed ? _value.cardPin : cardPin as DebitCardPinField,
      meta: meta == freezed ? _value.meta : meta as InvoiceMeta,
      verified: verified == freezed ? _value.verified : verified as bool,
      isPrimary: isPrimary == freezed ? _value.isPrimary : isPrimary as bool,
      userId: userId == freezed ? _value.userId : userId as UniqueId<int>,
      invoice: invoice == freezed ? _value.invoice : invoice as Invoice,
      brand: brand == freezed ? _value.brand : brand as CardBrand,
      subBrand: subBrand == freezed
          ? _value.subBrand
          : subBrand as BasicTextField<String>,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode as BasicTextField<String>,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName as BasicTextField<String>,
      cardType: cardType == freezed ? _value.cardType : cardType as CardType,
      bank: bank == freezed ? _value.bank : bank as BasicTextField<String>,
      bankId: bankId == freezed ? _value.bankId : bankId as BasicTextField<int>,
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
class _$_DebitCard extends _DebitCard {
  const _$_DebitCard(
      {@nullable this.id,
      @nullable this.cardName,
      @nullable this.cardNumber,
      @nullable this.cardExpiryDate,
      @nullable this.cvv,
      @nullable this.cardPin,
      @nullable this.meta,
      @nullable this.verified,
      @nullable this.isPrimary,
      @nullable this.userId,
      @nullable this.invoice,
      @nullable this.brand,
      @nullable this.subBrand,
      @nullable this.countryCode,
      @nullable this.countryName,
      @nullable this.cardType,
      @nullable this.bank,
      @nullable this.bankId,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override

  /// Stored card Id
  @nullable
  final UniqueId<int> id;
  @override

  /// Full Name on Card
  @nullable
  final DebitCardName cardName;
  @override

  /// 16 digits number on card
  @nullable
  final DebitCardNumber cardNumber;
  @override

  /// Card Expiry date
  @nullable
  final DebitCardExpiryDate cardExpiryDate;
  @override

  /// Card Verification Value (CVV)
  @nullable
  final DebitCardCVV cvv;
  @override

  /// Card Pin
  @nullable
  final DebitCardPinField cardPin;
  @override

  /// Card Metadata
  @nullable
  final InvoiceMeta meta;
  @override

  /// If card has been verified
  @nullable
  final bool verified;
  @override

  /// If this card is the preferred one
  @nullable
  final bool isPrimary;
  @override

  /// User that owns this card
  @nullable
  final UniqueId<int> userId;
  @override

  /// Invoice data
  @nullable
  final Invoice invoice;
  @override

  /// Card Type [Mastercars, Visa...]
  @nullable
  final CardBrand brand;
  @override

  /// Sub-brand
  @nullable
  final BasicTextField<String> subBrand;
  @override

  /// Country code where card was issued
  @nullable
  final BasicTextField<String> countryCode;
  @override

  /// Country Name where card was issued
  @nullable
  final BasicTextField<String> countryName;
  @override

  /// Card Type [Debit, Credit]
  @nullable
  final CardType cardType;
  @override

  /// Bank Name that issued this card
  @nullable
  final BasicTextField<String> bank;
  @override

  /// Bank ID (Used by paystack)
  @nullable
  final BasicTextField<int> bankId;
  @override

  /// Date model was created
  @nullable
  final DateTime createdAt;
  @override

  /// Date model was updated
  @nullable
  final DateTime updatedAt;
  @override

  /// Date model was deleted
  @nullable
  final DateTime deletedAt;

  @override
  String toString() {
    return 'DebitCard(id: $id, cardName: $cardName, cardNumber: $cardNumber, cardExpiryDate: $cardExpiryDate, cvv: $cvv, cardPin: $cardPin, meta: $meta, verified: $verified, isPrimary: $isPrimary, userId: $userId, invoice: $invoice, brand: $brand, subBrand: $subBrand, countryCode: $countryCode, countryName: $countryName, cardType: $cardType, bank: $bank, bankId: $bankId, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DebitCard &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cardName, cardName) ||
                const DeepCollectionEquality()
                    .equals(other.cardName, cardName)) &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.cardExpiryDate, cardExpiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.cardExpiryDate, cardExpiryDate)) &&
            (identical(other.cvv, cvv) ||
                const DeepCollectionEquality().equals(other.cvv, cvv)) &&
            (identical(other.cardPin, cardPin) ||
                const DeepCollectionEquality()
                    .equals(other.cardPin, cardPin)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.invoice, invoice) ||
                const DeepCollectionEquality()
                    .equals(other.invoice, invoice)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.subBrand, subBrand) ||
                const DeepCollectionEquality()
                    .equals(other.subBrand, subBrand)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
            (identical(other.cardType, cardType) ||
                const DeepCollectionEquality()
                    .equals(other.cardType, cardType)) &&
            (identical(other.bank, bank) ||
                const DeepCollectionEquality().equals(other.bank, bank)) &&
            (identical(other.bankId, bankId) ||
                const DeepCollectionEquality().equals(other.bankId, bankId)) &&
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
      const DeepCollectionEquality().hash(cardName) ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(cardExpiryDate) ^
      const DeepCollectionEquality().hash(cvv) ^
      const DeepCollectionEquality().hash(cardPin) ^
      const DeepCollectionEquality().hash(meta) ^
      const DeepCollectionEquality().hash(verified) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(invoice) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(subBrand) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(cardType) ^
      const DeepCollectionEquality().hash(bank) ^
      const DeepCollectionEquality().hash(bankId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$DebitCardCopyWith<_DebitCard> get copyWith =>
      __$DebitCardCopyWithImpl<_DebitCard>(this, _$identity);
}

abstract class _DebitCard extends DebitCard {
  const _DebitCard._() : super._();
  const factory _DebitCard(
      {@nullable UniqueId<int> id,
      @nullable DebitCardName cardName,
      @nullable DebitCardNumber cardNumber,
      @nullable DebitCardExpiryDate cardExpiryDate,
      @nullable DebitCardCVV cvv,
      @nullable DebitCardPinField cardPin,
      @nullable InvoiceMeta meta,
      @nullable bool verified,
      @nullable bool isPrimary,
      @nullable UniqueId<int> userId,
      @nullable Invoice invoice,
      @nullable CardBrand brand,
      @nullable BasicTextField<String> subBrand,
      @nullable BasicTextField<String> countryCode,
      @nullable BasicTextField<String> countryName,
      @nullable CardType cardType,
      @nullable BasicTextField<String> bank,
      @nullable BasicTextField<int> bankId,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_DebitCard;

  @override

  /// Stored card Id
  @nullable
  UniqueId<int> get id;
  @override

  /// Full Name on Card
  @nullable
  DebitCardName get cardName;
  @override

  /// 16 digits number on card
  @nullable
  DebitCardNumber get cardNumber;
  @override

  /// Card Expiry date
  @nullable
  DebitCardExpiryDate get cardExpiryDate;
  @override

  /// Card Verification Value (CVV)
  @nullable
  DebitCardCVV get cvv;
  @override

  /// Card Pin
  @nullable
  DebitCardPinField get cardPin;
  @override

  /// Card Metadata
  @nullable
  InvoiceMeta get meta;
  @override

  /// If card has been verified
  @nullable
  bool get verified;
  @override

  /// If this card is the preferred one
  @nullable
  bool get isPrimary;
  @override

  /// User that owns this card
  @nullable
  UniqueId<int> get userId;
  @override

  /// Invoice data
  @nullable
  Invoice get invoice;
  @override

  /// Card Type [Mastercars, Visa...]
  @nullable
  CardBrand get brand;
  @override

  /// Sub-brand
  @nullable
  BasicTextField<String> get subBrand;
  @override

  /// Country code where card was issued
  @nullable
  BasicTextField<String> get countryCode;
  @override

  /// Country Name where card was issued
  @nullable
  BasicTextField<String> get countryName;
  @override

  /// Card Type [Debit, Credit]
  @nullable
  CardType get cardType;
  @override

  /// Bank Name that issued this card
  @nullable
  BasicTextField<String> get bank;
  @override

  /// Bank ID (Used by paystack)
  @nullable
  BasicTextField<int> get bankId;
  @override

  /// Date model was created
  @nullable
  DateTime get createdAt;
  @override

  /// Date model was updated
  @nullable
  DateTime get updatedAt;
  @override

  /// Date model was deleted
  @nullable
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$DebitCardCopyWith<_DebitCard> get copyWith;
}
