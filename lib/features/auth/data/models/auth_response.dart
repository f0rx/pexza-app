import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/models/server_field_errors/server_field_errors.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/manager/serializer/server_field_error_converter.dart';
import 'package:pexza/utils/utils.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
@immutable
abstract class AuthResponse implements _$AuthResponse, Response {
  static const int UNVERIFIED = 1101;

  const AuthResponse._();

  const factory AuthResponse({
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

  T fold<T>({
    T Function() is404,
    T Function(String) is1101,
    @required T Function() orElse,
  }) {
    switch (code) {
      case 401:
        return is404?.call();
      case AuthResponse.UNVERIFIED:
        return is1101?.call(details);
      default:
        return (T is Widget) ? SizedBox() as T : orElse?.call();
    }
  }

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

  factory AuthResponse.poorInternetConnection() =>
      AuthResponse(message: "Poor internet connection!");

  factory AuthResponse.timeout() =>
      AuthResponse(message: "Connection Timeout! Please try again.");

  factory AuthResponse.receiveTimeout() =>
      AuthResponse(message: "Connection Timeout! Please try again.");

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
