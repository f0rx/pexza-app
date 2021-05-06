// GENERATED CODE - DO NOT MODIFY BY HAND

part of apartment_merger_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApartmentMergerDTO _$_$_ApartmentMergerDTOFromJson(
    Map<String, dynamic> json) {
  return _$_ApartmentMergerDTO(
    id: json['id'] as int ?? 0,
    status: json['status'] as String,
    amount: json['amount'] as int ?? 0,
    paymentPlan: json['payment_plan'] as String ?? '',
    tenantEmail: json['tenant_email'] as String,
    apartmentId: json['apartment_id'] as String,
    duration: json['duration'] as int,
    currencyId: json['currency_id'] as int,
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
        : LandlordApartmentDTO.fromJson(
            json['apartment'] as Map<String, dynamic>),
    expireAt: json['expire_at'] as String,
    renewedAt: json['renewed_at'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_ApartmentMergerDTOToJson(
    _$_ApartmentMergerDTO instance) {
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
  writeNotNull('apartment_id', instance.apartmentId);
  writeNotNull('duration', instance.duration);
  writeNotNull('currency_id', instance.currencyId);
  writeNotNull('currency', instance.currency?.toJson());
  writeNotNull('tenant', instance.tenant?.toJson());
  writeNotNull('landlord', instance.landlord?.toJson());
  writeNotNull('apartment', instance.apartment?.toJson());
  writeNotNull('expire_at', instance.expireAt);
  writeNotNull('renewed_at', instance.renewedAt);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
