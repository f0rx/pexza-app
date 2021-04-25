import 'package:dartz/dartz.dart';
import 'package:pexza/features/auth/domain/entities/auth_provider_type.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class Password extends FieldObject<String> {
  static const Password DEFAULT = Password._(Right(''));

  final Either<FieldObjectException<String>, String> value;

  factory Password(String password, {FIELD_VALIDATION mode}) {
    assert(password != null);
    return Password._(
        Validator.passwordValidator(password, validationMode: mode));
  }

  const Password._(this.value);
}
