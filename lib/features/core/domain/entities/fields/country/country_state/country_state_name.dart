import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';

class CountryStateName extends FieldObject<String> {
  static const CountryStateName DEFAULT = CountryStateName._(Right(''));
  final Either<FieldObjectException<String>, String> value;

  factory CountryStateName(String input) {
    assert(input != null);
    return CountryStateName._(Validator.isEmpty(input));
  }

  const CountryStateName._(this.value);
}
