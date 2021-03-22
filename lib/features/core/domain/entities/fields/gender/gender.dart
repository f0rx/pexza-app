import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/entities/fields/gender/gender_type.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class Gender extends FieldObject<GenderType> {
  static const Gender DEFAULT = Gender._(Right(GenderType.Unspecified));
  final Either<FieldObjectException<String>, GenderType> value;

  factory Gender(GenderType type) =>
      Gender._(Validator.isEmpty<GenderType>(type));

  const Gender._(this.value);
}
