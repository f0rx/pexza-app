import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardNumber extends FieldObject<String> {
  static const DebitCardNumber DEFAULT = DebitCardNumber._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory DebitCardNumber(String input) {
    assert(input != null);
    return DebitCardNumber._(
      Validator.isEmpty(input).flatMap(
        (a) => Validator.cardNumber(a),
      ),
    );
  }

  const DebitCardNumber._(this.value);
}
