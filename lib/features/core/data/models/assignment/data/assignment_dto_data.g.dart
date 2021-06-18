// GENERATED CODE - DO NOT MODIFY BY HAND

part of assignment_dto_data.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssignmentDTOData _$_$_AssignmentDTODataFromJson(Map<String, dynamic> json) {
  return _$_AssignmentDTOData(
    id: json['id'] as int,
    tenantId: const IntegerSerializer().fromJson(json['tenant_id']),
    landlordId: const IntegerSerializer().fromJson(json['landlord_id']),
    apartmentId: const IntegerSerializer().fromJson(json['apartment_id']),
    status: json['status'] as String ?? '',
    currency: json['currency'] == null
        ? null
        : CurrencyDTO.fromJson(json['currency'] as Map<String, dynamic>),
    code: json['code'] as String,
    duration: const IntegerSerializer().fromJson(json['duration']),
    paymentPlan: json['payment_plan'] as String ?? '',
    currencyId: const IntegerSerializer().fromJson(json['currency_id']),
    amount: json['amount'] as String ?? '',
    renewalId: const IntegerSerializer().fromJson(json['renewal_id']),
    tenant: json['tenant'] == null
        ? null
        : UserDTO.fromJson(json['tenant'] as Map<String, dynamic>),
    landlord: json['landlord'] == null
        ? null
        : UserDTO.fromJson(json['landlord'] as Map<String, dynamic>),
    apartment: json['apartment'] == null
        ? null
        : BaseApartmentDTO.fromJson(json['apartment'] as Map<String, dynamic>),
    canRenew: const IntToBoolSerializer().fromJson(json['can_renew']),
    createdAt: json['created_at'] as String,
    renewedOn: json['renewed_at'] as String,
    expiresOn: json['expire_at'] as String,
    updatedAt: json['updated_at'] as String,
    deletedAt: json['deleted_at'] as String,
  );
}

Map<String, dynamic> _$_$_AssignmentDTODataToJson(
    _$_AssignmentDTOData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull(
      'tenant_id', const IntegerSerializer().toJson(instance.tenantId));
  writeNotNull(
      'landlord_id', const IntegerSerializer().toJson(instance.landlordId));
  writeNotNull(
      'apartment_id', const IntegerSerializer().toJson(instance.apartmentId));
  writeNotNull('status', instance.status);
  writeNotNull('currency', instance.currency?.toJson());
  writeNotNull('code', instance.code);
  writeNotNull('duration', const IntegerSerializer().toJson(instance.duration));
  writeNotNull('payment_plan', instance.paymentPlan);
  writeNotNull(
      'currency_id', const IntegerSerializer().toJson(instance.currencyId));
  writeNotNull('amount', instance.amount);
  writeNotNull(
      'renewal_id', const IntegerSerializer().toJson(instance.renewalId));
  writeNotNull('tenant', instance.tenant?.toJson());
  writeNotNull('landlord', instance.landlord?.toJson());
  writeNotNull('apartment', instance.apartment?.toJson());
  writeNotNull(
      'can_renew', const IntToBoolSerializer().toJson(instance.canRenew));
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('renewed_at', instance.renewedOn);
  writeNotNull('expire_at', instance.expiresOn);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  return val;
}
