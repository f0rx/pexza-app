library info_response.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/utils/utils.dart';

part 'info_response.freezed.dart';

@freezed
@immutable
abstract class InfoResponse implements _$InfoResponse, Info {
  const InfoResponse._();

  const factory InfoResponse({
    @JsonKey(ignore: true) String uuid,
    @nullable String status,
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String message,
    @nullable @JsonKey(ignore: true) String details,
    @JsonKey(ignore: true) BottomAlertDialogPosition position,
  }) = _InfoResponse;
}
