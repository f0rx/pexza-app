import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';

class LandlordField<T> extends FieldObject<T> {
  static const LandlordField<String> DEFAULT =
      LandlordField<String>._(Right(''));
  final Either<FieldObjectException<String>, T> value;

  factory LandlordField(T input) {
    assert(input != null);
    return LandlordField._(Validator.isEmpty(input));
  }

  const LandlordField._(this.value);
}
