import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class PropertyLocation extends FieldObject<String> {
  static const PropertyLocation DEFAULT = PropertyLocation._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory PropertyLocation(String input) {
    assert(input != null);
    return PropertyLocation._(Validator.isEmpty(input));
  }

  const PropertyLocation._(this.value);
}
