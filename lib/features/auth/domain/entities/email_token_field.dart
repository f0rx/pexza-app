import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class EmailTokenField extends FieldObject<String> {
  static const EmailTokenField DEFAULT = EmailTokenField._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory EmailTokenField(String input) {
    assert(input != null);
    return EmailTokenField._(Validator.isEmpty(input));
  }

  const EmailTokenField._(this.value);
}
