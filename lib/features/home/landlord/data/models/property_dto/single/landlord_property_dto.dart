library landlord_property_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'landlord_property_dto.g.dart';
part 'landlord_property_dto.freezed.dart';

@freezed
@immutable
abstract class LandlordPropertyDTO implements _$LandlordPropertyDTO {
  const LandlordPropertyDTO._();

  const factory LandlordPropertyDTO({
    @nullable @JsonKey(includeIfNull: false) LandlordPropertyData data,
  }) = _LandlordPropertyDTO;

  factory LandlordPropertyDTO.fromJson(Map<String, dynamic> json) =>
      _$LandlordPropertyDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_LandlordPropertyDTOToJson(this);

  factory LandlordPropertyDTO.fromDomain(LandlordProperty instance) =>
      LandlordPropertyDTO(
        data: LandlordPropertyData.fromDomain(instance),
      );

  LandlordProperty get domain => data?.domain;
}
