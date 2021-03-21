import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class PropertyName extends FieldObject<String> {
  static const PropertyName DEFAULT = PropertyName._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory PropertyName(String input) {
    assert(input != null);
    return PropertyName._(Validator.isEmpty(input));
  }

  const PropertyName._(this.value);
}
