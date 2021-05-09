// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of assignment_dto_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AssignmentDTOData _$AssignmentDTODataFromJson(Map<String, dynamic> json) {
  return _AssignmentDTOData.fromJson(json);
}

/// @nodoc
class _$AssignmentDTODataTearOff {
  const _$AssignmentDTODataTearOff();

// ignore: unused_element
  _AssignmentDTOData call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: "tenant_id")
      @IntegerSerializer()
          int tenantId,
      @nullable
      @JsonKey(includeIfNull: false, name: "landlord_id")
      @IntegerSerializer()
          int landlordId,
      @nullable
      @JsonKey(includeIfNull: false, name: "apartment_id")
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          String code,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_id")
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String amount,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewal_id")
      @IntegerSerializer()
          int renewalId,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: "can_renew")
      @IntToBoolSerializer()
          bool canRenew,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewed_at")
      @TimestampConverter()
          String renewedOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "expire_at")
      @TimestampConverter()
          String expiresOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) {
    return _AssignmentDTOData(
      id: id,
      tenantId: tenantId,
      landlordId: landlordId,
      apartmentId: apartmentId,
      status: status,
      currency: currency,
      code: code,
      duration: duration,
      paymentPlan: paymentPlan,
      currencyId: currencyId,
      amount: amount,
      renewalId: renewalId,
      tenant: tenant,
      landlord: landlord,
      apartment: apartment,
      canRenew: canRenew,
      createdAt: createdAt,
      renewedOn: renewedOn,
      expiresOn: expiresOn,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  AssignmentDTOData fromJson(Map<String, Object> json) {
    return AssignmentDTOData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AssignmentDTOData = _$AssignmentDTODataTearOff();

/// @nodoc
mixin _$AssignmentDTOData {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, name: "tenant_id")
  @IntegerSerializer()
  int get tenantId;
  @nullable
  @JsonKey(includeIfNull: false, name: "landlord_id")
  @IntegerSerializer()
  int get landlordId;
  @nullable
  @JsonKey(includeIfNull: false, name: "apartment_id")
  @IntegerSerializer()
  int get apartmentId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @nullable
  @JsonKey(includeIfNull: false)
  CurrencyDTO get currency;
  @nullable
  @JsonKey(includeIfNull: false)
  String get code;
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get duration;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  String get paymentPlan;
  @nullable
  @JsonKey(includeIfNull: false, name: "currency_id")
  @IntegerSerializer()
  int get currencyId;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get amount;
  @nullable
  @JsonKey(includeIfNull: false, name: "renewal_id")
  @IntegerSerializer()
  int get renewalId;
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get tenant;
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get landlord;
  @nullable
  @JsonKey(includeIfNull: false)
  BaseApartmentDTO get apartment;
  @nullable
  @JsonKey(includeIfNull: false, name: "can_renew")
  @IntToBoolSerializer()
  bool get canRenew;
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "renewed_at")
  @TimestampConverter()
  String get renewedOn;
  @nullable
  @JsonKey(includeIfNull: false, name: "expire_at")
  @TimestampConverter()
  String get expiresOn;
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AssignmentDTODataCopyWith<AssignmentDTOData> get copyWith;
}

/// @nodoc
abstract class $AssignmentDTODataCopyWith<$Res> {
  factory $AssignmentDTODataCopyWith(
          AssignmentDTOData value, $Res Function(AssignmentDTOData) then) =
      _$AssignmentDTODataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: "tenant_id")
      @IntegerSerializer()
          int tenantId,
      @nullable
      @JsonKey(includeIfNull: false, name: "landlord_id")
      @IntegerSerializer()
          int landlordId,
      @nullable
      @JsonKey(includeIfNull: false, name: "apartment_id")
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          String code,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_id")
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String amount,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewal_id")
      @IntegerSerializer()
          int renewalId,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: "can_renew")
      @IntToBoolSerializer()
          bool canRenew,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewed_at")
      @TimestampConverter()
          String renewedOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "expire_at")
      @TimestampConverter()
          String expiresOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});

  $CurrencyDTOCopyWith<$Res> get currency;
  $UserDTOCopyWith<$Res> get tenant;
  $UserDTOCopyWith<$Res> get landlord;
  $BaseApartmentDTOCopyWith<$Res> get apartment;
}

/// @nodoc
class _$AssignmentDTODataCopyWithImpl<$Res>
    implements $AssignmentDTODataCopyWith<$Res> {
  _$AssignmentDTODataCopyWithImpl(this._value, this._then);

  final AssignmentDTOData _value;
  // ignore: unused_field
  final $Res Function(AssignmentDTOData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object landlordId = freezed,
    Object apartmentId = freezed,
    Object status = freezed,
    Object currency = freezed,
    Object code = freezed,
    Object duration = freezed,
    Object paymentPlan = freezed,
    Object currencyId = freezed,
    Object amount = freezed,
    Object renewalId = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object apartment = freezed,
    Object canRenew = freezed,
    Object createdAt = freezed,
    Object renewedOn = freezed,
    Object expiresOn = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as int,
      landlordId: landlordId == freezed ? _value.landlordId : landlordId as int,
      apartmentId:
          apartmentId == freezed ? _value.apartmentId : apartmentId as int,
      status: status == freezed ? _value.status : status as String,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      code: code == freezed ? _value.code : code as String,
      duration: duration == freezed ? _value.duration : duration as int,
      paymentPlan:
          paymentPlan == freezed ? _value.paymentPlan : paymentPlan as String,
      currencyId: currencyId == freezed ? _value.currencyId : currencyId as int,
      amount: amount == freezed ? _value.amount : amount as String,
      renewalId: renewalId == freezed ? _value.renewalId : renewalId as int,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      renewedOn: renewedOn == freezed ? _value.renewedOn : renewedOn as String,
      expiresOn: expiresOn == freezed ? _value.expiresOn : expiresOn as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }

  @override
  $CurrencyDTOCopyWith<$Res> get currency {
    if (_value.currency == null) {
      return null;
    }
    return $CurrencyDTOCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res> get tenant {
    if (_value.tenant == null) {
      return null;
    }
    return $UserDTOCopyWith<$Res>(_value.tenant, (value) {
      return _then(_value.copyWith(tenant: value));
    });
  }

  @override
  $UserDTOCopyWith<$Res> get landlord {
    if (_value.landlord == null) {
      return null;
    }
    return $UserDTOCopyWith<$Res>(_value.landlord, (value) {
      return _then(_value.copyWith(landlord: value));
    });
  }

  @override
  $BaseApartmentDTOCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $BaseApartmentDTOCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$AssignmentDTODataCopyWith<$Res>
    implements $AssignmentDTODataCopyWith<$Res> {
  factory _$AssignmentDTODataCopyWith(
          _AssignmentDTOData value, $Res Function(_AssignmentDTOData) then) =
      __$AssignmentDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: "tenant_id")
      @IntegerSerializer()
          int tenantId,
      @nullable
      @JsonKey(includeIfNull: false, name: "landlord_id")
      @IntegerSerializer()
          int landlordId,
      @nullable
      @JsonKey(includeIfNull: false, name: "apartment_id")
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          String code,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_id")
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String amount,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewal_id")
      @IntegerSerializer()
          int renewalId,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: "can_renew")
      @IntToBoolSerializer()
          bool canRenew,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewed_at")
      @TimestampConverter()
          String renewedOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "expire_at")
      @TimestampConverter()
          String expiresOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt});

  @override
  $CurrencyDTOCopyWith<$Res> get currency;
  @override
  $UserDTOCopyWith<$Res> get tenant;
  @override
  $UserDTOCopyWith<$Res> get landlord;
  @override
  $BaseApartmentDTOCopyWith<$Res> get apartment;
}

/// @nodoc
class __$AssignmentDTODataCopyWithImpl<$Res>
    extends _$AssignmentDTODataCopyWithImpl<$Res>
    implements _$AssignmentDTODataCopyWith<$Res> {
  __$AssignmentDTODataCopyWithImpl(
      _AssignmentDTOData _value, $Res Function(_AssignmentDTOData) _then)
      : super(_value, (v) => _then(v as _AssignmentDTOData));

  @override
  _AssignmentDTOData get _value => super._value as _AssignmentDTOData;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object landlordId = freezed,
    Object apartmentId = freezed,
    Object status = freezed,
    Object currency = freezed,
    Object code = freezed,
    Object duration = freezed,
    Object paymentPlan = freezed,
    Object currencyId = freezed,
    Object amount = freezed,
    Object renewalId = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object apartment = freezed,
    Object canRenew = freezed,
    Object createdAt = freezed,
    Object renewedOn = freezed,
    Object expiresOn = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_AssignmentDTOData(
      id: id == freezed ? _value.id : id as int,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as int,
      landlordId: landlordId == freezed ? _value.landlordId : landlordId as int,
      apartmentId:
          apartmentId == freezed ? _value.apartmentId : apartmentId as int,
      status: status == freezed ? _value.status : status as String,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      code: code == freezed ? _value.code : code as String,
      duration: duration == freezed ? _value.duration : duration as int,
      paymentPlan:
          paymentPlan == freezed ? _value.paymentPlan : paymentPlan as String,
      currencyId: currencyId == freezed ? _value.currencyId : currencyId as int,
      amount: amount == freezed ? _value.amount : amount as String,
      renewalId: renewalId == freezed ? _value.renewalId : renewalId as int,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      renewedOn: renewedOn == freezed ? _value.renewedOn : renewedOn as String,
      expiresOn: expiresOn == freezed ? _value.expiresOn : expiresOn as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AssignmentDTOData extends _AssignmentDTOData {
  const _$_AssignmentDTOData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, name: "tenant_id")
      @IntegerSerializer()
          this.tenantId,
      @nullable
      @JsonKey(includeIfNull: false, name: "landlord_id")
      @IntegerSerializer()
          this.landlordId,
      @nullable
      @JsonKey(includeIfNull: false, name: "apartment_id")
      @IntegerSerializer()
          this.apartmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.status,
      @nullable
      @JsonKey(includeIfNull: false)
          this.currency,
      @nullable
      @JsonKey(includeIfNull: false)
          this.code,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          this.paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_id")
      @IntegerSerializer()
          this.currencyId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.amount,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewal_id")
      @IntegerSerializer()
          this.renewalId,
      @nullable
      @JsonKey(includeIfNull: false)
          this.tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          this.landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          this.apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: "can_renew")
      @IntToBoolSerializer()
          this.canRenew,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewed_at")
      @TimestampConverter()
          this.renewedOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "expire_at")
      @TimestampConverter()
          this.expiresOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_AssignmentDTOData.fromJson(Map<String, dynamic> json) =>
      _$_$_AssignmentDTODataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "tenant_id")
  @IntegerSerializer()
  final int tenantId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "landlord_id")
  @IntegerSerializer()
  final int landlordId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "apartment_id")
  @IntegerSerializer()
  final int apartmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final CurrencyDTO currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final String code;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  final int duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  final String paymentPlan;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "currency_id")
  @IntegerSerializer()
  final int currencyId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "renewal_id")
  @IntegerSerializer()
  final int renewalId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final UserDTO tenant;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final UserDTO landlord;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final BaseApartmentDTO apartment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "can_renew")
  @IntToBoolSerializer()
  final bool canRenew;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "renewed_at")
  @TimestampConverter()
  final String renewedOn;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "expire_at")
  @TimestampConverter()
  final String expiresOn;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'AssignmentDTOData(id: $id, tenantId: $tenantId, landlordId: $landlordId, apartmentId: $apartmentId, status: $status, currency: $currency, code: $code, duration: $duration, paymentPlan: $paymentPlan, currencyId: $currencyId, amount: $amount, renewalId: $renewalId, tenant: $tenant, landlord: $landlord, apartment: $apartment, canRenew: $canRenew, createdAt: $createdAt, renewedOn: $renewedOn, expiresOn: $expiresOn, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssignmentDTOData &&
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
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.paymentPlan, paymentPlan) ||
                const DeepCollectionEquality()
                    .equals(other.paymentPlan, paymentPlan)) &&
            (identical(other.currencyId, currencyId) ||
                const DeepCollectionEquality()
                    .equals(other.currencyId, currencyId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.renewalId, renewalId) ||
                const DeepCollectionEquality()
                    .equals(other.renewalId, renewalId)) &&
            (identical(other.tenant, tenant) ||
                const DeepCollectionEquality().equals(other.tenant, tenant)) &&
            (identical(other.landlord, landlord) ||
                const DeepCollectionEquality()
                    .equals(other.landlord, landlord)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.canRenew, canRenew) ||
                const DeepCollectionEquality()
                    .equals(other.canRenew, canRenew)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.renewedOn, renewedOn) ||
                const DeepCollectionEquality()
                    .equals(other.renewedOn, renewedOn)) &&
            (identical(other.expiresOn, expiresOn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresOn, expiresOn)) &&
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
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(paymentPlan) ^
      const DeepCollectionEquality().hash(currencyId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(renewalId) ^
      const DeepCollectionEquality().hash(tenant) ^
      const DeepCollectionEquality().hash(landlord) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(canRenew) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(renewedOn) ^
      const DeepCollectionEquality().hash(expiresOn) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$AssignmentDTODataCopyWith<_AssignmentDTOData> get copyWith =>
      __$AssignmentDTODataCopyWithImpl<_AssignmentDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssignmentDTODataToJson(this);
  }
}

abstract class _AssignmentDTOData extends AssignmentDTOData {
  const _AssignmentDTOData._() : super._();
  const factory _AssignmentDTOData(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, name: "tenant_id")
      @IntegerSerializer()
          int tenantId,
      @nullable
      @JsonKey(includeIfNull: false, name: "landlord_id")
      @IntegerSerializer()
          int landlordId,
      @nullable
      @JsonKey(includeIfNull: false, name: "apartment_id")
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          String code,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: "currency_id")
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String amount,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewal_id")
      @IntegerSerializer()
          int renewalId,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          BaseApartmentDTO apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: "can_renew")
      @IntToBoolSerializer()
          bool canRenew,
      @nullable
      @JsonKey(includeIfNull: false, name: "created_at")
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "renewed_at")
      @TimestampConverter()
          String renewedOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "expire_at")
      @TimestampConverter()
          String expiresOn,
      @nullable
      @JsonKey(includeIfNull: false, name: "updated_at")
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: "deleted_at")
      @TimestampConverter()
          String deletedAt}) = _$_AssignmentDTOData;

  factory _AssignmentDTOData.fromJson(Map<String, dynamic> json) =
      _$_AssignmentDTOData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "tenant_id")
  @IntegerSerializer()
  int get tenantId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "landlord_id")
  @IntegerSerializer()
  int get landlordId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "apartment_id")
  @IntegerSerializer()
  int get apartmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  CurrencyDTO get currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  String get code;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  String get paymentPlan;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "currency_id")
  @IntegerSerializer()
  int get currencyId;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "renewal_id")
  @IntegerSerializer()
  int get renewalId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get tenant;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get landlord;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  BaseApartmentDTO get apartment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "can_renew")
  @IntToBoolSerializer()
  bool get canRenew;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "created_at")
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "renewed_at")
  @TimestampConverter()
  String get renewedOn;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "expire_at")
  @TimestampConverter()
  String get expiresOn;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "updated_at")
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: "deleted_at")
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$AssignmentDTODataCopyWith<_AssignmentDTOData> get copyWith;
}
