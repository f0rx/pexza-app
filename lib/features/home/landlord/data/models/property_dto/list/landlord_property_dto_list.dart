library landlord_property_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'landlord_property_dto_list.g.dart';
part 'landlord_property_dto_list.freezed.dart';

@freezed
@immutable
abstract class LandlordPropertyDTOList implements _$LandlordPropertyDTOList {
  const LandlordPropertyDTOList._();

  const factory LandlordPropertyDTOList({
    @Default(<LandlordPropertyData>[])
    @JsonKey(includeIfNull: false)
        List<LandlordPropertyData> data,
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _LandlordPropertyDTOList;

  factory LandlordPropertyDTOList.fromJson(Map<String, dynamic> json) =>
      _$LandlordPropertyDTOListFromJson(json);

  KtList<LandlordProperty> get domain =>
      data?.map((u) => u?.domain)?.toImmutableList();
}
