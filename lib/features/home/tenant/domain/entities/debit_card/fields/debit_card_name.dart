import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardName extends FieldObject<String> {
  static const DebitCardName DEFAULT = DebitCardName._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory DebitCardName(String input) {
    assert(input != null);
    return DebitCardName._(Validator.isEmpty(input));
  }

  const DebitCardName._(this.value);
}
