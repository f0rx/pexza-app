import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class AgeField extends FieldObject<String> {
  static const AgeField DEFAULT = AgeField._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory AgeField(String input) {
    assert(input != null);
    return AgeField._(Validator.isEmpty(input));
  }

  const AgeField._(this.value);
}
