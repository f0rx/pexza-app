library apartment_merger_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'apartment_merger_dto.g.dart';
part 'apartment_merger_dto.freezed.dart';

@freezed
@immutable
abstract class ApartmentMergerDTO implements _$ApartmentMergerDTO {
  const ApartmentMergerDTO._();

  const factory ApartmentMergerDTO({
    @nullable @JsonKey(includeIfNull: false) ApartmentMergerData data,
  }) = _ApartmentMergerDTO;

  factory ApartmentMergerDTO.fromJson(Map<String, dynamic> json) =>
      _$ApartmentMergerDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_ApartmentMergerDTOToJson(this);

  factory ApartmentMergerDTO.fromDomain(ApartmentMerger instance) =>
      ApartmentMergerDTO(
        data: ApartmentMergerData.fromDomain(instance),
      );

  ApartmentMerger get domain => data?.domain;
}
