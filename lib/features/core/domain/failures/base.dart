import 'package:pexza/features/core/data/data.dart';

abstract class Response implements Failure, Success {}

abstract class Failure with _FailureMixin {
  int get code;
  String get message;
  String get details;
}

abstract class Success with _SuccessMixin {
  String get message;
  String get details;
  bool get popRoute;
}

mixin _FailureMixin {
  String get error;
  ServerFieldErrors get errors;
}

mixin _SuccessMixin {}

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
