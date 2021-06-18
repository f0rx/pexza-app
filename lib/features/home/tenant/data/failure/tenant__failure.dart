library tenant__failure.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'tenant__failure.g.dart';
part 'tenant__failure.freezed.dart';

@freezed
@immutable
abstract class TenantFailure implements _$TenantFailure, Failure {
  const TenantFailure._();

  const factory TenantFailure({
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
    @nullable @JsonKey(includeIfNull: false, ignore: true) String details,
  }) = _TenantFailure;

  factory TenantFailure.noInternetConnection() =>
      TenantFailure(message: "You're offline!");

  factory TenantFailure.poorInternetConnection() =>
      TenantFailure(message: "Poor internet connection!");

  factory TenantFailure.timeout() =>
      TenantFailure(message: "Connection Timeout! Please try again.");

  factory TenantFailure.receiveTimeout() =>
      TenantFailure(message: "Connection Timeout! Please try again.");

  factory TenantFailure.unknown({
    int code,
    String status,
    String message,
    String details,
  }) =>
      TenantFailure(
        code: code,
        status: status,
        message: message ??
            "Fatal! Unknown Exception / Error. Please contact support.",
        details: details,
      );

  factory TenantFailure.fromJson(Map<String, dynamic> json) =>
      _$TenantFailureFromJson(json);
}
