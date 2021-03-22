import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class PropertyAmount extends FieldObject<String> {
  static const PropertyAmount DEFAULT = PropertyAmount._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory PropertyAmount(String input) {
    assert(input != null);
    return PropertyAmount._(Validator.isEmpty(input));
  }

  const PropertyAmount._(this.value);
}
