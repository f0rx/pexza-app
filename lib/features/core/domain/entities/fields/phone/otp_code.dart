import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class OTPCode extends FieldObject<String> {
  static const PHONE_VERIFICATION_LENGTH = 6;

  final Either<FieldObjectException<String>, String> value;

  factory OTPCode(String input) {
    assert(input != null);
    return OTPCode._(
        Validator.otpCodeValidator(input, max: PHONE_VERIFICATION_LENGTH));
  }

  const OTPCode._([this.value]);
}
