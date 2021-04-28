import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

class LandlordPropertySelectField extends FieldObject<LandlordProperty> {
  final Either<FieldObjectException<String>, LandlordProperty> value;

  factory LandlordPropertySelectField(LandlordProperty input) {
    // assert(input != null);
    return LandlordPropertySelectField._(Validator.isEmpty(input));
  }

  const LandlordPropertySelectField._(this.value);
}
