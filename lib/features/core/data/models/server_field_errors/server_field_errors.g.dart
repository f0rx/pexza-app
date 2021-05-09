// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_field_errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerFieldErrors _$_$_ServerFieldErrorsFromJson(Map<String, dynamic> json) {
  return _$_ServerFieldErrors(
    name: json['name'] as List,
    firstName: json['first_name'] as List,
    lastName: json['last_name'] as List,
    email: json['email'] as List,
    gender: json['gender'] as List,
    age: json['age'] as List,
    phone: json['phone'] as List,
    password: json['password'] as List,
    token: json['token'] as List,
    code: json['code'] as List,
    propertyId: json['property_id'] as List,
    apartmentId: json['apartment_id'] as List,
    propertyType: json['property_type'] as List,
    houseType: json['house_type'] as List,
    street: json['street'] as List,
    town: json['town'] as List,
    stateId: json['state_id'] as List,
    tenantEmail: json['tenant_email'] as List,
    duration: json['duration'] as List,
    amount: json['amount'] as List,
    currencyId: json['currency_id'] as List,
    serviceId: json['service_id'] as List,
    assignmentId: json['assignment_id'] as List,
    comment: json['comment'] as List,
  );
}

Map<String, dynamic> _$_$_ServerFieldErrorsToJson(
    _$_ServerFieldErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('gender', instance.gender);
  writeNotNull('age', instance.age);
  writeNotNull('phone', instance.phone);
  writeNotNull('password', instance.password);
  writeNotNull('token', instance.token);
  writeNotNull('code', instance.code);
  writeNotNull('property_id', instance.propertyId);
  writeNotNull('apartment_id', instance.apartmentId);
  writeNotNull('property_type', instance.propertyType);
  writeNotNull('house_type', instance.houseType);
  writeNotNull('street', instance.street);
  writeNotNull('town', instance.town);
  writeNotNull('state_id', instance.stateId);
  writeNotNull('tenant_email', instance.tenantEmail);
  writeNotNull('duration', instance.duration);
  writeNotNull('amount', instance.amount);
  writeNotNull('currency_id', instance.currencyId);
  writeNotNull('service_id', instance.serviceId);
  writeNotNull('assignment_id', instance.assignmentId);
  writeNotNull('comment', instance.comment);
  return val;
}
