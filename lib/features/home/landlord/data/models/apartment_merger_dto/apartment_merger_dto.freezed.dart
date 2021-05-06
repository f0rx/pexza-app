// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of apartment_merger_dto.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ApartmentMergerDTO _$ApartmentMergerDTOFromJson(Map<String, dynamic> json) {
  return _ApartmentMergerDTO.fromJson(json);
}

/// @nodoc
class _$ApartmentMergerDTOTearOff {
  const _$ApartmentMergerDTOTearOff();

// ignore: unused_element
  _ApartmentMergerDTO call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @JsonKey(includeIfNull: false, name: 'apartment_id')
          String apartmentId,
      @JsonKey(includeIfNull: false)
          int duration,
      @JsonKey(includeIfNull: false, name: 'currency_id')
          int currencyId,
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
          LandlordApartmentDTO apartment,
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
    return _ApartmentMergerDTO(
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
  ApartmentMergerDTO fromJson(Map<String, Object> json) {
    return ApartmentMergerDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ApartmentMergerDTO = _$ApartmentMergerDTOTearOff();

/// @nodoc
mixin _$ApartmentMergerDTO {
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
  String get status;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get amount;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  String get paymentPlan;
  @JsonKey(includeIfNull: false, name: 'tenant_email')
  String get tenantEmail;
  @JsonKey(includeIfNull: false, name: 'apartment_id')
  String get apartmentId;
  @JsonKey(includeIfNull: false)
  int get duration;
  @JsonKey(includeIfNull: false, name: 'currency_id')
  int get currencyId;
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
  LandlordApartmentDTO get apartment;
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
  $ApartmentMergerDTOCopyWith<ApartmentMergerDTO> get copyWith;
}

/// @nodoc
abstract class $ApartmentMergerDTOCopyWith<$Res> {
  factory $ApartmentMergerDTOCopyWith(
          ApartmentMergerDTO value, $Res Function(ApartmentMergerDTO) then) =
      _$ApartmentMergerDTOCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @JsonKey(includeIfNull: false, name: 'apartment_id')
          String apartmentId,
      @JsonKey(includeIfNull: false)
          int duration,
      @JsonKey(includeIfNull: false, name: 'currency_id')
          int currencyId,
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
          LandlordApartmentDTO apartment,
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
  $LandlordApartmentDTOCopyWith<$Res> get apartment;
}

/// @nodoc
class _$ApartmentMergerDTOCopyWithImpl<$Res>
    implements $ApartmentMergerDTOCopyWith<$Res> {
  _$ApartmentMergerDTOCopyWithImpl(this._value, this._then);

  final ApartmentMergerDTO _value;
  // ignore: unused_field
  final $Res Function(ApartmentMergerDTO) _then;

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
          apartmentId == freezed ? _value.apartmentId : apartmentId as String,
      duration: duration == freezed ? _value.duration : duration as int,
      currencyId: currencyId == freezed ? _value.currencyId : currencyId as int,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartmentDTO,
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
  $LandlordApartmentDTOCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $LandlordApartmentDTOCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$ApartmentMergerDTOCopyWith<$Res>
    implements $ApartmentMergerDTOCopyWith<$Res> {
  factory _$ApartmentMergerDTOCopyWith(
          _ApartmentMergerDTO value, $Res Function(_ApartmentMergerDTO) then) =
      __$ApartmentMergerDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @JsonKey(includeIfNull: false, name: 'apartment_id')
          String apartmentId,
      @JsonKey(includeIfNull: false)
          int duration,
      @JsonKey(includeIfNull: false, name: 'currency_id')
          int currencyId,
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
          LandlordApartmentDTO apartment,
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
  $LandlordApartmentDTOCopyWith<$Res> get apartment;
}

/// @nodoc
class __$ApartmentMergerDTOCopyWithImpl<$Res>
    extends _$ApartmentMergerDTOCopyWithImpl<$Res>
    implements _$ApartmentMergerDTOCopyWith<$Res> {
  __$ApartmentMergerDTOCopyWithImpl(
      _ApartmentMergerDTO _value, $Res Function(_ApartmentMergerDTO) _then)
      : super(_value, (v) => _then(v as _ApartmentMergerDTO));

  @override
  _ApartmentMergerDTO get _value => super._value as _ApartmentMergerDTO;

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
    return _then(_ApartmentMergerDTO(
      id: id == freezed ? _value.id : id as int,
      status: status == freezed ? _value.status : status as String,
      amount: amount == freezed ? _value.amount : amount as int,
      paymentPlan:
          paymentPlan == freezed ? _value.paymentPlan : paymentPlan as String,
      tenantEmail:
          tenantEmail == freezed ? _value.tenantEmail : tenantEmail as String,
      apartmentId:
          apartmentId == freezed ? _value.apartmentId : apartmentId as String,
      duration: duration == freezed ? _value.duration : duration as int,
      currencyId: currencyId == freezed ? _value.currencyId : currencyId as int,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartmentDTO,
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
class _$_ApartmentMergerDTO extends _ApartmentMergerDTO {
  const _$_ApartmentMergerDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          this.status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          this.amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          this.paymentPlan,
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          this.tenantEmail,
      @JsonKey(includeIfNull: false, name: 'apartment_id')
          this.apartmentId,
      @JsonKey(includeIfNull: false)
          this.duration,
      @JsonKey(includeIfNull: false, name: 'currency_id')
          this.currencyId,
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

  factory _$_ApartmentMergerDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ApartmentMergerDTOFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  final int amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  final String paymentPlan;
  @override
  @JsonKey(includeIfNull: false, name: 'tenant_email')
  final String tenantEmail;
  @override
  @JsonKey(includeIfNull: false, name: 'apartment_id')
  final String apartmentId;
  @override
  @JsonKey(includeIfNull: false)
  final int duration;
  @override
  @JsonKey(includeIfNull: false, name: 'currency_id')
  final int currencyId;
  @override
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
  final LandlordApartmentDTO apartment;
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
    return 'ApartmentMergerDTO(id: $id, status: $status, amount: $amount, paymentPlan: $paymentPlan, tenantEmail: $tenantEmail, apartmentId: $apartmentId, duration: $duration, currencyId: $currencyId, currency: $currency, tenant: $tenant, landlord: $landlord, apartment: $apartment, expireAt: $expireAt, renewedAt: $renewedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApartmentMergerDTO &&
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
  _$ApartmentMergerDTOCopyWith<_ApartmentMergerDTO> get copyWith =>
      __$ApartmentMergerDTOCopyWithImpl<_ApartmentMergerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApartmentMergerDTOToJson(this);
  }
}

abstract class _ApartmentMergerDTO extends ApartmentMergerDTO {
  const _ApartmentMergerDTO._() : super._();
  const factory _ApartmentMergerDTO(
      {@nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int id,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
          String status,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: 0)
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
          String paymentPlan,
      @JsonKey(includeIfNull: false, name: 'tenant_email')
          String tenantEmail,
      @JsonKey(includeIfNull: false, name: 'apartment_id')
          String apartmentId,
      @JsonKey(includeIfNull: false)
          int duration,
      @JsonKey(includeIfNull: false, name: 'currency_id')
          int currencyId,
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
          LandlordApartmentDTO apartment,
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
          String deletedAt}) = _$_ApartmentMergerDTO;

  factory _ApartmentMergerDTO.fromJson(Map<String, dynamic> json) =
      _$_ApartmentMergerDTO.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: 0)
  int get amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
  String get paymentPlan;
  @override
  @JsonKey(includeIfNull: false, name: 'tenant_email')
  String get tenantEmail;
  @override
  @JsonKey(includeIfNull: false, name: 'apartment_id')
  String get apartmentId;
  @override
  @JsonKey(includeIfNull: false)
  int get duration;
  @override
  @JsonKey(includeIfNull: false, name: 'currency_id')
  int get currencyId;
  @override
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
  LandlordApartmentDTO get apartment;
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
  _$ApartmentMergerDTOCopyWith<_ApartmentMergerDTO> get copyWith;
}
