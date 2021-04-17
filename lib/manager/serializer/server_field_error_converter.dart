import 'package:json_annotation/json_annotation.dart';
import 'package:pexza/features/core/data/data.dart';

class ServerFieldErrorsSerializer
    implements JsonConverter<ServerFieldErrors, Map<String, dynamic>> {
  const ServerFieldErrorsSerializer();

  @override
  ServerFieldErrors fromJson(Map<String, dynamic> value) => ServerFieldErrors(
        firstName: value != null ? value['first_name'] : null,
        lastName: value != null ? value['last_name'] : null,
        email: value != null ? value['email'] : null,
        gender: value != null ? value['gender'] : null,
        age: value != null ? value['age'] : null,
        phone: value != null ? value['phone'] : null,
        password: value != null ? value['password'] : null,
        token: value != null ? value['token'] : null,
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
