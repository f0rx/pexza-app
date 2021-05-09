library maintenance_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'maintenance_dto_list.g.dart';
part 'maintenance_dto_list.freezed.dart';

@freezed
@immutable
abstract class MaintenanceDTOList implements _$MaintenanceDTOList {
  const MaintenanceDTOList._();

  const factory MaintenanceDTOList({
    @Default(<MaintenanceDTOData>[])
    @JsonKey(includeIfNull: false)
        List<MaintenanceDTOData> data,
    //
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    //
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _MaintenanceDTOList;

  factory MaintenanceDTOList.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDTOListFromJson(json);

  KtList<Maintenance> domain([bool isLandlord = false]) =>
      data?.map((u) => u?.domain(isLandlord))?.toImmutableList();
}
