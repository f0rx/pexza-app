library maintenance_service_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'maintenance_service_dto_list.g.dart';
part 'maintenance_service_dto_list.freezed.dart';

@freezed
@immutable
abstract class MaintenanceServiceDTOList
    implements _$MaintenanceServiceDTOList {
  const MaintenanceServiceDTOList._();

  const factory MaintenanceServiceDTOList({
    @Default(<MaintenanceServiceDTO>[])
    @JsonKey(includeIfNull: false)
        List<MaintenanceServiceDTO> services,
    //
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    //
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _MaintenanceServiceDTOList;

  factory MaintenanceServiceDTOList.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceServiceDTOListFromJson(json);

  KtList<MaintenanceService> get domain =>
      services?.map((u) => u?.domain)?.toImmutableList();
}
