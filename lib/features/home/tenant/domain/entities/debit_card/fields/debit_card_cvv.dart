import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardCVV extends FieldObject<String> {
  static const DebitCardCVV DEFAULT = DebitCardCVV._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory DebitCardCVV(String input) {
    assert(input != null);
    return DebitCardCVV._(
      Validator.isEmpty(input).flatMap(
        (a) => Validator.cardCVV(a),
      ),
    );
  }

  const DebitCardCVV._(this.value);
}
