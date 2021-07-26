library general_failure.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'general_failure.g.dart';
part 'general_failure.freezed.dart';

@freezed
@immutable
abstract class GeneralFailure implements _$GeneralFailure, Failure {
  const GeneralFailure._();

  const factory GeneralFailure({
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
  }) = _GeneralFailure;

  factory GeneralFailure.noInternetConnection() =>
      GeneralFailure(message: "You're offline!");

  factory GeneralFailure.poorInternetConnection() =>
      GeneralFailure(message: "Poor internet connection!");

  factory GeneralFailure.timeout() =>
      GeneralFailure(message: "Connection Timeout! Please try again.");

  factory GeneralFailure.receiveTimeout() =>
      GeneralFailure(message: "Connection Timeout! Please try again.");

  factory GeneralFailure.noDocumentSelected([int code]) =>
      GeneralFailure(code: code, message: "Please select a valid document!");

  factory GeneralFailure.unknown({
    int code,
    String status,
    String message,
    String details,
  }) =>
      GeneralFailure(
        code: code,
        status: status,
        message: message ??
            "Fatal! Unknown Exception / Error. Please contact support.",
        details: details,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory GeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$GeneralFailureFromJson(json);
}
