library landlord_apartment_list_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';

part 'landlord_apartment_list_dto.g.dart';
part 'landlord_apartment_list_dto.freezed.dart';

@freezed
@immutable
abstract class LandlordApartmentListDTO implements _$LandlordApartmentListDTO {
  const LandlordApartmentListDTO._();

  const factory LandlordApartmentListDTO({
    @Default(<LandlordApartmentData>[])
    @JsonKey(includeIfNull: false)
        List<LandlordApartmentData> data,
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = Landlord_ApartmentListDTO;

  factory LandlordApartmentListDTO.fromJson(Map<String, dynamic> json) =>
      _$LandlordApartmentListDTOFromJson(json);
}
