import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';

class BasicTextField<T> extends FieldObject<T> {
  static const BasicTextField<String> DEFAULT =
      BasicTextField<String>._(Right(''));
  final Either<FieldObjectException<String>, T> value;

  factory BasicTextField(T input) {
    assert(input != null);
    return BasicTextField._(Validator.isEmpty(input));
  }

  const BasicTextField._(this.value);
}
