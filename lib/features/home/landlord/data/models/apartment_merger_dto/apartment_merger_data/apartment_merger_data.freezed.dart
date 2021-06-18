// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of apartment_merger_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ApartmentMergerData _$ApartmentMergerDataFromJson(Map<String, dynamic> json) {
  return _ApartmentMergerData.fromJson(json);
}

/// @nodoc
class _$ApartmentMergerDataTearOff {
  const _$ApartmentMergerDataTearOff();

// ignore: unused_element
  _ApartmentMergerData call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @nullable
      @JsonKey(includeIfNull: false, name: 'apartment_id')
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false)
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, name: 'currency_id')
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          LandlordApartmentData apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          String expireAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          String renewedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) {
    return _ApartmentMergerData(
      id: id,
      status: status,
      amount: amount,
      paymentPlan: paymentPlan,
      tenantEmail: tenantEmail,
      apartmentId: apartmentId,
      duration: duration,
      currencyId: currencyId,
      currency: currency,
      tenant: tenant,
      landlord: landlord,
      apartment: apartment,
      expireAt: expireAt,
      renewedAt: renewedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  ApartmentMergerData fromJson(Map<String, Object> json) {
    return ApartmentMergerData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ApartmentMergerData = _$ApartmentMergerDataTearOff();

/// @nodoc
mixin _$ApartmentMergerData {
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
  String get status;
  @nullable
  @JsonKey(includeIfNull: false)
  int get amount;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  String get paymentPlan;
  @nullable
  @JsonKey(includeIfNull: false, name: 'tenant_email')
  String get tenantEmail;
  @nullable
  @JsonKey(includeIfNull: false, name: 'apartment_id')
  @IntegerSerializer()
  int get apartmentId;
  @nullable
  @JsonKey(includeIfNull: false)
  int get duration;
  @nullable
  @JsonKey(includeIfNull: false, name: 'currency_id')
  @IntegerSerializer()
  int get currencyId;
  @nullable
  @JsonKey(includeIfNull: false)
  CurrencyDTO get currency;
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get tenant;
  @nullable
  @JsonKey(includeIfNull: false)
  UserDTO get landlord;
  @nullable
  @JsonKey(includeIfNull: false)
  LandlordApartmentData get apartment;
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  String get expireAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'renewed_at')
  @TimestampConverter()
  String get renewedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ApartmentMergerDataCopyWith<ApartmentMergerData> get copyWith;
}

/// @nodoc
abstract class $ApartmentMergerDataCopyWith<$Res> {
  factory $ApartmentMergerDataCopyWith(
          ApartmentMergerData value, $Res Function(ApartmentMergerData) then) =
      _$ApartmentMergerDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @nullable
      @JsonKey(includeIfNull: false, name: 'apartment_id')
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false)
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, name: 'currency_id')
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          LandlordApartmentData apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          String expireAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          String renewedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

  $CurrencyDTOCopyWith<$Res> get currency;
  $UserDTOCopyWith<$Res> get tenant;
  $UserDTOCopyWith<$Res> get landlord;
  $LandlordApartmentDataCopyWith<$Res> get apartment;
}

/// @nodoc
class _$ApartmentMergerDataCopyWithImpl<$Res>
    implements $ApartmentMergerDataCopyWith<$Res> {
  _$ApartmentMergerDataCopyWithImpl(this._value, this._then);

  final ApartmentMergerData _value;
  // ignore: unused_field
  final $Res Function(ApartmentMergerData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object status = freezed,
    Object amount = freezed,
    Object paymentPlan = freezed,
    Object tenantEmail = freezed,
    Object apartmentId = freezed,
    Object duration = freezed,
    Object currencyId = freezed,
    Object currency = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object apartment = freezed,
    Object expireAt = freezed,
    Object renewedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      status: status == freezed ? _value.status : status as String,
      amount: amount == freezed ? _value.amount : amount as int,
      paymentPlan:
          paymentPlan == freezed ? _value.paymentPlan : paymentPlan as String,
      tenantEmail:
          tenantEmail == freezed ? _value.tenantEmail : tenantEmail as String,
      apartmentId:
          apartmentId == freezed ? _value.apartmentId : apartmentId as int,
      duration: duration == freezed ? _value.duration : duration as int,
      currencyId: currencyId == freezed ? _value.currencyId : currencyId as int,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartmentData,
      expireAt: expireAt == freezed ? _value.expireAt : expireAt as String,
      renewedAt: renewedAt == freezed ? _value.renewedAt : renewedAt as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
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
  $LandlordApartmentDataCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $LandlordApartmentDataCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$ApartmentMergerDataCopyWith<$Res>
    implements $ApartmentMergerDataCopyWith<$Res> {
  factory _$ApartmentMergerDataCopyWith(_ApartmentMergerData value,
          $Res Function(_ApartmentMergerData) then) =
      __$ApartmentMergerDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @nullable
      @JsonKey(includeIfNull: false, name: 'apartment_id')
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false)
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, name: 'currency_id')
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          LandlordApartmentData apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          String expireAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          String renewedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt});

  @override
  $CurrencyDTOCopyWith<$Res> get currency;
  @override
  $UserDTOCopyWith<$Res> get tenant;
  @override
  $UserDTOCopyWith<$Res> get landlord;
  @override
  $LandlordApartmentDataCopyWith<$Res> get apartment;
}

/// @nodoc
class __$ApartmentMergerDataCopyWithImpl<$Res>
    extends _$ApartmentMergerDataCopyWithImpl<$Res>
    implements _$ApartmentMergerDataCopyWith<$Res> {
  __$ApartmentMergerDataCopyWithImpl(
      _ApartmentMergerData _value, $Res Function(_ApartmentMergerData) _then)
      : super(_value, (v) => _then(v as _ApartmentMergerData));

  @override
  _ApartmentMergerData get _value => super._value as _ApartmentMergerData;

  @override
  $Res call({
    Object id = freezed,
    Object status = freezed,
    Object amount = freezed,
    Object paymentPlan = freezed,
    Object tenantEmail = freezed,
    Object apartmentId = freezed,
    Object duration = freezed,
    Object currencyId = freezed,
    Object currency = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object apartment = freezed,
    Object expireAt = freezed,
    Object renewedAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_ApartmentMergerData(
      id: id == freezed ? _value.id : id as int,
      status: status == freezed ? _value.status : status as String,
      amount: amount == freezed ? _value.amount : amount as int,
      paymentPlan:
          paymentPlan == freezed ? _value.paymentPlan : paymentPlan as String,
      tenantEmail:
          tenantEmail == freezed ? _value.tenantEmail : tenantEmail as String,
      apartmentId:
          apartmentId == freezed ? _value.apartmentId : apartmentId as int,
      duration: duration == freezed ? _value.duration : duration as int,
      currencyId: currencyId == freezed ? _value.currencyId : currencyId as int,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartmentData,
      expireAt: expireAt == freezed ? _value.expireAt : expireAt as String,
      renewedAt: renewedAt == freezed ? _value.renewedAt : renewedAt as String,
      createdAt: createdAt == freezed ? _value.createdAt : createdAt as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      deletedAt: deletedAt == freezed ? _value.deletedAt : deletedAt as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ApartmentMergerData extends _ApartmentMergerData {
  const _$_ApartmentMergerData(
      {@nullable
      @JsonKey(includeIfNull: false)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          this.status,
      @nullable
      @JsonKey(includeIfNull: false)
          this.amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          this.paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          this.tenantEmail,
      @nullable
      @JsonKey(includeIfNull: false, name: 'apartment_id')
      @IntegerSerializer()
          this.apartmentId,
      @nullable
      @JsonKey(includeIfNull: false)
          this.duration,
      @nullable
      @JsonKey(includeIfNull: false, name: 'currency_id')
      @IntegerSerializer()
          this.currencyId,
      @nullable
      @JsonKey(includeIfNull: false)
          this.currency,
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
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          this.expireAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          this.renewedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          this.createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          this.updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          this.deletedAt})
      : super._();

  factory _$_ApartmentMergerData.fromJson(Map<String, dynamic> json) =>
      _$_$_ApartmentMergerDataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  final String paymentPlan;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'tenant_email')
  final String tenantEmail;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'apartment_id')
  @IntegerSerializer()
  final int apartmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final int duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'currency_id')
  @IntegerSerializer()
  final int currencyId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final CurrencyDTO currency;
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
  final LandlordApartmentData apartment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  final String expireAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'renewed_at')
  @TimestampConverter()
  final String renewedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final String createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final String updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final String deletedAt;

  @override
  String toString() {
    return 'ApartmentMergerData(id: $id, status: $status, amount: $amount, paymentPlan: $paymentPlan, tenantEmail: $tenantEmail, apartmentId: $apartmentId, duration: $duration, currencyId: $currencyId, currency: $currency, tenant: $tenant, landlord: $landlord, apartment: $apartment, expireAt: $expireAt, renewedAt: $renewedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApartmentMergerData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.paymentPlan, paymentPlan) ||
                const DeepCollectionEquality()
                    .equals(other.paymentPlan, paymentPlan)) &&
            (identical(other.tenantEmail, tenantEmail) ||
                const DeepCollectionEquality()
                    .equals(other.tenantEmail, tenantEmail)) &&
            (identical(other.apartmentId, apartmentId) ||
                const DeepCollectionEquality()
                    .equals(other.apartmentId, apartmentId)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.currencyId, currencyId) ||
                const DeepCollectionEquality()
                    .equals(other.currencyId, currencyId)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.tenant, tenant) ||
                const DeepCollectionEquality().equals(other.tenant, tenant)) &&
            (identical(other.landlord, landlord) ||
                const DeepCollectionEquality()
                    .equals(other.landlord, landlord)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
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
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(paymentPlan) ^
      const DeepCollectionEquality().hash(tenantEmail) ^
      const DeepCollectionEquality().hash(apartmentId) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(currencyId) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(tenant) ^
      const DeepCollectionEquality().hash(landlord) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(expireAt) ^
      const DeepCollectionEquality().hash(renewedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$ApartmentMergerDataCopyWith<_ApartmentMergerData> get copyWith =>
      __$ApartmentMergerDataCopyWithImpl<_ApartmentMergerData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApartmentMergerDataToJson(this);
  }
}

abstract class _ApartmentMergerData extends ApartmentMergerData {
  const _ApartmentMergerData._() : super._();
  const factory _ApartmentMergerData(
      {@nullable
      @JsonKey(includeIfNull: false)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @nullable
      @JsonKey(includeIfNull: false, name: 'apartment_id')
      @IntegerSerializer()
          int apartmentId,
      @nullable
      @JsonKey(includeIfNull: false)
          int duration,
      @nullable
      @JsonKey(includeIfNull: false, name: 'currency_id')
      @IntegerSerializer()
          int currencyId,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO tenant,
      @nullable
      @JsonKey(includeIfNull: false)
          UserDTO landlord,
      @nullable
      @JsonKey(includeIfNull: false)
          LandlordApartmentData apartment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          String expireAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          String renewedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          String createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          String updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          String deletedAt}) = _$_ApartmentMergerData;

  factory _ApartmentMergerData.fromJson(Map<String, dynamic> json) =
      _$_ApartmentMergerData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  String get paymentPlan;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'tenant_email')
  String get tenantEmail;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'apartment_id')
  @IntegerSerializer()
  int get apartmentId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  int get duration;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'currency_id')
  @IntegerSerializer()
  int get currencyId;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  CurrencyDTO get currency;
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
  LandlordApartmentData get apartment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  String get expireAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'renewed_at')
  @TimestampConverter()
  String get renewedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  String get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  String get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  String get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$ApartmentMergerDataCopyWith<_ApartmentMergerData> get copyWith;
}
