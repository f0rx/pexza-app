library landlord__success.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/failures/base.dart';

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
    @nullable @JsonKey(includeIfNull: false, ignore: true) String details,
  }) = _LandlordSuccess;

  factory LandlordSuccess.fromJson(Map<String, dynamic> json) =>
      _$LandlordSuccessFromJson(json);
}
