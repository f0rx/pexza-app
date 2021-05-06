// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of apartment_merger.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ApartmentMergerTearOff {
  const _$ApartmentMergerTearOff();

// ignore: unused_element
  _ApartmentMerger call(
      {@nullable UniqueId<int> id,
      @nullable LandlordApartment apartment,
      @nullable EmailAddress emailAddress,
      @nullable int duration,
      @nullable PaymentPlan plan,
      @nullable Currency currency,
      @nullable AmountField amount,
      @nullable ApartmentStatus status,
      @nullable User tenant,
      @nullable User landlord,
      @nullable DateTime expireAt,
      @nullable DateTime renewedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _ApartmentMerger(
      id: id,
      apartment: apartment,
      emailAddress: emailAddress,
      duration: duration,
      plan: plan,
      currency: currency,
      amount: amount,
      status: status,
      tenant: tenant,
      landlord: landlord,
      expireAt: expireAt,
      renewedAt: renewedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ApartmentMerger = _$ApartmentMergerTearOff();

/// @nodoc
mixin _$ApartmentMerger {
  @nullable
  UniqueId<int> get id;
  @nullable
  LandlordApartment get apartment;
  @nullable
  EmailAddress get emailAddress;
  @nullable
  int get duration;
  @nullable
  PaymentPlan get plan;
  @nullable
  Currency get currency;
  @nullable
  AmountField get amount;
  @nullable
  ApartmentStatus get status;
  @nullable
  User get tenant;
  @nullable
  User get landlord;
  @nullable
  DateTime get expireAt;
  @nullable
  DateTime get renewedAt;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $ApartmentMergerCopyWith<ApartmentMerger> get copyWith;
}

/// @nodoc
abstract class $ApartmentMergerCopyWith<$Res> {
  factory $ApartmentMergerCopyWith(
          ApartmentMerger value, $Res Function(ApartmentMerger) then) =
      _$ApartmentMergerCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable LandlordApartment apartment,
      @nullable EmailAddress emailAddress,
      @nullable int duration,
      @nullable PaymentPlan plan,
      @nullable Currency currency,
      @nullable AmountField amount,
      @nullable ApartmentStatus status,
      @nullable User tenant,
      @nullable User landlord,
      @nullable DateTime expireAt,
      @nullable DateTime renewedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $LandlordApartmentCopyWith<$Res> get apartment;
  $CurrencyCopyWith<$Res> get currency;
  $UserCopyWith<$Res> get tenant;
  $UserCopyWith<$Res> get landlord;
}

/// @nodoc
class _$ApartmentMergerCopyWithImpl<$Res>
    implements $ApartmentMergerCopyWith<$Res> {
  _$ApartmentMergerCopyWithImpl(this._value, this._then);

  final ApartmentMerger _value;
  // ignore: unused_field
  final $Res Function(ApartmentMerger) _then;

  @override
  $Res call({
    Object id = freezed,
    Object apartment = freezed,
    Object emailAddress = freezed,
    Object duration = freezed,
    Object plan = freezed,
    Object currency = freezed,
    Object amount = freezed,
    Object status = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object expireAt = freezed,
    Object renewedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartment,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      duration: duration == freezed ? _value.duration : duration as int,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      currency: currency == freezed ? _value.currency : currency as Currency,
      amount: amount == freezed ? _value.amount : amount as AmountField,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      tenant: tenant == freezed ? _value.tenant : tenant as User,
      landlord: landlord == freezed ? _value.landlord : landlord as User,
      expireAt: expireAt == freezed ? _value.expireAt : expireAt as DateTime,
      renewedAt:
          renewedAt == freezed ? _value.renewedAt : renewedAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }

  @override
  $LandlordApartmentCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $LandlordApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
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
}

/// @nodoc
abstract class _$ApartmentMergerCopyWith<$Res>
    implements $ApartmentMergerCopyWith<$Res> {
  factory _$ApartmentMergerCopyWith(
          _ApartmentMerger value, $Res Function(_ApartmentMerger) then) =
      __$ApartmentMergerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable LandlordApartment apartment,
      @nullable EmailAddress emailAddress,
      @nullable int duration,
      @nullable PaymentPlan plan,
      @nullable Currency currency,
      @nullable AmountField amount,
      @nullable ApartmentStatus status,
      @nullable User tenant,
      @nullable User landlord,
      @nullable DateTime expireAt,
      @nullable DateTime renewedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  @override
  $LandlordApartmentCopyWith<$Res> get apartment;
  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $UserCopyWith<$Res> get tenant;
  @override
  $UserCopyWith<$Res> get landlord;
}

/// @nodoc
class __$ApartmentMergerCopyWithImpl<$Res>
    extends _$ApartmentMergerCopyWithImpl<$Res>
    implements _$ApartmentMergerCopyWith<$Res> {
  __$ApartmentMergerCopyWithImpl(
      _ApartmentMerger _value, $Res Function(_ApartmentMerger) _then)
      : super(_value, (v) => _then(v as _ApartmentMerger));

  @override
  _ApartmentMerger get _value => super._value as _ApartmentMerger;

  @override
  $Res call({
    Object id = freezed,
    Object apartment = freezed,
    Object emailAddress = freezed,
    Object duration = freezed,
    Object plan = freezed,
    Object currency = freezed,
    Object amount = freezed,
    Object status = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object expireAt = freezed,
    Object renewedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_ApartmentMerger(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartment,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      duration: duration == freezed ? _value.duration : duration as int,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      currency: currency == freezed ? _value.currency : currency as Currency,
      amount: amount == freezed ? _value.amount : amount as AmountField,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      tenant: tenant == freezed ? _value.tenant : tenant as User,
      landlord: landlord == freezed ? _value.landlord : landlord as User,
      expireAt: expireAt == freezed ? _value.expireAt : expireAt as DateTime,
      renewedAt:
          renewedAt == freezed ? _value.renewedAt : renewedAt as DateTime,
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
class _$_ApartmentMerger extends _ApartmentMerger {
  const _$_ApartmentMerger(
      {@nullable this.id,
      @nullable this.apartment,
      @nullable this.emailAddress,
      @nullable this.duration,
      @nullable this.plan,
      @nullable this.currency,
      @nullable this.amount,
      @nullable this.status,
      @nullable this.tenant,
      @nullable this.landlord,
      @nullable this.expireAt,
      @nullable this.renewedAt,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final LandlordApartment apartment;
  @override
  @nullable
  final EmailAddress emailAddress;
  @override
  @nullable
  final int duration;
  @override
  @nullable
  final PaymentPlan plan;
  @override
  @nullable
  final Currency currency;
  @override
  @nullable
  final AmountField amount;
  @override
  @nullable
  final ApartmentStatus status;
  @override
  @nullable
  final User tenant;
  @override
  @nullable
  final User landlord;
  @override
  @nullable
  final DateTime expireAt;
  @override
  @nullable
  final DateTime renewedAt;
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
    return 'ApartmentMerger(id: $id, apartment: $apartment, emailAddress: $emailAddress, duration: $duration, plan: $plan, currency: $currency, amount: $amount, status: $status, tenant: $tenant, landlord: $landlord, expireAt: $expireAt, renewedAt: $renewedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApartmentMerger &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.plan, plan) ||
                const DeepCollectionEquality().equals(other.plan, plan)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.tenant, tenant) ||
                const DeepCollectionEquality().equals(other.tenant, tenant)) &&
            (identical(other.landlord, landlord) ||
                const DeepCollectionEquality()
                    .equals(other.landlord, landlord)) &&
            (identical(other.expireAt, expireAt) ||
                const DeepCollectionEquality()
                    .equals(other.expireAt, expireAt)) &&
            (identical(other.renewedAt, renewedAt) ||
                const DeepCollectionEquality()
                    .equals(other.renewedAt, renewedAt)) &&
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
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(plan) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(tenant) ^
      const DeepCollectionEquality().hash(landlord) ^
      const DeepCollectionEquality().hash(expireAt) ^
      const DeepCollectionEquality().hash(renewedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$ApartmentMergerCopyWith<_ApartmentMerger> get copyWith =>
      __$ApartmentMergerCopyWithImpl<_ApartmentMerger>(this, _$identity);
}

abstract class _ApartmentMerger extends ApartmentMerger {
  const _ApartmentMerger._() : super._();
  const factory _ApartmentMerger(
      {@nullable UniqueId<int> id,
      @nullable LandlordApartment apartment,
      @nullable EmailAddress emailAddress,
      @nullable int duration,
      @nullable PaymentPlan plan,
      @nullable Currency currency,
      @nullable AmountField amount,
      @nullable ApartmentStatus status,
      @nullable User tenant,
      @nullable User landlord,
      @nullable DateTime expireAt,
      @nullable DateTime renewedAt,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_ApartmentMerger;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  LandlordApartment get apartment;
  @override
  @nullable
  EmailAddress get emailAddress;
  @override
  @nullable
  int get duration;
  @override
  @nullable
  PaymentPlan get plan;
  @override
  @nullable
  Currency get currency;
  @override
  @nullable
  AmountField get amount;
  @override
  @nullable
  ApartmentStatus get status;
  @override
  @nullable
  User get tenant;
  @override
  @nullable
  User get landlord;
  @override
  @nullable
  DateTime get expireAt;
  @override
  @nullable
  DateTime get renewedAt;
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
  _$ApartmentMergerCopyWith<_ApartmentMerger> get copyWith;
}
