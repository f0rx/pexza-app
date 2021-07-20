import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/data/models/server_field_errors/server_field_errors.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/manager/serializer/server_field_error_converter.dart';
import 'package:pexza/utils/utils.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
@immutable
abstract class AuthResponse implements _$AuthResponse, Failure, Response {
  static const int UNVERIFIED = 1101;
  static const int INVALID_RECORD = 1103;

  const AuthResponse._();

  const factory AuthResponse({
    @JsonKey(ignore: true) String uuid,
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
    @JsonKey(ignore: true) String details,
    //
    @Default(true) @JsonKey(ignore: true) bool popRoute,
    @JsonKey(ignore: true) BottomAlertDialogPosition position,
  }) = _AuthResponse;

  T type<T>({
    T Function() isError,
    T Function() isSuccess,
  }) {
    switch (status) {
      case "success":
        return isSuccess?.call();
      default:
        return isError != null
            ? isError?.call()
            : (T is Widget)
                ? SizedBox() as T
                : null;
    }
  }

  factory AuthResponse.unAuthenticated({
    int code,
    String message,
  }) =>
      AuthResponse(code: code, message: message);

  factory AuthResponse.cancelledAction() => AuthResponse(
        message: "Aborted!",
      );

  factory AuthResponse.noInternetConnection() =>
      AuthResponse(message: "You're offline!");

  factory AuthResponse.poorInternetConnection() =>
      AuthResponse(message: "Poor internet connection!");

  factory AuthResponse.timeout() =>
      AuthResponse(message: "Connection Timeout! Please try again.");

  factory AuthResponse.receiveTimeout() =>
      AuthResponse(message: "Receive Timeout! Please try again.");

  factory AuthResponse.unknownFailure({
    int code,
    String message,
    ServerFieldErrors errors,
  }) =>
      AuthResponse(
        code: code,
        message: message != null
            ? "Unknown: $message"
            : "Unknown failure, please contact support.",
        errors: errors,
      );

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
