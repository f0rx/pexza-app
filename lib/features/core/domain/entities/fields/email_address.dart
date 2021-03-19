import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class EmailAddress extends FieldObject<String> {
  static const EmailAddress DEFAULT = EmailAddress._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory EmailAddress(String email) {
    assert(email != null);
    return EmailAddress._(Validator.emailValidator(email));
  }

  const EmailAddress._(this.value);
}
