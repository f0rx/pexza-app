import 'package:dartz/dartz.dart';
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';
import 'package:pexza/utils/utils.dart';

class DateTimeField extends FieldObject<DateTime> {
  static const DateTimeField DEFAULT = DateTimeField._(null);
  static final custom = AuthState.firstYear.add(
    const Duration(days: 1000),
  );

  final Either<FieldObjectException<String>, DateTime> value;

  factory DateTimeField(DateTime input) {
    return DateTimeField._(
      Validator.isEmpty(input)
        ..flatMap(
          (a) => Validator.isValidDate(a),
        ),
    );
  }

  const DateTimeField._(this.value);

  DateTime initialDateOfBirth([Function(DateTime) onChanged]) {
    if (this.isNullOrBlank) return null;

    if (!isValidDateOfBirth) {
      onChanged?.call(custom);
      return custom;
    }

    return this?.getOrNull;
  }

  /// Note: in this context, returning "true" for null dob works,
  /// because it means the user hasn't supplied a date
  bool get isValidDateOfBirth => !this.getOrNull.isNullOrBlank
      ? this.getOrNull.isBefore(AuthState.lastYear)
      : true;
}
