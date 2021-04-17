import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/models/server_field_errors/server_field_errors.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/manager/serializer/server_field_error_converter.dart';

part 'auth_failure.freezed.dart';
part 'auth_failure.g.dart';

@freezed
@immutable
abstract class AuthFailure implements _$AuthFailure, Failure {
  const AuthFailure._();

  const factory AuthFailure({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 200) int code,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    //
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String message,
    //
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String error,
    //
    @nullable
    @JsonKey(includeIfNull: false)
    @ServerFieldErrorsSerializer()
        ServerFieldErrors errors,
    //
    String details,
  }) = _AuthFailure;

  factory AuthFailure.unAuthenticated({
    int code,
    String message,
  }) =>
      AuthFailure(code: code, message: message);

  T fold<T>({
    T Function() is404,
    T Function(String) is1101,
    T Function() orElse,
  }) {
    switch (code) {
      case 401:
        return is404.call();
      case 1101:
        return is1101.call(details);
      default:
        return (T is Widget) ? SizedBox() as T : orElse?.call();
    }
  }

  factory AuthFailure.cancelledAction() => AuthFailure(
        message: "Aborted!",
      );

  factory AuthFailure.poorInternetConnection() =>
      AuthFailure(message: "Poor internet connection!");

  factory AuthFailure.timeout() =>
      AuthFailure(message: "Connection Timeout! Please try again.");

  factory AuthFailure.receiveTimeout() =>
      AuthFailure(message: "Connection Timeout! Please try again.");

  factory AuthFailure.unknownFailure({
    int code,
    String message,
    ServerFieldErrors errors,
  }) =>
      AuthFailure(
        code: code ?? "unknown",
        message: message != null
            ? "Unknown: $message"
            : "Unknown failure, please contact support.",
        errors: errors,
      );

  factory AuthFailure.fromJson(Map<String, dynamic> json) =>
      _$AuthFailureFromJson(json);
}
