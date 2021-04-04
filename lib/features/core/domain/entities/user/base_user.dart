import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';

abstract class BaseUser {
  UniqueId get id;
  DisplayName get firstName;
  DisplayName get lastName;
  EmailAddress get email;
  Phone get phone;
  DateTimeField get age;
  Gender get gender;
  Password get password;
  String get photo;
  bool get isEmailVerified;
}
