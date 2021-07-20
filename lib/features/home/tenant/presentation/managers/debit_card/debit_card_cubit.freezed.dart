// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'debit_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DebitCardStateTearOff {
  const _$DebitCardStateTearOff();

// ignore: unused_element
  _DebitCardState call(
      {bool isLoading = false,
      bool validate = false,
      bool hasShownFailureParam = false,
      @required DebitCardName cardName,
      @required DebitCardNumber cardNumber,
      @required DebitCardExpiryDate expiryDate,
      @required DebitCardCVV cardCVV,
      @required DebitCardPinField pin,
      @required BasicTextField<String> description,
      @nullable DebitCard currentDebitCard,
      KtList<DebitCard> debitCards = const KtList.empty(),
      Option<Either<Failure, Response>> response = const None()}) {
    return _DebitCardState(
      isLoading: isLoading,
      validate: validate,
      hasShownFailureParam: hasShownFailureParam,
      cardName: cardName,
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      cardCVV: cardCVV,
      pin: pin,
      description: description,
      currentDebitCard: currentDebitCard,
      debitCards: debitCards,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DebitCardState = _$DebitCardStateTearOff();

/// @nodoc
mixin _$DebitCardState {
  bool get isLoading;
  bool get validate;
  bool get hasShownFailureParam;
  DebitCardName get cardName;
  DebitCardNumber get cardNumber;
  DebitCardExpiryDate get expiryDate;
  DebitCardCVV get cardCVV;
  DebitCardPinField get pin;
  BasicTextField<String> get description;
  @nullable
  DebitCard get currentDebitCard;
  KtList<DebitCard> get debitCards;
  Option<Either<Failure, Response>> get response;

  @JsonKey(ignore: true)
  $DebitCardStateCopyWith<DebitCardState> get copyWith;
}

/// @nodoc
abstract class $DebitCardStateCopyWith<$Res> {
  factory $DebitCardStateCopyWith(
          DebitCardState value, $Res Function(DebitCardState) then) =
      _$DebitCardStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      bool hasShownFailureParam,
      DebitCardName cardName,
      DebitCardNumber cardNumber,
      DebitCardExpiryDate expiryDate,
      DebitCardCVV cardCVV,
      DebitCardPinField pin,
      BasicTextField<String> description,
      @nullable DebitCard currentDebitCard,
      KtList<DebitCard> debitCards,
      Option<Either<Failure, Response>> response});

  $DebitCardCopyWith<$Res> get currentDebitCard;
}

/// @nodoc
class _$DebitCardStateCopyWithImpl<$Res>
    implements $DebitCardStateCopyWith<$Res> {
  _$DebitCardStateCopyWithImpl(this._value, this._then);

  final DebitCardState _value;
  // ignore: unused_field
  final $Res Function(DebitCardState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object hasShownFailureParam = freezed,
    Object cardName = freezed,
    Object cardNumber = freezed,
    Object expiryDate = freezed,
    Object cardCVV = freezed,
    Object pin = freezed,
    Object description = freezed,
    Object currentDebitCard = freezed,
    Object debitCards = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      hasShownFailureParam: hasShownFailureParam == freezed
          ? _value.hasShownFailureParam
          : hasShownFailureParam as bool,
      cardName:
          cardName == freezed ? _value.cardName : cardName as DebitCardName,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber as DebitCardNumber,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate as DebitCardExpiryDate,
      cardCVV: cardCVV == freezed ? _value.cardCVV : cardCVV as DebitCardCVV,
      pin: pin == freezed ? _value.pin : pin as DebitCardPinField,
      description: description == freezed
          ? _value.description
          : description as BasicTextField<String>,
      currentDebitCard: currentDebitCard == freezed
          ? _value.currentDebitCard
          : currentDebitCard as DebitCard,
      debitCards: debitCards == freezed
          ? _value.debitCards
          : debitCards as KtList<DebitCard>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }

  @override
  $DebitCardCopyWith<$Res> get currentDebitCard {
    if (_value.currentDebitCard == null) {
      return null;
    }
    return $DebitCardCopyWith<$Res>(_value.currentDebitCard, (value) {
      return _then(_value.copyWith(currentDebitCard: value));
    });
  }
}

/// @nodoc
abstract class _$DebitCardStateCopyWith<$Res>
    implements $DebitCardStateCopyWith<$Res> {
  factory _$DebitCardStateCopyWith(
          _DebitCardState value, $Res Function(_DebitCardState) then) =
      __$DebitCardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      bool hasShownFailureParam,
      DebitCardName cardName,
      DebitCardNumber cardNumber,
      DebitCardExpiryDate expiryDate,
      DebitCardCVV cardCVV,
      DebitCardPinField pin,
      BasicTextField<String> description,
      @nullable DebitCard currentDebitCard,
      KtList<DebitCard> debitCards,
      Option<Either<Failure, Response>> response});

  @override
  $DebitCardCopyWith<$Res> get currentDebitCard;
}

/// @nodoc
class __$DebitCardStateCopyWithImpl<$Res>
    extends _$DebitCardStateCopyWithImpl<$Res>
    implements _$DebitCardStateCopyWith<$Res> {
  __$DebitCardStateCopyWithImpl(
      _DebitCardState _value, $Res Function(_DebitCardState) _then)
      : super(_value, (v) => _then(v as _DebitCardState));

  @override
  _DebitCardState get _value => super._value as _DebitCardState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object hasShownFailureParam = freezed,
    Object cardName = freezed,
    Object cardNumber = freezed,
    Object expiryDate = freezed,
    Object cardCVV = freezed,
    Object pin = freezed,
    Object description = freezed,
    Object currentDebitCard = freezed,
    Object debitCards = freezed,
    Object response = freezed,
  }) {
    return _then(_DebitCardState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      hasShownFailureParam: hasShownFailureParam == freezed
          ? _value.hasShownFailureParam
          : hasShownFailureParam as bool,
      cardName:
          cardName == freezed ? _value.cardName : cardName as DebitCardName,
      cardNumber: cardNumber == freezed
          ? _value.cardNumber
          : cardNumber as DebitCardNumber,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate as DebitCardExpiryDate,
      cardCVV: cardCVV == freezed ? _value.cardCVV : cardCVV as DebitCardCVV,
      pin: pin == freezed ? _value.pin : pin as DebitCardPinField,
      description: description == freezed
          ? _value.description
          : description as BasicTextField<String>,
      currentDebitCard: currentDebitCard == freezed
          ? _value.currentDebitCard
          : currentDebitCard as DebitCard,
      debitCards: debitCards == freezed
          ? _value.debitCards
          : debitCards as KtList<DebitCard>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }
}

/// @nodoc
class _$_DebitCardState extends _DebitCardState {
  const _$_DebitCardState(
      {this.isLoading = false,
      this.validate = false,
      this.hasShownFailureParam = false,
      @required this.cardName,
      @required this.cardNumber,
      @required this.expiryDate,
      @required this.cardCVV,
      @required this.pin,
      @required this.description,
      @nullable this.currentDebitCard,
      this.debitCards = const KtList.empty(),
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(hasShownFailureParam != null),
        assert(cardName != null),
        assert(cardNumber != null),
        assert(expiryDate != null),
        assert(cardCVV != null),
        assert(pin != null),
        assert(description != null),
        assert(debitCards != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @JsonKey(defaultValue: false)
  @override
  final bool hasShownFailureParam;
  @override
  final DebitCardName cardName;
  @override
  final DebitCardNumber cardNumber;
  @override
  final DebitCardExpiryDate expiryDate;
  @override
  final DebitCardCVV cardCVV;
  @override
  final DebitCardPinField pin;
  @override
  final BasicTextField<String> description;
  @override
  @nullable
  final DebitCard currentDebitCard;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<DebitCard> debitCards;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Response>> response;

  @override
  String toString() {
    return 'DebitCardState(isLoading: $isLoading, validate: $validate, hasShownFailureParam: $hasShownFailureParam, cardName: $cardName, cardNumber: $cardNumber, expiryDate: $expiryDate, cardCVV: $cardCVV, pin: $pin, description: $description, currentDebitCard: $currentDebitCard, debitCards: $debitCards, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DebitCardState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.hasShownFailureParam, hasShownFailureParam) ||
                const DeepCollectionEquality().equals(
                    other.hasShownFailureParam, hasShownFailureParam)) &&
            (identical(other.cardName, cardName) ||
                const DeepCollectionEquality()
                    .equals(other.cardName, cardName)) &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)) &&
            (identical(other.cardCVV, cardCVV) ||
                const DeepCollectionEquality()
                    .equals(other.cardCVV, cardCVV)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.currentDebitCard, currentDebitCard) ||
                const DeepCollectionEquality()
                    .equals(other.currentDebitCard, currentDebitCard)) &&
            (identical(other.debitCards, debitCards) ||
                const DeepCollectionEquality()
                    .equals(other.debitCards, debitCards)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(hasShownFailureParam) ^
      const DeepCollectionEquality().hash(cardName) ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(expiryDate) ^
      const DeepCollectionEquality().hash(cardCVV) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(currentDebitCard) ^
      const DeepCollectionEquality().hash(debitCards) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$DebitCardStateCopyWith<_DebitCardState> get copyWith =>
      __$DebitCardStateCopyWithImpl<_DebitCardState>(this, _$identity);
}

abstract class _DebitCardState extends DebitCardState {
  const _DebitCardState._() : super._();
  const factory _DebitCardState(
      {bool isLoading,
      bool validate,
      bool hasShownFailureParam,
      @required DebitCardName cardName,
      @required DebitCardNumber cardNumber,
      @required DebitCardExpiryDate expiryDate,
      @required DebitCardCVV cardCVV,
      @required DebitCardPinField pin,
      @required BasicTextField<String> description,
      @nullable DebitCard currentDebitCard,
      KtList<DebitCard> debitCards,
      Option<Either<Failure, Response>> response}) = _$_DebitCardState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  bool get hasShownFailureParam;
  @override
  DebitCardName get cardName;
  @override
  DebitCardNumber get cardNumber;
  @override
  DebitCardExpiryDate get expiryDate;
  @override
  DebitCardCVV get cardCVV;
  @override
  DebitCardPinField get pin;
  @override
  BasicTextField<String> get description;
  @override
  @nullable
  DebitCard get currentDebitCard;
  @override
  KtList<DebitCard> get debitCards;
  @override
  Option<Either<Failure, Response>> get response;
  @override
  @JsonKey(ignore: true)
  _$DebitCardStateCopyWith<_DebitCardState> get copyWith;
}
