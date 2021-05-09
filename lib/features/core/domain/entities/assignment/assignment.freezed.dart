// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of assignment.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AssignmentTearOff {
  const _$AssignmentTearOff();

// ignore: unused_element
  _Assignment call(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> tenantId,
      @nullable UniqueId<int> landlordId,
      @nullable UniqueId<int> apartmentId,
      @nullable ApartmentStatus status,
      @nullable Country country,
      @nullable BasicTextField<String> pairingCode,
      @nullable UniqueId<int> duration,
      @nullable User tenant,
      @nullable User landlord,
      @nullable PaymentPlan plan,
      @nullable UniqueId<int> currencyId,
      @nullable BaseApartment apartment,
      @nullable BasicTextField<String> amount,
      @nullable BasicTextField<int> renewalId,
      @nullable bool canRenew = true,
      @nullable DateTime renewedOn,
      @nullable DateTime expiresOn,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) {
    return _Assignment(
      id: id,
      tenantId: tenantId,
      landlordId: landlordId,
      apartmentId: apartmentId,
      status: status,
      country: country,
      pairingCode: pairingCode,
      duration: duration,
      tenant: tenant,
      landlord: landlord,
      plan: plan,
      currencyId: currencyId,
      apartment: apartment,
      amount: amount,
      renewalId: renewalId,
      canRenew: canRenew,
      renewedOn: renewedOn,
      expiresOn: expiresOn,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Assignment = _$AssignmentTearOff();

/// @nodoc
mixin _$Assignment {
  @nullable
  UniqueId<int> get id;
  @nullable
  UniqueId<int> get tenantId;
  @nullable
  UniqueId<int> get landlordId;
  @nullable
  UniqueId<int> get apartmentId;
  @nullable
  ApartmentStatus get status;
  @nullable
  Country get country;
  @nullable
  BasicTextField<String> get pairingCode;
  @nullable
  UniqueId<int> get duration;
  @nullable
  User get tenant;
  @nullable
  User get landlord;
  @nullable
  PaymentPlan get plan;
  @nullable
  UniqueId<int> get currencyId;
  @nullable
  BaseApartment get apartment;
  @nullable
  BasicTextField<String> get amount;
  @nullable
  BasicTextField<int> get renewalId;
  @nullable
  bool get canRenew;
  @nullable
  DateTime get renewedOn;
  @nullable
  DateTime get expiresOn;
  @nullable
  DateTime get createdAt;
  @nullable
  DateTime get updatedAt;
  @nullable
  DateTime get deletedAt;

  @JsonKey(ignore: true)
  $AssignmentCopyWith<Assignment> get copyWith;
}

/// @nodoc
abstract class $AssignmentCopyWith<$Res> {
  factory $AssignmentCopyWith(
          Assignment value, $Res Function(Assignment) then) =
      _$AssignmentCopyWithImpl<$Res>;
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> tenantId,
      @nullable UniqueId<int> landlordId,
      @nullable UniqueId<int> apartmentId,
      @nullable ApartmentStatus status,
      @nullable Country country,
      @nullable BasicTextField<String> pairingCode,
      @nullable UniqueId<int> duration,
      @nullable User tenant,
      @nullable User landlord,
      @nullable PaymentPlan plan,
      @nullable UniqueId<int> currencyId,
      @nullable BaseApartment apartment,
      @nullable BasicTextField<String> amount,
      @nullable BasicTextField<int> renewalId,
      @nullable bool canRenew,
      @nullable DateTime renewedOn,
      @nullable DateTime expiresOn,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt});

  $CountryCopyWith<$Res> get country;
  $UserCopyWith<$Res> get tenant;
  $UserCopyWith<$Res> get landlord;
}

/// @nodoc
class _$AssignmentCopyWithImpl<$Res> implements $AssignmentCopyWith<$Res> {
  _$AssignmentCopyWithImpl(this._value, this._then);

  final Assignment _value;
  // ignore: unused_field
  final $Res Function(Assignment) _then;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object landlordId = freezed,
    Object apartmentId = freezed,
    Object status = freezed,
    Object country = freezed,
    Object pairingCode = freezed,
    Object duration = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object plan = freezed,
    Object currencyId = freezed,
    Object apartment = freezed,
    Object amount = freezed,
    Object renewalId = freezed,
    Object canRenew = freezed,
    Object renewedOn = freezed,
    Object expiresOn = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      tenantId:
          tenantId == freezed ? _value.tenantId : tenantId as UniqueId<int>,
      landlordId: landlordId == freezed
          ? _value.landlordId
          : landlordId as UniqueId<int>,
      apartmentId: apartmentId == freezed
          ? _value.apartmentId
          : apartmentId as UniqueId<int>,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      country: country == freezed ? _value.country : country as Country,
      pairingCode: pairingCode == freezed
          ? _value.pairingCode
          : pairingCode as BasicTextField<String>,
      duration:
          duration == freezed ? _value.duration : duration as UniqueId<int>,
      tenant: tenant == freezed ? _value.tenant : tenant as User,
      landlord: landlord == freezed ? _value.landlord : landlord as User,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      currencyId: currencyId == freezed
          ? _value.currencyId
          : currencyId as UniqueId<int>,
      apartment:
          apartment == freezed ? _value.apartment : apartment as BaseApartment,
      amount:
          amount == freezed ? _value.amount : amount as BasicTextField<String>,
      renewalId: renewalId == freezed
          ? _value.renewalId
          : renewalId as BasicTextField<int>,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      renewedOn:
          renewedOn == freezed ? _value.renewedOn : renewedOn as DateTime,
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
}

/// @nodoc
abstract class _$AssignmentCopyWith<$Res> implements $AssignmentCopyWith<$Res> {
  factory _$AssignmentCopyWith(
          _Assignment value, $Res Function(_Assignment) then) =
      __$AssignmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> tenantId,
      @nullable UniqueId<int> landlordId,
      @nullable UniqueId<int> apartmentId,
      @nullable ApartmentStatus status,
      @nullable Country country,
      @nullable BasicTextField<String> pairingCode,
      @nullable UniqueId<int> duration,
      @nullable User tenant,
      @nullable User landlord,
      @nullable PaymentPlan plan,
      @nullable UniqueId<int> currencyId,
      @nullable BaseApartment apartment,
      @nullable BasicTextField<String> amount,
      @nullable BasicTextField<int> renewalId,
      @nullable bool canRenew,
      @nullable DateTime renewedOn,
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
}

/// @nodoc
class __$AssignmentCopyWithImpl<$Res> extends _$AssignmentCopyWithImpl<$Res>
    implements _$AssignmentCopyWith<$Res> {
  __$AssignmentCopyWithImpl(
      _Assignment _value, $Res Function(_Assignment) _then)
      : super(_value, (v) => _then(v as _Assignment));

  @override
  _Assignment get _value => super._value as _Assignment;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object landlordId = freezed,
    Object apartmentId = freezed,
    Object status = freezed,
    Object country = freezed,
    Object pairingCode = freezed,
    Object duration = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object plan = freezed,
    Object currencyId = freezed,
    Object apartment = freezed,
    Object amount = freezed,
    Object renewalId = freezed,
    Object canRenew = freezed,
    Object renewedOn = freezed,
    Object expiresOn = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_Assignment(
      id: id == freezed ? _value.id : id as UniqueId<int>,
      tenantId:
          tenantId == freezed ? _value.tenantId : tenantId as UniqueId<int>,
      landlordId: landlordId == freezed
          ? _value.landlordId
          : landlordId as UniqueId<int>,
      apartmentId: apartmentId == freezed
          ? _value.apartmentId
          : apartmentId as UniqueId<int>,
      status: status == freezed ? _value.status : status as ApartmentStatus,
      country: country == freezed ? _value.country : country as Country,
      pairingCode: pairingCode == freezed
          ? _value.pairingCode
          : pairingCode as BasicTextField<String>,
      duration:
          duration == freezed ? _value.duration : duration as UniqueId<int>,
      tenant: tenant == freezed ? _value.tenant : tenant as User,
      landlord: landlord == freezed ? _value.landlord : landlord as User,
      plan: plan == freezed ? _value.plan : plan as PaymentPlan,
      currencyId: currencyId == freezed
          ? _value.currencyId
          : currencyId as UniqueId<int>,
      apartment:
          apartment == freezed ? _value.apartment : apartment as BaseApartment,
      amount:
          amount == freezed ? _value.amount : amount as BasicTextField<String>,
      renewalId: renewalId == freezed
          ? _value.renewalId
          : renewalId as BasicTextField<int>,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      renewedOn:
          renewedOn == freezed ? _value.renewedOn : renewedOn as DateTime,
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
class _$_Assignment extends _Assignment {
  const _$_Assignment(
      {@nullable this.id,
      @nullable this.tenantId,
      @nullable this.landlordId,
      @nullable this.apartmentId,
      @nullable this.status,
      @nullable this.country,
      @nullable this.pairingCode,
      @nullable this.duration,
      @nullable this.tenant,
      @nullable this.landlord,
      @nullable this.plan,
      @nullable this.currencyId,
      @nullable this.apartment,
      @nullable this.amount,
      @nullable this.renewalId,
      @nullable this.canRenew = true,
      @nullable this.renewedOn,
      @nullable this.expiresOn,
      @nullable this.createdAt,
      @nullable this.updatedAt,
      @nullable this.deletedAt})
      : super._();

  @override
  @nullable
  final UniqueId<int> id;
  @override
  @nullable
  final UniqueId<int> tenantId;
  @override
  @nullable
  final UniqueId<int> landlordId;
  @override
  @nullable
  final UniqueId<int> apartmentId;
  @override
  @nullable
  final ApartmentStatus status;
  @override
  @nullable
  final Country country;
  @override
  @nullable
  final BasicTextField<String> pairingCode;
  @override
  @nullable
  final UniqueId<int> duration;
  @override
  @nullable
  final User tenant;
  @override
  @nullable
  final User landlord;
  @override
  @nullable
  final PaymentPlan plan;
  @override
  @nullable
  final UniqueId<int> currencyId;
  @override
  @nullable
  final BaseApartment apartment;
  @override
  @nullable
  final BasicTextField<String> amount;
  @override
  @nullable
  final BasicTextField<int> renewalId;
  @JsonKey(defaultValue: true)
  @override
  @nullable
  final bool canRenew;
  @override
  @nullable
  final DateTime renewedOn;
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
    return 'Assignment(id: $id, tenantId: $tenantId, landlordId: $landlordId, apartmentId: $apartmentId, status: $status, country: $country, pairingCode: $pairingCode, duration: $duration, tenant: $tenant, landlord: $landlord, plan: $plan, currencyId: $currencyId, apartment: $apartment, amount: $amount, renewalId: $renewalId, canRenew: $canRenew, renewedOn: $renewedOn, expiresOn: $expiresOn, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Assignment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.landlordId, landlordId) ||
                const DeepCollectionEquality()
                    .equals(other.landlordId, landlordId)) &&
            (identical(other.apartmentId, apartmentId) ||
                const DeepCollectionEquality()
                    .equals(other.apartmentId, apartmentId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.pairingCode, pairingCode) ||
                const DeepCollectionEquality()
                    .equals(other.pairingCode, pairingCode)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.tenant, tenant) ||
                const DeepCollectionEquality().equals(other.tenant, tenant)) &&
            (identical(other.landlord, landlord) ||
                const DeepCollectionEquality()
                    .equals(other.landlord, landlord)) &&
            (identical(other.plan, plan) ||
                const DeepCollectionEquality().equals(other.plan, plan)) &&
            (identical(other.currencyId, currencyId) ||
                const DeepCollectionEquality()
                    .equals(other.currencyId, currencyId)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.renewalId, renewalId) ||
                const DeepCollectionEquality()
                    .equals(other.renewalId, renewalId)) &&
            (identical(other.canRenew, canRenew) ||
                const DeepCollectionEquality()
                    .equals(other.canRenew, canRenew)) &&
            (identical(other.renewedOn, renewedOn) ||
                const DeepCollectionEquality()
                    .equals(other.renewedOn, renewedOn)) &&
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
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(landlordId) ^
      const DeepCollectionEquality().hash(apartmentId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(pairingCode) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(tenant) ^
      const DeepCollectionEquality().hash(landlord) ^
      const DeepCollectionEquality().hash(plan) ^
      const DeepCollectionEquality().hash(currencyId) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(renewalId) ^
      const DeepCollectionEquality().hash(canRenew) ^
      const DeepCollectionEquality().hash(renewedOn) ^
      const DeepCollectionEquality().hash(expiresOn) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$AssignmentCopyWith<_Assignment> get copyWith =>
      __$AssignmentCopyWithImpl<_Assignment>(this, _$identity);
}

abstract class _Assignment extends Assignment {
  const _Assignment._() : super._();
  const factory _Assignment(
      {@nullable UniqueId<int> id,
      @nullable UniqueId<int> tenantId,
      @nullable UniqueId<int> landlordId,
      @nullable UniqueId<int> apartmentId,
      @nullable ApartmentStatus status,
      @nullable Country country,
      @nullable BasicTextField<String> pairingCode,
      @nullable UniqueId<int> duration,
      @nullable User tenant,
      @nullable User landlord,
      @nullable PaymentPlan plan,
      @nullable UniqueId<int> currencyId,
      @nullable BaseApartment apartment,
      @nullable BasicTextField<String> amount,
      @nullable BasicTextField<int> renewalId,
      @nullable bool canRenew,
      @nullable DateTime renewedOn,
      @nullable DateTime expiresOn,
      @nullable DateTime createdAt,
      @nullable DateTime updatedAt,
      @nullable DateTime deletedAt}) = _$_Assignment;

  @override
  @nullable
  UniqueId<int> get id;
  @override
  @nullable
  UniqueId<int> get tenantId;
  @override
  @nullable
  UniqueId<int> get landlordId;
  @override
  @nullable
  UniqueId<int> get apartmentId;
  @override
  @nullable
  ApartmentStatus get status;
  @override
  @nullable
  Country get country;
  @override
  @nullable
  BasicTextField<String> get pairingCode;
  @override
  @nullable
  UniqueId<int> get duration;
  @override
  @nullable
  User get tenant;
  @override
  @nullable
  User get landlord;
  @override
  @nullable
  PaymentPlan get plan;
  @override
  @nullable
  UniqueId<int> get currencyId;
  @override
  @nullable
  BaseApartment get apartment;
  @override
  @nullable
  BasicTextField<String> get amount;
  @override
  @nullable
  BasicTextField<int> get renewalId;
  @override
  @nullable
  bool get canRenew;
  @override
  @nullable
  DateTime get renewedOn;
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
  _$AssignmentCopyWith<_Assignment> get copyWith;
}
