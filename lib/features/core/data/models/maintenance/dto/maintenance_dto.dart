library maintenance_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'maintenance_dto.g.dart';
part 'maintenance_dto.freezed.dart';

@freezed
@immutable
abstract class MaintenanceDTO implements _$MaintenanceDTO {
  const MaintenanceDTO._();

  const factory MaintenanceDTO({
    @nullable @JsonKey(includeIfNull: false) MaintenanceDTOData data,
  }) = _MaintenanceDTO;

  factory MaintenanceDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_MaintenanceDTOToJson(this);

  factory MaintenanceDTO.fromDomain(Maintenance instance) => MaintenanceDTO(
        data: MaintenanceDTOData.fromDomain(instance),
      );

  Maintenance domain([bool isLandlord = false]) => data?.domain(isLandlord);
}
