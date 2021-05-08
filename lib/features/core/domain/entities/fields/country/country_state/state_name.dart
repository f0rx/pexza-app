import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';

class StateName extends FieldObject<String> {
  static const StateName DEFAULT = StateName._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory StateName(String input) {
    assert(input != null);
    return StateName._(Validator.isEmpty(input));
  }

  const StateName._(this.value);
}
