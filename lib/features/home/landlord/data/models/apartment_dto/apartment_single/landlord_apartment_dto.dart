library landlord_apartment_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'landlord_apartment_dto.g.dart';
part 'landlord_apartment_dto.freezed.dart';

@freezed
@immutable
abstract class LandlordApartmentDTO implements _$LandlordApartmentDTO {
  const LandlordApartmentDTO._();

  const factory LandlordApartmentDTO({
    @nullable @JsonKey(includeIfNull: false) LandlordApartmentData data,
  }) = _LandlordApartmentDTO;

  factory LandlordApartmentDTO.fromJson(Map<String, dynamic> json) =>
      _$LandlordApartmentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_LandlordApartmentDTOToJson(this);

  factory LandlordApartmentDTO.fromDomain(LandlordApartment instance) =>
      LandlordApartmentDTO(
        data: LandlordApartmentData.fromDomain(instance),
      );

  LandlordApartment get domain => data?.domain;
}
