part of 'validator.dart';

mixin _ExpiryDateValidator {
  static Either<FieldObjectException<String>, String> validateCreditCardNumber(
    String input,
  ) {
    String clean = input.trim();

    return _onlyDigits(
      clean,
      message: INVALID_CARD_NUMBER,
      pattern: r"^[0-9 ]+$",
      multiline: false,
    ).flatMap((v) => _validateWithLuhnAlgorithm(v));
  }

  static Either<FieldObjectException<String>, String> validateCardCVV(
    String input,
  ) {
    final clean = input.trim();

    return _onlyDigits(
      clean,
      message: INVALID_CARD_NUMBER,
      pattern: r"^[0-9 ]+$",
      multiline: false,
    ).flatMap((val) {
      if (val.length < 3 || val.length > 4)
        return left(
          FieldObjectException.invalid(message: 'Invalid CVV!'),
        );
      return right(input);
    });
  }

  static Either<FieldObjectException<String>, String> validateCardExpiryDate(
    String input,
  ) {
    final clean = input.trim();

    int year;
    int month;
    // The value contains a forward slash if the month and year has been
    // entered.
    if (clean.contains(RegExp(r'(\/)'))) {
      var split = clean.split(RegExp(r'(\/)'));
      // The value before the slash is the month while the value to right of
      // it is the year.
      month = int.tryParse(split[0]);
      year = int.tryParse(split[1]);
    } else {
      // Only the month was entered
      month = int.tryParse(clean.substring(0, (clean.length)));
      year = -1; // Lets use an invalid year intentionally
    }

    if (clean.length > 1 && (month < 1) || (month > 12)) {
      // A valid month is between 1 (January) and 12 (December)
      return left(
        FieldObjectException.invalid(message: 'Invalid Month.'),
      );
    }

    if (!clean.isNullOrBlank && clean[clean.length - 1] == '/')
      return left(
        FieldObjectException.invalid(message: 'Expiry year is required'),
      );

    var fourDigitsYear = convertYearTo4Digits(year);
    if (!fourDigitsYear.isNull &&
        ((fourDigitsYear < 1) || (fourDigitsYear > 2099))) {
      // We are assuming a valid year should be between 1 and 2099.
      // Note that, it's valid doesn't mean that it has not expired.
      return left(
        FieldObjectException.invalid(message: 'Expiry year is invalid.'),
      );
    }

    if (!hasDateExpired(month, year)) {
      return left(
        FieldObjectException.invalid(message: 'Expired Card!'),
      );
    }

    return right(input);
  }

  static Either<FieldObjectException<String>, String> _onlyDigits(
    String input, {
    String pattern = r"^[0-9]+$",
    String message = INVALID_FIELD_MESSAGE,
    bool multiline = true,
  }) {
    String clean = input.trim();

    bool containsOnlyDigits =
        RegExp(pattern, multiLine: multiline).hasMatch(clean);

    if (!containsOnlyDigits)
      return left(FieldObjectException.invalid(message: message));

    return right(input);
  }

  static Either<FieldObjectException<String>, String>
      _validateWithLuhnAlgorithm(String input) {
    String clean = input.trim();

    int sum = 0;
    int length = clean.length;

    for (var i = 0; i < length; i++) {
      // get digits in reverse order
      int digit = int.tryParse(clean[length - i - 1]);

      // every 2nd number multiply with 2
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 != 0) {
      return left(FieldObjectException.invalid(message: INVALID_CARD_NUMBER));
    }

    return right(input);
  }

  /// Convert the two-digit year to four-digit year if necessary
  static int convertYearTo4Digits(int year) {
    if (year == null) return year;

    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static bool hasDateExpired(int month, int year) {
    if (month == null || year == null) return true;

    return !(month == null || year == null) && _isNotExpired(year, month);
  }

  static bool _isNotExpired(int year, int month) {
    // It has not expired if both the year and date has not passed
    return !_hasYearPassed(year) && !_hasMonthPassed(year, month);
  }

  static bool _hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    // The month has passed if:
    // 1. The year is in the past. In that case, we just assume that the month
    // has passed
    // 2. Card's month (plus another month) is less than current month.
    return _hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool _hasYearPassed(int year) {
    int fourDigitsYear = convertYearTo4Digits(year);
    var now = DateTime.now();
    // The year has passed if the year we are currently, is greater than card's
    // year
    return fourDigitsYear < now.year;
  }
}
