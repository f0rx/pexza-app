// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of property_rent_history_dto_data.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PropertyRentHistoryDTOData _$PropertyRentHistoryDTODataFromJson(
    Map<String, dynamic> json) {
  return _PropertyRentHistoryDTOData.fromJson(json);
}

/// @nodoc
class _$PropertyRentHistoryDTODataTearOff {
  const _$PropertyRentHistoryDTODataTearOff();

// ignore: unused_element
  _PropertyRentHistoryDTOData call(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'can_renew')
          bool canRenew,
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
      @JsonKey(includeIfNull: false)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: 'recent_payment')
          RentPaymentHistoryDTO recentPayment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_histories')
          List<RentPaymentHistoryDTO> paymentHistories,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          DateTime renewsAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt}) {
    return _PropertyRentHistoryDTOData(
      id: id,
      currency: currency,
      amount: amount,
      paymentPlan: paymentPlan,
      status: status,
      canRenew: canRenew,
      tenant: tenant,
      landlord: landlord,
      apartment: apartment,
      property: property,
      recentPayment: recentPayment,
      paymentHistories: paymentHistories,
      expiresAt: expiresAt,
      renewsAt: renewsAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }

// ignore: unused_element
  PropertyRentHistoryDTOData fromJson(Map<String, Object> json) {
    return PropertyRentHistoryDTOData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PropertyRentHistoryDTOData = _$PropertyRentHistoryDTODataTearOff();

/// @nodoc
mixin _$PropertyRentHistoryDTOData {
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get id;
  @nullable
  @JsonKey(includeIfNull: false)
  CurrencyDTO get currency;
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get amount;
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_plan')
  String get paymentPlan;
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @nullable
  @JsonKey(includeIfNull: false, name: 'can_renew')
  bool get canRenew;
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
  @JsonKey(includeIfNull: false)
  LandlordPropertyData get property;
  @nullable
  @JsonKey(includeIfNull: false, name: 'recent_payment')
  RentPaymentHistoryDTO get recentPayment;
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_histories')
  List<RentPaymentHistoryDTO> get paymentHistories;
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  DateTime get expiresAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'renewed_at')
  @TimestampConverter()
  DateTime get renewsAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime get createdAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime get updatedAt;
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime get deletedAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PropertyRentHistoryDTODataCopyWith<PropertyRentHistoryDTOData> get copyWith;
}

/// @nodoc
abstract class $PropertyRentHistoryDTODataCopyWith<$Res> {
  factory $PropertyRentHistoryDTODataCopyWith(PropertyRentHistoryDTOData value,
          $Res Function(PropertyRentHistoryDTOData) then) =
      _$PropertyRentHistoryDTODataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'can_renew')
          bool canRenew,
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
      @JsonKey(includeIfNull: false)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: 'recent_payment')
          RentPaymentHistoryDTO recentPayment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_histories')
          List<RentPaymentHistoryDTO> paymentHistories,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          DateTime renewsAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt});

  $CurrencyDTOCopyWith<$Res> get currency;
  $UserDTOCopyWith<$Res> get tenant;
  $UserDTOCopyWith<$Res> get landlord;
  $BaseApartmentDTOCopyWith<$Res> get apartment;
  $LandlordPropertyDataCopyWith<$Res> get property;
  $RentPaymentHistoryDTOCopyWith<$Res> get recentPayment;
}

/// @nodoc
class _$PropertyRentHistoryDTODataCopyWithImpl<$Res>
    implements $PropertyRentHistoryDTODataCopyWith<$Res> {
  _$PropertyRentHistoryDTODataCopyWithImpl(this._value, this._then);

  final PropertyRentHistoryDTOData _value;
  // ignore: unused_field
  final $Res Function(PropertyRentHistoryDTOData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object currency = freezed,
    Object amount = freezed,
    Object paymentPlan = freezed,
    Object status = freezed,
    Object canRenew = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object apartment = freezed,
    Object property = freezed,
    Object recentPayment = freezed,
    Object paymentHistories = freezed,
    Object expiresAt = freezed,
    Object renewsAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      amount: amount == freezed ? _value.amount : amount as int,
      paymentPlan:
          paymentPlan == freezed ? _value.paymentPlan : paymentPlan as String,
      status: status == freezed ? _value.status : status as String,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
      property: property == freezed
          ? _value.property
          : property as LandlordPropertyData,
      recentPayment: recentPayment == freezed
          ? _value.recentPayment
          : recentPayment as RentPaymentHistoryDTO,
      paymentHistories: paymentHistories == freezed
          ? _value.paymentHistories
          : paymentHistories as List<RentPaymentHistoryDTO>,
      expiresAt:
          expiresAt == freezed ? _value.expiresAt : expiresAt as DateTime,
      renewsAt: renewsAt == freezed ? _value.renewsAt : renewsAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
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

  @override
  $LandlordPropertyDataCopyWith<$Res> get property {
    if (_value.property == null) {
      return null;
    }
    return $LandlordPropertyDataCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }

  @override
  $RentPaymentHistoryDTOCopyWith<$Res> get recentPayment {
    if (_value.recentPayment == null) {
      return null;
    }
    return $RentPaymentHistoryDTOCopyWith<$Res>(_value.recentPayment, (value) {
      return _then(_value.copyWith(recentPayment: value));
    });
  }
}

/// @nodoc
abstract class _$PropertyRentHistoryDTODataCopyWith<$Res>
    implements $PropertyRentHistoryDTODataCopyWith<$Res> {
  factory _$PropertyRentHistoryDTODataCopyWith(
          _PropertyRentHistoryDTOData value,
          $Res Function(_PropertyRentHistoryDTOData) then) =
      __$PropertyRentHistoryDTODataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'can_renew')
          bool canRenew,
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
      @JsonKey(includeIfNull: false)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: 'recent_payment')
          RentPaymentHistoryDTO recentPayment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_histories')
          List<RentPaymentHistoryDTO> paymentHistories,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          DateTime renewsAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt});

  @override
  $CurrencyDTOCopyWith<$Res> get currency;
  @override
  $UserDTOCopyWith<$Res> get tenant;
  @override
  $UserDTOCopyWith<$Res> get landlord;
  @override
  $BaseApartmentDTOCopyWith<$Res> get apartment;
  @override
  $LandlordPropertyDataCopyWith<$Res> get property;
  @override
  $RentPaymentHistoryDTOCopyWith<$Res> get recentPayment;
}

/// @nodoc
class __$PropertyRentHistoryDTODataCopyWithImpl<$Res>
    extends _$PropertyRentHistoryDTODataCopyWithImpl<$Res>
    implements _$PropertyRentHistoryDTODataCopyWith<$Res> {
  __$PropertyRentHistoryDTODataCopyWithImpl(_PropertyRentHistoryDTOData _value,
      $Res Function(_PropertyRentHistoryDTOData) _then)
      : super(_value, (v) => _then(v as _PropertyRentHistoryDTOData));

  @override
  _PropertyRentHistoryDTOData get _value =>
      super._value as _PropertyRentHistoryDTOData;

  @override
  $Res call({
    Object id = freezed,
    Object currency = freezed,
    Object amount = freezed,
    Object paymentPlan = freezed,
    Object status = freezed,
    Object canRenew = freezed,
    Object tenant = freezed,
    Object landlord = freezed,
    Object apartment = freezed,
    Object property = freezed,
    Object recentPayment = freezed,
    Object paymentHistories = freezed,
    Object expiresAt = freezed,
    Object renewsAt = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object deletedAt = freezed,
  }) {
    return _then(_PropertyRentHistoryDTOData(
      id: id == freezed ? _value.id : id as int,
      currency: currency == freezed ? _value.currency : currency as CurrencyDTO,
      amount: amount == freezed ? _value.amount : amount as int,
      paymentPlan:
          paymentPlan == freezed ? _value.paymentPlan : paymentPlan as String,
      status: status == freezed ? _value.status : status as String,
      canRenew: canRenew == freezed ? _value.canRenew : canRenew as bool,
      tenant: tenant == freezed ? _value.tenant : tenant as UserDTO,
      landlord: landlord == freezed ? _value.landlord : landlord as UserDTO,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as BaseApartmentDTO,
      property: property == freezed
          ? _value.property
          : property as LandlordPropertyData,
      recentPayment: recentPayment == freezed
          ? _value.recentPayment
          : recentPayment as RentPaymentHistoryDTO,
      paymentHistories: paymentHistories == freezed
          ? _value.paymentHistories
          : paymentHistories as List<RentPaymentHistoryDTO>,
      expiresAt:
          expiresAt == freezed ? _value.expiresAt : expiresAt as DateTime,
      renewsAt: renewsAt == freezed ? _value.renewsAt : renewsAt as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      deletedAt:
          deletedAt == freezed ? _value.deletedAt : deletedAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PropertyRentHistoryDTOData extends _PropertyRentHistoryDTOData {
  const _$_PropertyRentHistoryDTOData(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.id,
      @nullable
      @JsonKey(includeIfNull: false)
          this.currency,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          this.amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_plan')
          this.paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          this.status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'can_renew')
          this.canRenew,
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
      @JsonKey(includeIfNull: false)
          this.property,
      @nullable
      @JsonKey(includeIfNull: false, name: 'recent_payment')
          this.recentPayment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_histories')
          this.paymentHistories,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          this.expiresAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          this.renewsAt,
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

  factory _$_PropertyRentHistoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$_$_PropertyRentHistoryDTODataFromJson(json);

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  final int id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  final CurrencyDTO currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  final int amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_plan')
  final String paymentPlan;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  final String status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'can_renew')
  final bool canRenew;
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
  @JsonKey(includeIfNull: false)
  final LandlordPropertyData property;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'recent_payment')
  final RentPaymentHistoryDTO recentPayment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_histories')
  final List<RentPaymentHistoryDTO> paymentHistories;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  final DateTime expiresAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'renewed_at')
  @TimestampConverter()
  final DateTime renewsAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  final DateTime updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  final DateTime deletedAt;

  @override
  String toString() {
    return 'PropertyRentHistoryDTOData(id: $id, currency: $currency, amount: $amount, paymentPlan: $paymentPlan, status: $status, canRenew: $canRenew, tenant: $tenant, landlord: $landlord, apartment: $apartment, property: $property, recentPayment: $recentPayment, paymentHistories: $paymentHistories, expiresAt: $expiresAt, renewsAt: $renewsAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PropertyRentHistoryDTOData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.paymentPlan, paymentPlan) ||
                const DeepCollectionEquality()
                    .equals(other.paymentPlan, paymentPlan)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.canRenew, canRenew) ||
                const DeepCollectionEquality()
                    .equals(other.canRenew, canRenew)) &&
            (identical(other.tenant, tenant) ||
                const DeepCollectionEquality().equals(other.tenant, tenant)) &&
            (identical(other.landlord, landlord) ||
                const DeepCollectionEquality()
                    .equals(other.landlord, landlord)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)) &&
            (identical(other.recentPayment, recentPayment) ||
                const DeepCollectionEquality()
                    .equals(other.recentPayment, recentPayment)) &&
            (identical(other.paymentHistories, paymentHistories) ||
                const DeepCollectionEquality()
                    .equals(other.paymentHistories, paymentHistories)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)) &&
            (identical(other.renewsAt, renewsAt) ||
                const DeepCollectionEquality()
                    .equals(other.renewsAt, renewsAt)) &&
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
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(paymentPlan) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(canRenew) ^
      const DeepCollectionEquality().hash(tenant) ^
      const DeepCollectionEquality().hash(landlord) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(recentPayment) ^
      const DeepCollectionEquality().hash(paymentHistories) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(renewsAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deletedAt);

  @JsonKey(ignore: true)
  @override
  _$PropertyRentHistoryDTODataCopyWith<_PropertyRentHistoryDTOData>
      get copyWith => __$PropertyRentHistoryDTODataCopyWithImpl<
          _PropertyRentHistoryDTOData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PropertyRentHistoryDTODataToJson(this);
  }
}

abstract class _PropertyRentHistoryDTOData extends PropertyRentHistoryDTOData {
  const _PropertyRentHistoryDTOData._() : super._();
  const factory _PropertyRentHistoryDTOData(
      {@nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int id,
      @nullable
      @JsonKey(includeIfNull: false)
          CurrencyDTO currency,
      @nullable
      @JsonKey(includeIfNull: false)
      @IntegerSerializer()
          int amount,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_plan')
          String paymentPlan,
      @nullable
      @JsonKey(includeIfNull: false, defaultValue: '')
          String status,
      @nullable
      @JsonKey(includeIfNull: false, name: 'can_renew')
          bool canRenew,
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
      @JsonKey(includeIfNull: false)
          LandlordPropertyData property,
      @nullable
      @JsonKey(includeIfNull: false, name: 'recent_payment')
          RentPaymentHistoryDTO recentPayment,
      @nullable
      @JsonKey(includeIfNull: false, name: 'payment_histories')
          List<RentPaymentHistoryDTO> paymentHistories,
      @nullable
      @JsonKey(includeIfNull: false, name: 'expire_at')
      @TimestampConverter()
          DateTime expiresAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'renewed_at')
      @TimestampConverter()
          DateTime renewsAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'created_at')
      @TimestampConverter()
          DateTime createdAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'updated_at')
      @TimestampConverter()
          DateTime updatedAt,
      @nullable
      @JsonKey(includeIfNull: false, name: 'deleted_at')
      @TimestampConverter()
          DateTime deletedAt}) = _$_PropertyRentHistoryDTOData;

  factory _PropertyRentHistoryDTOData.fromJson(Map<String, dynamic> json) =
      _$_PropertyRentHistoryDTOData.fromJson;

  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get id;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  CurrencyDTO get currency;
  @override
  @nullable
  @JsonKey(includeIfNull: false)
  @IntegerSerializer()
  int get amount;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_plan')
  String get paymentPlan;
  @override
  @nullable
  @JsonKey(includeIfNull: false, defaultValue: '')
  String get status;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'can_renew')
  bool get canRenew;
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
  @JsonKey(includeIfNull: false)
  LandlordPropertyData get property;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'recent_payment')
  RentPaymentHistoryDTO get recentPayment;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'payment_histories')
  List<RentPaymentHistoryDTO> get paymentHistories;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'expire_at')
  @TimestampConverter()
  DateTime get expiresAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'renewed_at')
  @TimestampConverter()
  DateTime get renewsAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'created_at')
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'updated_at')
  @TimestampConverter()
  DateTime get updatedAt;
  @override
  @nullable
  @JsonKey(includeIfNull: false, name: 'deleted_at')
  @TimestampConverter()
  DateTime get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$PropertyRentHistoryDTODataCopyWith<_PropertyRentHistoryDTOData>
      get copyWith;
}
