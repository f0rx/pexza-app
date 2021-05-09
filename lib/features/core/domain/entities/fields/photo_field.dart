import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class PhotoField extends FieldObject<String> {
  static const PhotoField DEFAULT = PhotoField._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory PhotoField(String input) {
    assert(input != null);
    return PhotoField._(Validator.isEmpty(input));
  }

  const PhotoField._(this.value);
}
