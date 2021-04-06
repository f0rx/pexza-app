import 'package:flutter/foundation.dart';
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
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', ignore: true)
        String code,
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
    String code,
    String message,
  }) =>
      AuthFailure(code: code, message: message);

  bool get is401 => this.code == "401" || (this.error == "Unauthenticated");

  factory AuthFailure.cancelledAction() => AuthFailure(
        message: "Aborted!",
      );

  factory AuthFailure.poorInternetConnection() =>
      AuthFailure(message: "Poor internet connection!");

  factory AuthFailure.timeout() => AuthFailure(message: "Connection Timeout!");

  factory AuthFailure.unknownFailure({
    String code,
    String message,
    ServerFieldErrors errors,
  }) =>
      AuthFailure(
        code: code ?? "unknown",
        message: message != null
            ? "Unknown: $message"
            : "Unknown failure contact support.",
        errors: errors,
      );

  factory AuthFailure.fromJson(Map<String, dynamic> json) =>
      _$AuthFailureFromJson(json);
}
