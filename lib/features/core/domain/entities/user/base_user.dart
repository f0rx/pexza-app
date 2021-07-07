import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';

abstract class BaseUser {
  UniqueId get id;
  BasicTextField<int> get accountBalance;
  DisplayName get firstName;
  DisplayName get lastName;
  EmailAddress get email;
  Phone get phone;
  DateTimeField get dateOfBirth;
  Gender get gender;
  Password get password;
  String get photo;
  bool get isEmailVerified;
}
