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
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String message,
    String details,
    @nullable
    @JsonKey(includeIfNull: false)
    @ServerFieldErrorsSerializer()
        ServerFieldErrors errors,
  }) = _AuthFailure;

  factory AuthFailure.cancelledAction() => AuthFailure(
        message: "Aborted!",
      );

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
