// GENERATED CODE - DO NOT MODIFY BY HAND

part of property_rent_history_dto_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PropertyRentHistoryDTOData _$_$_PropertyRentHistoryDTODataFromJson(
    Map<String, dynamic> json) {
  return _$_PropertyRentHistoryDTOData(
    id: const IntegerSerializer().fromJson(json['id']),
    currency: json['currency'] == null
        ? null
        : CurrencyDTO.fromJson(json['currency'] as Map<String, dynamic>),
    amount: const IntegerSerializer().fromJson(json['amount']),
    paymentPlan: json['payment_plan'] as String,
    status: json['status'] as String ?? '',
    canRenew: json['can_renew'] as bool,
    tenant: json['tenant'] == null
        ? null
        : UserDTO.fromJson(json['tenant'] as Map<String, dynamic>),
    landlord: json['landlord'] == null
        ? null
        : UserDTO.fromJson(json['landlord'] as Map<String, dynamic>),
    apartment: json['apartment'] == null
        ? null
        : BaseApartmentDTO.fromJson(json['apartment'] as Map<String, dynamic>),
    property: json['property'] == null
        ? null
        : LandlordPropertyData.fromJson(
            json['property'] as Map<String, dynamic>),
    recentPayment: json['recent_payment'] == null
        ? null
        : RentPaymentHistoryDTO.fromJson(
            json['recent_payment'] as Map<String, dynamic>),
    paymentHistories: (json['payment_histories'] as List)
        ?.map((e) => e == null
            ? null
            : RentPaymentHistoryDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    expiresAt: const TimestampConverter().fromJson(json['expire_at'] as String),
    renewsAt: const TimestampConverter().fromJson(json['renewed_at'] as String),
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_PropertyRentHistoryDTODataToJson(
    _$_PropertyRentHistoryDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', const IntegerSerializer().toJson(instance.id));
  writeNotNull('currency', instance.currency?.toJson());
  writeNotNull('amount', const IntegerSerializer().toJson(instance.amount));
  writeNotNull('payment_plan', instance.paymentPlan);
  writeNotNull('status', instance.status);
  writeNotNull('can_renew', instance.canRenew);
  writeNotNull('tenant', instance.tenant?.toJson());
  writeNotNull('landlord', instance.landlord?.toJson());
  writeNotNull('apartment', instance.apartment?.toJson());
  writeNotNull('property', instance.property?.toJson());
  writeNotNull('recent_payment', instance.recentPayment?.toJson());
  writeNotNull('payment_histories',
      instance.paymentHistories?.map((e) => e?.toJson())?.toList());
  writeNotNull(
      'expire_at', const TimestampConverter().toJson(instance.expiresAt));
  writeNotNull(
      'renewed_at', const TimestampConverter().toJson(instance.renewsAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
