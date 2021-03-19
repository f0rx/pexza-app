import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';

abstract class BaseUser {
  UniqueId get id;
  DisplayName get displayName;
  EmailAddress get email;
  bool get isEmailVerified;
  Phone get phone;
  String get photoURL;
}
