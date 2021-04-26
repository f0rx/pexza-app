import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';

class TenantsCountField extends FieldObject<int> {
  static const TenantsCountField DEFAULT = TenantsCountField._(Right(0));
  final Either<FieldObjectException<String>, int> value;

  factory TenantsCountField(int input) {
    assert(input != null);
    return TenantsCountField._(Validator.isEmpty(input));
  }

  const TenantsCountField._(this.value);
}
