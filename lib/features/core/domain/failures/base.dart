import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/utils/utils.dart';

abstract class Response {
  String get message;
  String get details;
  BottomAlertDialogPosition get position;
}

abstract class Failure with _FailureMixin {
  int get code;
  String get message;
  String get details;
}

abstract class Success with Response implements _SuccessMixin {
  String get message;
  String get details;
  bool get popRoute;
}

abstract class Info with Response implements _InfoMixin {
  String get message;
  String get details;
  bool get popRoute;
}

mixin _FailureMixin {
  String get error;
  ServerFieldErrors get errors;
}

mixin _SuccessMixin {}

mixin _InfoMixin {}

class UnExpectedFailure extends Failure {
  final String message;
  final String error;
  final int code;
  final String details;

  UnExpectedFailure({
    this.message,
    this.error,
    this.code,
    this.details,
  });

  @override
  ServerFieldErrors get errors => null;
}
