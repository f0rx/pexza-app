library property_rent_history_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';

part 'property_rent_history_dto.freezed.dart';
part 'property_rent_history_dto.g.dart';

@freezed
@immutable
abstract class PropertyRentHistoryDTO implements _$PropertyRentHistoryDTO {
  const PropertyRentHistoryDTO._();

  const factory PropertyRentHistoryDTO({
    @nullable @JsonKey(includeIfNull: false) PropertyRentHistoryDTOData data,
  }) = _PropertyRentHistoryDTO;

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_PropertyRentHistoryDTOToJson(this);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PropertyRentHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertyRentHistoryDTOFromJson(json);
}
