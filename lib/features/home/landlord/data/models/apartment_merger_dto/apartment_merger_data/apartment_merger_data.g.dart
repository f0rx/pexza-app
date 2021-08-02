// GENERATED CODE - DO NOT MODIFY BY HAND

part of apartment_merger_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApartmentMergerData _$_$_ApartmentMergerDataFromJson(
    Map<String, dynamic> json) {
  return _$_ApartmentMergerData(
    id: json['id'] as int,
    status: json['status'] as String,
    amount: json['amount'] as int,
    paymentPlan: json['payment_plan'] as String ?? '',
    tenantEmail: json['tenant_email'] as String,
    apartmentId: const IntegerSerializer().fromJson(json['apartment_id']),
    duration: json['duration'] as int,
    currencyId: const IntegerSerializer().fromJson(json['currency_id']),
    currency: json['currency'] == null
        ? null
        : CurrencyDTO.fromJson(json['currency'] as Map<String, dynamic>),
    tenant: json['tenant'] == null
        ? null
        : UserDTO.fromJson(json['tenant'] as Map<String, dynamic>),
    landlord: json['landlord'] == null
        ? null
        : UserDTO.fromJson(json['landlord'] as Map<String, dynamic>),
    apartment: json['apartment'] == null
        ? null
        : LandlordApartmentData.fromJson(
            json['apartment'] as Map<String, dynamic>),
    expireAt: const TimestampConverter().fromJson(json['expire_at'] as String),
    renewedAt:
        const TimestampConverter().fromJson(json['renewed_at'] as String),
    createdAt:
        const TimestampConverter().fromJson(json['created_at'] as String),
    updatedAt:
        const TimestampConverter().fromJson(json['updated_at'] as String),
    deletedAt:
        const TimestampConverter().fromJson(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$_$_ApartmentMergerDataToJson(
    _$_ApartmentMergerData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('status', instance.status);
  writeNotNull('amount', instance.amount);
  writeNotNull('payment_plan', instance.paymentPlan);
  writeNotNull('tenant_email', instance.tenantEmail);
  writeNotNull(
      'apartment_id', const IntegerSerializer().toJson(instance.apartmentId));
  writeNotNull('duration', instance.duration);
  writeNotNull(
      'currency_id', const IntegerSerializer().toJson(instance.currencyId));
  writeNotNull('currency', instance.currency?.toJson());
  writeNotNull('tenant', instance.tenant?.toJson());
  writeNotNull('landlord', instance.landlord?.toJson());
  writeNotNull('apartment', instance.apartment?.toJson());
  writeNotNull(
      'expire_at', const TimestampConverter().toJson(instance.expireAt));
  writeNotNull(
      'renewed_at', const TimestampConverter().toJson(instance.renewedAt));
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  writeNotNull(
      'deleted_at', const TimestampConverter().toJson(instance.deletedAt));
  return val;
}
