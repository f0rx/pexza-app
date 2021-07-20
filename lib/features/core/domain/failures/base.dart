import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/utils/utils.dart';

abstract class Response {
  String get uuid;
  String get status;
  String get details;
  String get message;
  BottomAlertDialogPosition get position;
}

abstract class Failure with _FailureMixin {
  static const int CARD_PAYMENT_FAILED = 1105;
  static const int INVALID_RECORD = 1103;
  static const int NO_SAVED_CARD = 1104;
  static const int UNVERIFIED = 1101;

  int get code;
  String get details;
  String get message;
}

abstract class Success with Response implements _SuccessMixin {
  String get details;
  String get message;
  bool get popRoute;
}

abstract class Info with Response implements _InfoMixin {
  String get details;
  String get message;
}

mixin _FailureMixin {
  String get error;
  ServerFieldErrors get errors;
}

mixin _SuccessMixin {}

mixin _InfoMixin {}

class UnExpectedFailure extends Failure {
  final int code;
  final String details;
  final String error;
  final String message;

  UnExpectedFailure({
    this.message,
    this.error,
    this.code,
    this.details,
  });

  @override
  ServerFieldErrors get errors => null;
}
