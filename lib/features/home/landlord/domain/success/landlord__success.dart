library landlord__success.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord__success.g.dart';
part 'landlord__success.freezed.dart';

@freezed
@immutable
abstract class LandlordSuccess implements _$LandlordSuccess, Success {
  const LandlordSuccess._();

  const factory LandlordSuccess({
    @required
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '')
        String message,
    @nullable @JsonKey(ignore: true) String details,
    @Default(true) @JsonKey(ignore: true) bool popRoute,
    @JsonKey(ignore: true) BottomAlertDialogPosition position,
  }) = _LandlordSuccess;

  factory LandlordSuccess.fromJson(Map<String, dynamic> json) =>
      _$LandlordSuccessFromJson(json);
}
