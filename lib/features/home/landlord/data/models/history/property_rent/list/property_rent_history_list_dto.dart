library property_rent_history_list_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'property_rent_history_list_dto.freezed.dart';
part 'property_rent_history_list_dto.g.dart';

@freezed
@immutable
abstract class PropertyRentHistoryListDTO
    implements _$PropertyRentHistoryListDTO {
  const PropertyRentHistoryListDTO._();

  const factory PropertyRentHistoryListDTO({
    @Default(<PropertyRentHistoryDTOData>[])
    @JsonKey(includeIfNull: false)
        List<PropertyRentHistoryDTOData> data,
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _PropertyRentHistoryListDTO;

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_PropertyRentHistoryListDTOToJson(this);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PropertyRentHistoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$PropertyRentHistoryListDTOFromJson(json);

  /// Maps the Data Transfer Object to a KtList<PropertyRentHistory>.
  KtList<PropertyRentHistory> get domain =>
      data?.map((e) => e.domain)?.toImmutableList();
}
