import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class PropertyOwner extends FieldObject<String> {
  static const PropertyOwner DEFAULT = PropertyOwner._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory PropertyOwner(String input) {
    assert(input != null);
    return PropertyOwner._(Validator.isEmpty(input));
  }

  const PropertyOwner._(this.value);
}
