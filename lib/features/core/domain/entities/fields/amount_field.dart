import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class AmountField extends FieldObject<int> {
  static const AmountField DEFAULT = AmountField._(Right(-1));
  final Either<FieldObjectException<String>, int> value;

  factory AmountField(int input) {
    assert(input != null);
    return AmountField._(Validator.isEmpty(input));
  }

  const AmountField._(this.value);
}
