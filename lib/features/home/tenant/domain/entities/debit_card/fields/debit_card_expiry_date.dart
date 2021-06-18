import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

/// Contains power-packed methods for any InputField type.
class DebitCardExpiryDate extends FieldObject<String> {
  static const DebitCardExpiryDate DEFAULT = DebitCardExpiryDate._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory DebitCardExpiryDate(String input) {
    assert(input != null);
    return DebitCardExpiryDate._(
      Validator.isEmpty(input).flatMap(
        (a) => Validator.cardExpiration(a),
      ),
    );
  }

  int get month {
    try {
      var split = this.getOrNull?.split('/');
      return int.tryParse(split?.first);
    } catch (e) {
      return null;
    }
  }

  int get year {
    try {
      var split = this.getOrNull?.split('/');
      return int.tryParse(split?.last);
    } catch (e) {
      return null;
    }
  }

  const DebitCardExpiryDate._(this.value);
}
