// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_merger_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordMergerStateTearOff {
  const _$LandlordMergerStateTearOff();

// ignore: unused_element
  _LandlordMergerState call(
      {bool isLoading = false,
      bool validate = false,
      @required EmailAddress email,
      @required AmountField amount,
      PaymentPlan plan = PaymentPlan.yearly,
      int duration = LandlordMergerState.kDefaultDuration,
      @nullable Currency currency,
      @nullable LandlordProperty selectedProperty,
      @nullable LandlordApartment selectedApartment,
      KtList<LandlordProperty> properties = const KtList.empty(),
      KtList<Currency> currencies = const KtList.empty(),
      KtList<LandlordApartment> apartments = const KtList.empty(),
      Option<Either<Failure, Success>> response = const None()}) {
    return _LandlordMergerState(
      isLoading: isLoading,
      validate: validate,
      email: email,
      amount: amount,
      plan: plan,
      duration: duration,
      currency: currency,
      selectedProperty: selectedProperty,
      selectedApartment: selectedApartment,
      properties: properties,
      currencies: currencies,
      apartments: apartments,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordMergerState = _$LandlordMergerStateTearOff();

/// @nodoc
mixin _$LandlordMergerState {
  bool get isLoading;
  bool get validate;
  EmailAddress get email;
  AmountField get amount;
  PaymentPlan get plan;
  int get duration;
  @nullable
  Currency get currency;
  @nullable
  LandlordProperty get selectedProperty;
  @nullable
  LandlordApartment get selectedApartment;
  KtList<LandlordProperty> get properties;
  KtList<Currency> get currencies;
  KtList<LandlordApartment> get apartments;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $LandlordMergerStateCopyWith<LandlordMergerState> get copyWith;
}

/// @nodoc
abstract class $LandlordMergerStateCopyWith<$Res> {
  factory $LandlordMergerStateCopyWith(
          LandlordMergerState value, $Res Function(LandlordMergerState) then) =
      _$LandlordMergerStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      EmailAddress email,
      AmountField amount,
      PaymentPlan plan,
      int duration,
      @nullable Currency currency,
      @nullable LandlordProperty selectedProperty,
      @nullable LandlordApartment selectedApartment,
      KtList<LandlordProperty> properties,
      KtList<Currency> currencies,
      KtList<LandlordApartment> apartments,
      Option<Either<Failure, Success>> response});

  $CurrencyCopyWith<$Res> get currency;
  $LandlordPropertyCopyWith<$Res> get selectedProperty;
  $LandlordApartmentCopyWith<$Res> get selectedApartment;
}

/// @nodoc
class _$LandlordMergerStateCopyWithImpl<$Res>
    implements $LandlordMergerStateCopyWith<$Res> {
  _$LandlordMergerStateCopyWithImpl(this._value, this._then);

  final LandlordMergerState _value;
  // ignore: unused_field
  final $Res Function(LandlordMergerState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object email = freezed,
    Object amount = freezed,
    Object plan = freezed,
    Object duration = freezed,
    Object currency = freezed,
    Object selectedProperty = freezed,
    Object selectedApartment = freezed,
    Object properties = freezed,
    Object currencies = freezed,
    Object apartments = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      email: email == freezed ? _value.email : email as EmailAddress,
      amount: amount == freezed ? _value.amount : amount as AmountField,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      duration: duration == freezed ? _value.duration : duration as int,
      currency: currency == freezed ? _value.currency : currency as Currency,
      selectedProperty: selectedProperty == freezed
          ? _value.selectedProperty
          : selectedProperty as LandlordProperty,
      selectedApartment: selectedApartment == freezed
          ? _value.selectedApartment
          : selectedApartment as LandlordApartment,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as KtList<Currency>,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }

  @override
  $CurrencyCopyWith<$Res> get currency {
    if (_value.currency == null) {
      return null;
    }
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }

  @override
  $LandlordPropertyCopyWith<$Res> get selectedProperty {
    if (_value.selectedProperty == null) {
      return null;
    }
    return $LandlordPropertyCopyWith<$Res>(_value.selectedProperty, (value) {
      return _then(_value.copyWith(selectedProperty: value));
    });
  }

  @override
  $LandlordApartmentCopyWith<$Res> get selectedApartment {
    if (_value.selectedApartment == null) {
      return null;
    }
    return $LandlordApartmentCopyWith<$Res>(_value.selectedApartment, (value) {
      return _then(_value.copyWith(selectedApartment: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordMergerStateCopyWith<$Res>
    implements $LandlordMergerStateCopyWith<$Res> {
  factory _$LandlordMergerStateCopyWith(_LandlordMergerState value,
          $Res Function(_LandlordMergerState) then) =
      __$LandlordMergerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      EmailAddress email,
      AmountField amount,
      PaymentPlan plan,
      int duration,
      @nullable Currency currency,
      @nullable LandlordProperty selectedProperty,
      @nullable LandlordApartment selectedApartment,
      KtList<LandlordProperty> properties,
      KtList<Currency> currencies,
      KtList<LandlordApartment> apartments,
      Option<Either<Failure, Success>> response});

  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $LandlordPropertyCopyWith<$Res> get selectedProperty;
  @override
  $LandlordApartmentCopyWith<$Res> get selectedApartment;
}

/// @nodoc
class __$LandlordMergerStateCopyWithImpl<$Res>
    extends _$LandlordMergerStateCopyWithImpl<$Res>
    implements _$LandlordMergerStateCopyWith<$Res> {
  __$LandlordMergerStateCopyWithImpl(
      _LandlordMergerState _value, $Res Function(_LandlordMergerState) _then)
      : super(_value, (v) => _then(v as _LandlordMergerState));

  @override
  _LandlordMergerState get _value => super._value as _LandlordMergerState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object email = freezed,
    Object amount = freezed,
    Object plan = freezed,
    Object duration = freezed,
    Object currency = freezed,
    Object selectedProperty = freezed,
    Object selectedApartment = freezed,
    Object properties = freezed,
    Object currencies = freezed,
    Object apartments = freezed,
    Object response = freezed,
  }) {
    return _then(_LandlordMergerState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      email: email == freezed ? _value.email : email as EmailAddress,
      amount: amount == freezed ? _value.amount : amount as AmountField,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      duration: duration == freezed ? _value.duration : duration as int,
      currency: currency == freezed ? _value.currency : currency as Currency,
      selectedProperty: selectedProperty == freezed
          ? _value.selectedProperty
          : selectedProperty as LandlordProperty,
      selectedApartment: selectedApartment == freezed
          ? _value.selectedApartment
          : selectedApartment as LandlordApartment,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as KtList<Currency>,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_LandlordMergerState extends _LandlordMergerState {
  const _$_LandlordMergerState(
      {this.isLoading = false,
      this.validate = false,
      @required this.email,
      @required this.amount,
      this.plan = PaymentPlan.yearly,
      this.duration = LandlordMergerState.kDefaultDuration,
      @nullable this.currency,
      @nullable this.selectedProperty,
      @nullable this.selectedApartment,
      this.properties = const KtList.empty(),
      this.currencies = const KtList.empty(),
      this.apartments = const KtList.empty(),
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(email != null),
        assert(amount != null),
        assert(plan != null),
        assert(duration != null),
        assert(properties != null),
        assert(currencies != null),
        assert(apartments != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final EmailAddress email;
  @override
  final AmountField amount;
  @JsonKey(defaultValue: PaymentPlan.yearly)
  @override
  final PaymentPlan plan;
  @JsonKey(defaultValue: LandlordMergerState.kDefaultDuration)
  @override
  final int duration;
  @override
  @nullable
  final Currency currency;
  @override
  @nullable
  final LandlordProperty selectedProperty;
  @override
  @nullable
  final LandlordApartment selectedApartment;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<LandlordProperty> properties;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<Currency> currencies;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<LandlordApartment> apartments;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'LandlordMergerState(isLoading: $isLoading, validate: $validate, email: $email, amount: $amount, plan: $plan, duration: $duration, currency: $currency, selectedProperty: $selectedProperty, selectedApartment: $selectedApartment, properties: $properties, currencies: $currencies, apartments: $apartments, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordMergerState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.plan, plan) ||
                const DeepCollectionEquality().equals(other.plan, plan)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.selectedProperty, selectedProperty) ||
                const DeepCollectionEquality()
                    .equals(other.selectedProperty, selectedProperty)) &&
            (identical(other.selectedApartment, selectedApartment) ||
                const DeepCollectionEquality()
                    .equals(other.selectedApartment, selectedApartment)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)) &&
            (identical(other.apartments, apartments) ||
                const DeepCollectionEquality()
                    .equals(other.apartments, apartments)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(plan) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(selectedProperty) ^
      const DeepCollectionEquality().hash(selectedApartment) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(currencies) ^
      const DeepCollectionEquality().hash(apartments) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$LandlordMergerStateCopyWith<_LandlordMergerState> get copyWith =>
      __$LandlordMergerStateCopyWithImpl<_LandlordMergerState>(
          this, _$identity);
}

abstract class _LandlordMergerState extends LandlordMergerState {
  const _LandlordMergerState._() : super._();
  const factory _LandlordMergerState(
      {bool isLoading,
      bool validate,
      @required EmailAddress email,
      @required AmountField amount,
      PaymentPlan plan,
      int duration,
      @nullable Currency currency,
      @nullable LandlordProperty selectedProperty,
      @nullable LandlordApartment selectedApartment,
      KtList<LandlordProperty> properties,
      KtList<Currency> currencies,
      KtList<LandlordApartment> apartments,
      Option<Either<Failure, Success>> response}) = _$_LandlordMergerState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  EmailAddress get email;
  @override
  AmountField get amount;
  @override
  PaymentPlan get plan;
  @override
  int get duration;
  @override
  @nullable
  Currency get currency;
  @override
  @nullable
  LandlordProperty get selectedProperty;
  @override
  @nullable
  LandlordApartment get selectedApartment;
  @override
  KtList<LandlordProperty> get properties;
  @override
  KtList<Currency> get currencies;
  @override
  KtList<LandlordApartment> get apartments;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$LandlordMergerStateCopyWith<_LandlordMergerState> get copyWith;
}
