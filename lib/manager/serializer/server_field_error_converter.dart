import 'package:json_annotation/json_annotation.dart';
import 'package:pexza/features/core/data/data.dart';

class ServerFieldErrorsSerializer
    implements JsonConverter<ServerFieldErrors, Map<String, dynamic>> {
  const ServerFieldErrorsSerializer();

  @override
  ServerFieldErrors fromJson(Map<String, dynamic> value) => ServerFieldErrors(
        name: value != null ? value['name'] : null,
        firstName: value != null ? value['first_name'] : null,
        lastName: value != null ? value['last_name'] : null,
        email: value != null ? value['email'] : null,
        gender: value != null ? value['gender'] : null,
        age: value != null ? value['age'] : null,
        phone: value != null ? value['phone'] : null,
        password: value != null ? value['password'] : null,
        token: value != null ? value['token'] : null,
        code: value != null ? value['code'] : null,
        propertyId: value != null ? value['property_id'] : null,
        apartmentId: value != null ? value['apartment_id'] : null,
        propertyType: value != null ? value['property_type'] : null,
        houseType: value != null ? value['house_type'] : null,
        street: value != null ? value['street'] : null,
        town: value != null ? value['town'] : null,
        stateId: value != null ? value['state_id'] : null,
        tenantEmail: value != null ? value['tenant_email'] : null,
        duration: value != null ? value['duration'] : null,
        amount: value != null ? value['amount'] : null,
        currencyId: value != null ? value['currency_id'] : null,
        serviceId: value != null ? value['service_id'] : null,
        assignmentId: value != null ? value['assignment_id'] : null,
        comment: value != null ? value['comment'] : null,
      );

  @override
  Map<String, dynamic> toJson(ServerFieldErrors instance) => <String, dynamic>{
        "first_name": instance.firstName,
        "last_name": instance.lastName,
        "email": instance.email,
        "gender": instance.gender,
        "age": instance.age,
        "phone": instance.phone,
        "password": instance.password,
        "token": instance.token,
      };
}
