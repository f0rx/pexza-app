import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardPinField extends FieldObject<String> {
  static const DebitCardPinField DEFAULT = DebitCardPinField._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory DebitCardPinField(String input) {
    assert(input != null);
    return DebitCardPinField._(Validator.isEmpty(input));
  }

  const DebitCardPinField._(this.value);
}
