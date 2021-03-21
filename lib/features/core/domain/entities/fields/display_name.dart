import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class DisplayName extends FieldObject<String> {
  static const DisplayName DEFAULT = DisplayName._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory DisplayName(String input) {
    assert(input != null);
    return DisplayName._(Validator.isEmpty(input));
  }

  const DisplayName._(this.value);
}
