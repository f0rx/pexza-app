import 'package:dartz/dartz.dart';
import 'package:pexza/features/auth/domain/auth_provider_type.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/entities/fields/country/country.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class Phone extends FieldObject<String> {
  static const Phone DEFAULT = Phone._(Right(''), Country.NG);
  final Either<FieldObjectException<String>, String> value;
  final Country country;

  factory Phone(String phone, Country country, {FIELD_VALIDATION mode}) {
    assert(phone != null);
    assert(country != null);
    return Phone._(
        Validator.phoneNumberValidator(phone, country, mode: mode), country);
  }

  const Phone._(this.value, this.country);
}
