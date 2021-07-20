import 'package:flutter/widgets.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';

extension XFailure on Failure {
  T foldCode<T>({
    T Function() is401,

    /// NotFoundError
    T Function() is404,

    /// Called when user email is not verified.
    T Function() is1101,

    /// Called when no valid record was found.
    T Function() is1103,

    /// Called when user has no saved cards.
    T Function() is1104,

    /// Called when debit card could not be debited
    T Function() is1105,

    /// User has not verified their account
    /// by submitting legal documents
    T Function() is1106,

    /// Used as a default to prevent null-pointer exceptions
    @required T Function() orElse,
  }) {
    switch (code) {
      case 401:
        return is401?.call() ?? orElse?.call();
      case 404:
        return is404?.call() ?? orElse?.call();
      case Failure.UNVERIFIED_EMAIL:
        return is1101?.call() ?? orElse?.call();
      case Failure.UNVERIFIED_ACCOUNT:
        return is1106?.call() ?? orElse?.call();
      case Failure.INVALID_RECORD:
        return is1103?.call() ?? orElse?.call();
      case Failure.NO_SAVED_CARD:
        return is1104?.call() ?? orElse?.call();
      case Failure.CARD_PAYMENT_FAILED:
        return is1105?.call() ?? orElse?.call();
      default:
        return (T is Widget) ? SizedBox() as T : orElse?.call();
    }
  }
}
