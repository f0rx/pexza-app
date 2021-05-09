library maintenance_service_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'maintenance_service_dto.g.dart';
part 'maintenance_service_dto.freezed.dart';

@freezed
@immutable
abstract class MaintenanceServiceDTO implements _$MaintenanceServiceDTO {
  const MaintenanceServiceDTO._();

  const factory MaintenanceServiceDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
  }) = _MaintenanceServiceDTO;

  factory MaintenanceServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceServiceDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_MaintenanceServiceDTOToJson(this);

  factory MaintenanceServiceDTO.fromDomain(MaintenanceService instance) =>
      MaintenanceServiceDTO(
        id: instance?.id?.value,
        name: instance?.name?.getOrNull,
      );

  MaintenanceService get domain => MaintenanceService(
        id: UniqueId<int>.fromExternal(id),
        name: !name.isNull ? BasicTextField(name) : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
