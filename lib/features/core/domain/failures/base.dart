abstract class Failure {
  int get code;
  String get error;
  String get message;
  String get details;
}

class UnExpectedFailure implements Failure {
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
}
