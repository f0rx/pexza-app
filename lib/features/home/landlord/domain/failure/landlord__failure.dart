library landlord__failure.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'landlord__failure.g.dart';
part 'landlord__failure.freezed.dart';

@freezed
@immutable
abstract class LandlordFailure implements _$LandlordFailure, Failure {
  const LandlordFailure._();

  const factory LandlordFailure({
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
  }) = _LandlordFailure;

  factory LandlordFailure.noInternetConnection() =>
      LandlordFailure(message: "You're offline!");

  factory LandlordFailure.poorInternetConnection() =>
      LandlordFailure(message: "Poor internet connection!");

  factory LandlordFailure.timeout() =>
      LandlordFailure(message: "Connection Timeout! Please try again.");

  factory LandlordFailure.receiveTimeout() =>
      LandlordFailure(message: "Connection Timeout! Please try again.");

  factory LandlordFailure.unknown({
    int code,
    String status,
    String message,
    String details,
  }) =>
      LandlordFailure(
        code: code,
        status: status,
        message: message ??
            "Fatal! Unknown Exception / Error. Please contact support.",
        details: details,
      );

  factory LandlordFailure.fromJson(Map<String, dynamic> json) =>
      _$LandlordFailureFromJson(json);
}
