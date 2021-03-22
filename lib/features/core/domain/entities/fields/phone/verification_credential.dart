import 'package:pexza/features/core/domain/entities/fields/phone/phone.dart';

class VerificationCredential {
  final Phone phone;
  final String verificationId;
  final int forceResendingToken;
  final bool codeSent;
  final bool verified;
  final String errorCode;
  final String message;

  const VerificationCredential({
    this.phone,
    this.verificationId,
    this.forceResendingToken,
    this.codeSent = false,
    this.errorCode,
    this.message,
    bool verified = false,
  }) : verified = verified;

  VerificationCredential copyWith({
    Phone phone,
    String verificationId,
    int forceResendingToken,
    bool codeSent,
    String errorCode,
    String message,
    bool verified,
  }) {
    return VerificationCredential(
      phone: phone ?? this.phone,
      verificationId: verificationId ?? this.verificationId,
      forceResendingToken: forceResendingToken ?? this.forceResendingToken,
      codeSent: codeSent ?? this.codeSent,
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
      verified: verified ?? this.verified,
    );
  }

  Result maybeWhen<Result extends Object>({
    Result Function() codeSent,
    Result Function(String code, String value) error,
    Result orElse(),
  }) {
    if (this.message != null && !this.codeSent)
      return error(this.errorCode, this.message);
    if (this.codeSent) return codeSent();
    return orElse();
  }

  @override
  String toString() => "Credentials(id: $verificationId, "
      "token: $forceResendingToken, codeSent: "
      "$codeSent, errorCode: $errorCode, message: $message)";
}
