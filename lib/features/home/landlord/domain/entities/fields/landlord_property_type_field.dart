import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

class LandlordPropertyTypeField extends FieldObject<PropertyType> {
  static const LandlordPropertyTypeField DEFAULT =
      LandlordPropertyTypeField._(Right(PropertyType.Residential));

  final Either<FieldObjectException<String>, PropertyType> value;

  factory LandlordPropertyTypeField(PropertyType input) {
    assert(input != null);
    return LandlordPropertyTypeField._(Validator.isEmpty(input));
  }

  const LandlordPropertyTypeField._(this.value);
}
