library tenant__success.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/utils/utils.dart';

part 'tenant__success.g.dart';
part 'tenant__success.freezed.dart';

@freezed
@immutable
abstract class TenantSuccess implements _$TenantSuccess, Success {
  const factory TenantSuccess({
    @JsonKey(ignore: true) String uuid,
    @nullable String status,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String message,
    @nullable @JsonKey(ignore: true) String details,
    @Default(true) @JsonKey(ignore: true) bool popRoute,
    @JsonKey(ignore: true) BottomAlertDialogPosition position,
  }) = _TenantSuccess;

  const TenantSuccess._();

  factory TenantSuccess.fromJson(Map<String, dynamic> json) =>
      _$TenantSuccessFromJson(json);
}
