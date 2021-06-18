// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

// ignore: unused_element
  _PaymentState call(
      {bool isLoading = false,
      @nullable DebitCard chargeableCard,
      bool hideEmail = false,
      bool hideAmount = false,
      bool fullScreen = false,
      @nullable String reference,
      bool status = false,
      bool verify = false,
      Widget logo = const PexzaLogo(padding: const EdgeInsets.all(8.0)),
      Either<Failure, Response> response}) {
    return _PaymentState(
      isLoading: isLoading,
      chargeableCard: chargeableCard,
      hideEmail: hideEmail,
      hideAmount: hideAmount,
      fullScreen: fullScreen,
      reference: reference,
      status: status,
      verify: verify,
      logo: logo,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  bool get isLoading;
  @nullable
  DebitCard get chargeableCard;
  bool get hideEmail;
  bool get hideAmount;
  bool get fullScreen; //
  @nullable
  String get reference;
  bool get status;
  bool get verify;
  Widget get logo; //
  Either<Failure, Response> get response;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      @nullable DebitCard chargeableCard,
      bool hideEmail,
      bool hideAmount,
      bool fullScreen,
      @nullable String reference,
      bool status,
      bool verify,
      Widget logo,
      Either<Failure, Response> response});

  $DebitCardCopyWith<$Res> get chargeableCard;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object chargeableCard = freezed,
    Object hideEmail = freezed,
    Object hideAmount = freezed,
    Object fullScreen = freezed,
    Object reference = freezed,
    Object status = freezed,
    Object verify = freezed,
    Object logo = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      chargeableCard: chargeableCard == freezed
          ? _value.chargeableCard
          : chargeableCard as DebitCard,
      hideEmail: hideEmail == freezed ? _value.hideEmail : hideEmail as bool,
      hideAmount:
          hideAmount == freezed ? _value.hideAmount : hideAmount as bool,
      fullScreen:
          fullScreen == freezed ? _value.fullScreen : fullScreen as bool,
      reference: reference == freezed ? _value.reference : reference as String,
      status: status == freezed ? _value.status : status as bool,
      verify: verify == freezed ? _value.verify : verify as bool,
      logo: logo == freezed ? _value.logo : logo as Widget,
      response: response == freezed
          ? _value.response
          : response as Either<Failure, Response>,
    ));
  }

  @override
  $DebitCardCopyWith<$Res> get chargeableCard {
    if (_value.chargeableCard == null) {
      return null;
    }
    return $DebitCardCopyWith<$Res>(_value.chargeableCard, (value) {
      return _then(_value.copyWith(chargeableCard: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$PaymentStateCopyWith(
          _PaymentState value, $Res Function(_PaymentState) then) =
      __$PaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      @nullable DebitCard chargeableCard,
      bool hideEmail,
      bool hideAmount,
      bool fullScreen,
      @nullable String reference,
      bool status,
      bool verify,
      Widget logo,
      Either<Failure, Response> response});

  @override
  $DebitCardCopyWith<$Res> get chargeableCard;
}

/// @nodoc
class __$PaymentStateCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentStateCopyWith<$Res> {
  __$PaymentStateCopyWithImpl(
      _PaymentState _value, $Res Function(_PaymentState) _then)
      : super(_value, (v) => _then(v as _PaymentState));

  @override
  _PaymentState get _value => super._value as _PaymentState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object chargeableCard = freezed,
    Object hideEmail = freezed,
    Object hideAmount = freezed,
    Object fullScreen = freezed,
    Object reference = freezed,
    Object status = freezed,
    Object verify = freezed,
    Object logo = freezed,
    Object response = freezed,
  }) {
    return _then(_PaymentState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      chargeableCard: chargeableCard == freezed
          ? _value.chargeableCard
          : chargeableCard as DebitCard,
      hideEmail: hideEmail == freezed ? _value.hideEmail : hideEmail as bool,
      hideAmount:
          hideAmount == freezed ? _value.hideAmount : hideAmount as bool,
      fullScreen:
          fullScreen == freezed ? _value.fullScreen : fullScreen as bool,
      reference: reference == freezed ? _value.reference : reference as String,
      status: status == freezed ? _value.status : status as bool,
      verify: verify == freezed ? _value.verify : verify as bool,
      logo: logo == freezed ? _value.logo : logo as Widget,
      response: response == freezed
          ? _value.response
          : response as Either<Failure, Response>,
    ));
  }
}

/// @nodoc
class _$_PaymentState extends _PaymentState {
  const _$_PaymentState(
      {this.isLoading = false,
      @nullable this.chargeableCard,
      this.hideEmail = false,
      this.hideAmount = false,
      this.fullScreen = false,
      @nullable this.reference,
      this.status = false,
      this.verify = false,
      this.logo = const PexzaLogo(padding: const EdgeInsets.all(8.0)),
      this.response})
      : assert(isLoading != null),
        assert(hideEmail != null),
        assert(hideAmount != null),
        assert(fullScreen != null),
        assert(status != null),
        assert(verify != null),
        assert(logo != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  @nullable
  final DebitCard chargeableCard;
  @JsonKey(defaultValue: false)
  @override
  final bool hideEmail;
  @JsonKey(defaultValue: false)
  @override
  final bool hideAmount;
  @JsonKey(defaultValue: false)
  @override
  final bool fullScreen;
  @override //
  @nullable
  final String reference;
  @JsonKey(defaultValue: false)
  @override
  final bool status;
  @JsonKey(defaultValue: false)
  @override
  final bool verify;
  @JsonKey(defaultValue: const PexzaLogo(padding: const EdgeInsets.all(8.0)))
  @override
  final Widget logo;
  @override //
  final Either<Failure, Response> response;

  @override
  String toString() {
    return 'PaymentState(isLoading: $isLoading, chargeableCard: $chargeableCard, hideEmail: $hideEmail, hideAmount: $hideAmount, fullScreen: $fullScreen, reference: $reference, status: $status, verify: $verify, logo: $logo, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.chargeableCard, chargeableCard) ||
                const DeepCollectionEquality()
                    .equals(other.chargeableCard, chargeableCard)) &&
            (identical(other.hideEmail, hideEmail) ||
                const DeepCollectionEquality()
                    .equals(other.hideEmail, hideEmail)) &&
            (identical(other.hideAmount, hideAmount) ||
                const DeepCollectionEquality()
                    .equals(other.hideAmount, hideAmount)) &&
            (identical(other.fullScreen, fullScreen) ||
                const DeepCollectionEquality()
                    .equals(other.fullScreen, fullScreen)) &&
            (identical(other.reference, reference) ||
                const DeepCollectionEquality()
                    .equals(other.reference, reference)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.verify, verify) ||
                const DeepCollectionEquality().equals(other.verify, verify)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(chargeableCard) ^
      const DeepCollectionEquality().hash(hideEmail) ^
      const DeepCollectionEquality().hash(hideAmount) ^
      const DeepCollectionEquality().hash(fullScreen) ^
      const DeepCollectionEquality().hash(reference) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(verify) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      __$PaymentStateCopyWithImpl<_PaymentState>(this, _$identity);
}

abstract class _PaymentState extends PaymentState {
  const _PaymentState._() : super._();
  const factory _PaymentState(
      {bool isLoading,
      @nullable DebitCard chargeableCard,
      bool hideEmail,
      bool hideAmount,
      bool fullScreen,
      @nullable String reference,
      bool status,
      bool verify,
      Widget logo,
      Either<Failure, Response> response}) = _$_PaymentState;

  @override
  bool get isLoading;
  @override
  @nullable
  DebitCard get chargeableCard;
  @override
  bool get hideEmail;
  @override
  bool get hideAmount;
  @override
  bool get fullScreen;
  @override //
  @nullable
  String get reference;
  @override
  bool get status;
  @override
  bool get verify;
  @override
  Widget get logo;
  @override //
  Either<Failure, Response> get response;
  @override
  @JsonKey(ignore: true)
  _$PaymentStateCopyWith<_PaymentState> get copyWith;
}
