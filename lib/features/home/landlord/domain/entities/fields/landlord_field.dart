import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';

class LandlordField extends FieldObject<String> {
  static const LandlordField DEFAULT = LandlordField._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory LandlordField(String input) {
    assert(input != null);
    return LandlordField._(Validator.isEmpty(input));
  }

  const LandlordField._(this.value);
}
