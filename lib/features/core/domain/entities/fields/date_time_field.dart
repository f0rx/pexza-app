import 'package:dartz/dartz.dart';
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';
import 'package:pexza/utils/utils.dart';

class DateTimeField extends FieldObject<DateTime> {
  static const DateTimeField DEFAULT = DateTimeField._(null);
  final Either<FieldObjectException<String>, DateTime> value;

  factory DateTimeField(DateTime input) {
    return DateTimeField._(
      Validator.isEmpty(input)
        ..flatMap(
          (a) => Validator.isValidDate(a),
        ),
    );
  }

  bool get isValidDateOfBirth =>
      this.isNullOrBlank && this.getOrNull.isBefore(AuthState.lastYear);

  const DateTimeField._(this.value);
}
