// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of property_rent_history.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PropertyRentHistoryTearOff {
  const _$PropertyRentHistoryTearOff();

// ignore: unused_element
  _PropertyRentHistory call(
      {@nullable UniqueId<int> id,
      @nullable Country country,
      @nullable BasicTextField<int> amount,
      @nullable User tenant,
      @nullable User landlord,
      @nullable ApartmentStatus status,
      @nullable BaseApartment apartment,
      @nullable LandlordProperty property,
      @nullable PaymentPlan plan,
      @nullable LandlordRentPaymentHistory recentPayment,
      @nullable KtList<LandlordRentPaymentHistory> paymentHistories,
      bool canRenew = false,
      @nullable DateTime renewsOn,
      @nullable DateTime expiresOn,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _PropertyRentHistory(
      id: id,
      country: country,
      amount: amount,
      tenant: tenant,
      landlord: landlord,
      status: status,
      apartment: apartment,
      property: property,
      plan: plan,
      recentPayment: recentPayment,
      paymentHistories: paymentHistories,
      canRenew: canRenew,
      renewsOn: renewsOn,
      expiresOn: expiresOn,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyRentHistory = _$PropertyRentHistoryTearOff();

/// @nodoc
mixin _$PropertyRentHistory {
  @nullable
  UniqueId<int> get id;
  @nullable
  Country get country;
  @nullable
  BasicTextField<int> get amount;
  @nullable
  User get tenant;
  @nullable
  User get landlord;
  @nullable
  ApartmentStatus get status;
  @nullable
  BaseApartment get apartment;
  @nullable
  LandlordProperty get property;
  @nullable
  PaymentPlan get plan;
  @nullable
  LandlordRentPaymentHistory get recentPayment;
  @nullable
  KtList<LandlordRentPaymentHistory> get paymentHistories;
  bool get canRenew;
  @nullable
  DateTime get renewsOn;
  @nullable
  DateTime get expiresOn;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $PropertyRentHistoryCopyWith<PropertyRentHistory> get copyWith;
}

/// @nodoc
abstract class $PropertyRentHistoryCopyWith<$Res> {
  factory $PropertyRentHistoryCopyWith(
          PropertyRentHistory value, $Res Function(PropertyRentHistory) then) =
      _$PropertyRentHistoryCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable Country country,
      @nullable BasicTextField<int> amount,
      @nullable User tenant,
      @nullable User landlord,
      @nullable ApartmentStatus status,
      @nullable BaseApartment apartment,
      @nullable LandlordProperty property,
      @nullable PaymentPlan plan,
      @nullable LandlordRentPaymentHistory recentPayment,
      @nullable KtList<LandlordRentPaymentHistory> paymentHistories,
      bool canRenew,
      @nullable DateTime renewsOn,
      @nullable DateTime expiresOn,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $CountryCopyWith<$Res> get country;
  $UserCopyWith<$Res> get tenant;
  $UserCopyWith<$Res> get landlord;
  $LandlordPropertyCopyWith<$Res> get property;
  $LandlordRentPaymentHistoryCopyWith<$Res> get recentPayment;
}

/// @nodoc
class _$PropertyRentHistoryCopyWithImpl<$Res>
    implements $PropertyRentHistoryCopyWith<$Res> {
  _$PropertyRentHistoryCopyWithImpl(this._value, this._then);

  final PropertyRentHistory _value;
  // ignore: unused_field
  final $Res Function(PropertyRentHistory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object country = freezed,
    Object amount = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object status = freezed,
    Object apartment = freezed,
    Object property = freezed,
    Object plan = freezed,
    Object recentPayment = freezed,
    Object paymentHistories = freezed,
    Object canRenew = freezed,
    Object renewsOn = freezed,
    Object expiresOn = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      country: country == freezed ? _value.country : country as Country,
      amount: amount == freezed ? _value.amount : amount as BasicTextField<int>,
      tenant: tenant == freezed ? _value.tenant : tenant as User,
      landlord: landlord == freezed ? _value.landlord : landlord as User,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      apartment:
          apartment == freezed ? _value.apartment : apartment as BaseApartment,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      recentPayment: recentPayment == freezed
          ? _value.recentPayment
          : recentPayment as LandlordRentPaymentHistory,
      paymentHistories: paymentHistories == freezed
          ? _value.paymentHistories
          : paymentHistories as KtList<LandlordRentPaymentHistory>,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      renewsOn: renewsOn == freezed ? _value.renewsOn : renewsOn as DateTime,
      expiresOn:
          expiresOn == freezed ? _value.expiresOn : expiresOn as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    if (_value.country == null) {
      return null;
    }
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }

  @override
  $UserCopyWith<$Res> get tenant {
    if (_value.tenant == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.tenant, (value) {
      return _then(_value.copyWith(tenant: value));
    });
  }

  @override
  $UserCopyWith<$Res> get landlord {
    if (_value.landlord == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.landlord, (value) {
      return _then(_value.copyWith(landlord: value));
    });
  }

  @override
  $LandlordPropertyCopyWith<$Res> get property {
    if (_value.property == null) {
      return null;
    }
    return $LandlordPropertyCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }

  @override
  $LandlordRentPaymentHistoryCopyWith<$Res> get recentPayment {
    if (_value.recentPayment == null) {
      return null;
    }
    return $LandlordRentPaymentHistoryCopyWith<$Res>(_value.recentPayment,
        (value) {
      return _then(_value.copyWith(recentPayment: value));
    });
  }
}

/// @nodoc
abstract class _$PropertyRentHistoryCopyWith<$Res>
    implements $PropertyRentHistoryCopyWith<$Res> {
  factory _$PropertyRentHistoryCopyWith(_PropertyRentHistory value,
          $Res Function(_PropertyRentHistory) then) =
      __$PropertyRentHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable Country country,
      @nullable BasicTextField<int> amount,
      @nullable User tenant,
      @nullable User landlord,
      @nullable ApartmentStatus status,
      @nullable BaseApartment apartment,
      @nullable LandlordProperty property,
      @nullable PaymentPlan plan,
      @nullable LandlordRentPaymentHistory recentPayment,
      @nullable KtList<LandlordRentPaymentHistory> paymentHistories,
      bool canRenew,
      @nullable DateTime renewsOn,
      @nullable DateTime expiresOn,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $CountryCopyWith<$Res> get country;
  @override
  $UserCopyWith<$Res> get tenant;
  @override
  $UserCopyWith<$Res> get landlord;
  @override
  $LandlordPropertyCopyWith<$Res> get property;
  @override
  $LandlordRentPaymentHistoryCopyWith<$Res> get recentPayment;
}

/// @nodoc
class __$PropertyRentHistoryCopyWithImpl<$Res>
    extends _$PropertyRentHistoryCopyWithImpl<$Res>
    implements _$PropertyRentHistoryCopyWith<$Res> {
  __$PropertyRentHistoryCopyWithImpl(
      _PropertyRentHistory _value, $Res Function(_PropertyRentHistory) _then)
      : super(_value, (v) => _then(v as _PropertyRentHistory));

  @override
  _PropertyRentHistory get _value => super._value as _PropertyRentHistory;

  @override
  $Res call({
    Object id = freezed,
    Object country = freezed,
    Object amount = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object status = freezed,
    Object apartment = freezed,
    Object property = freezed,
    Object plan = freezed,
    Object recentPayment = freezed,
    Object paymentHistories = freezed,
    Object canRenew = freezed,
    Object renewsOn = freezed,
    Object expiresOn = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_PropertyRentHistory(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      country: country == freezed ? _value.country : country as Country,
      amount: amount == freezed ? _value.amount : amount as BasicTextField<int>,
      tenant: tenant == freezed ? _value.tenant : tenant as User,
      landlord: landlord == freezed ? _value.landlord : landlord as User,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      apartment:
          apartment == freezed ? _value.apartment : apartment as BaseApartment,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      recentPayment: recentPayment == freezed
          ? _value.recentPayment
          : recentPayment as LandlordRentPaymentHistory,
      paymentHistories: paymentHistories == freezed
          ? _value.paymentHistories
          : paymentHistories as KtList<LandlordRentPaymentHistory>,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      renewsOn: renewsOn == freezed ? _value.renewsOn : renewsOn as DateTime,
      expiresOn:
          expiresOn == freezed ? _value.expiresOn : expiresOn as DateTime,
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
class _$_PropertyRentHistory extends _PropertyRentHistory {
  const _$_PropertyRentHistory(
      {@nullable this.id,
      @nullable this.country,
      @nullable this.amount,
      @nullable this.tenant,
      @nullable this.landlord,
      @nullable this.status,
      @nullable this.apartment,
      @nullable this.property,
      @nullable this.plan,
      @nullable this.recentPayment,
      @nullable this.paymentHistories,
      this.canRenew = false,
      @nullable this.renewsOn,
      @nullable this.expiresOn,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : assert(canRenew != null),
        super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final Country country;
  @override
  @nullable
  final BasicTextField<int> amount;
  @override
  @nullable
  final User tenant;
  @override
  @nullable
  final User landlord;
  @override
  @nullable
  final ApartmentStatus status;
  @override
  @nullable
  final BaseApartment apartment;
  @override
  @nullable
  final LandlordProperty property;
  @override
  @nullable
  final PaymentPlan plan;
  @override
  @nullable
  final LandlordRentPaymentHistory recentPayment;
  @override
  @nullable
  final KtList<LandlordRentPaymentHistory> paymentHistories;
  @JsonKey(defaultValue: false)
  @override
  final bool canRenew;
  @override
  @nullable
  final DateTime renewsOn;
  @override
  @nullable
  final DateTime expiresOn;
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
  String toString() {
    return 'PropertyRentHistory(id: $id, country: $country, amount: $amount, tenant: $tenant, landlord: $landlord, status: $status, apartment: $apartment, property: $property, plan: $plan, recentPayment: $recentPayment, paymentHistories: $paymentHistories, canRenew: $canRenew, renewsOn: $renewsOn, expiresOn: $expiresOn, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyRentHistory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.tenant, tenant) ||
                const DeepCollectionEquality().equals(other.tenant, tenant)) &&
            (identical(other.landlord, landlord) ||
                const DeepCollectionEquality()
                    .equals(other.landlord, landlord)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)) &&
            (identical(other.plan, plan) ||
                const DeepCollectionEquality().equals(other.plan, plan)) &&
            (identical(other.recentPayment, recentPayment) ||
                const DeepCollectionEquality()
                    .equals(other.recentPayment, recentPayment)) &&
            (identical(other.paymentHistories, paymentHistories) ||
                const DeepCollectionEquality()
                    .equals(other.paymentHistories, paymentHistories)) &&
            (identical(other.canRenew, canRenew) ||
                const DeepCollectionEquality()
                    .equals(other.canRenew, canRenew)) &&
            (identical(other.renewsOn, renewsOn) ||
                const DeepCollectionEquality()
                    .equals(other.renewsOn, renewsOn)) &&
            (identical(other.expiresOn, expiresOn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresOn, expiresOn)) &&
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
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(tenant) ^
      const DeepCollectionEquality().hash(landlord) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(plan) ^
      const DeepCollectionEquality().hash(recentPayment) ^
      const DeepCollectionEquality().hash(paymentHistories) ^
      const DeepCollectionEquality().hash(canRenew) ^
      const DeepCollectionEquality().hash(renewsOn) ^
      const DeepCollectionEquality().hash(expiresOn) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$PropertyRentHistoryCopyWith<_PropertyRentHistory> get copyWith =>
      __$PropertyRentHistoryCopyWithImpl<_PropertyRentHistory>(
          this, _$identity);
}

abstract class _PropertyRentHistory extends PropertyRentHistory {
  const _PropertyRentHistory._() : super._();
  const factory _PropertyRentHistory(
      {@nullable UniqueId<int> id,
      @nullable Country country,
      @nullable BasicTextField<int> amount,
      @nullable User tenant,
      @nullable User landlord,
      @nullable ApartmentStatus status,
      @nullable BaseApartment apartment,
      @nullable LandlordProperty property,
      @nullable PaymentPlan plan,
      @nullable LandlordRentPaymentHistory recentPayment,
      @nullable KtList<LandlordRentPaymentHistory> paymentHistories,
      bool canRenew,
      @nullable DateTime renewsOn,
      @nullable DateTime expiresOn,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_PropertyRentHistory;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  Country get country;
  @override
  @nullable
  BasicTextField<int> get amount;
  @override
  @nullable
  User get tenant;
  @override
  @nullable
  User get landlord;
  @override
  @nullable
  ApartmentStatus get status;
  @override
  @nullable
  BaseApartment get apartment;
  @override
  @nullable
  LandlordProperty get property;
  @override
  @nullable
  PaymentPlan get plan;
  @override
  @nullable
  LandlordRentPaymentHistory get recentPayment;
  @override
  @nullable
  KtList<LandlordRentPaymentHistory> get paymentHistories;
  @override
  bool get canRenew;
  @override
  @nullable
  DateTime get renewsOn;
  @override
  @nullable
  DateTime get expiresOn;
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
  _$PropertyRentHistoryCopyWith<_PropertyRentHistory> get copyWith;
}
