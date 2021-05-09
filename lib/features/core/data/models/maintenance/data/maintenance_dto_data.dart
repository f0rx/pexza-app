library maintenance_dto_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'maintenance_dto_data.g.dart';
part 'maintenance_dto_data.freezed.dart';

@freezed
@immutable
abstract class MaintenanceDTOData implements _$MaintenanceDTOData {
  const MaintenanceDTOData._();

  const factory MaintenanceDTOData({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String comment,
    @nullable @JsonKey(includeIfNull: false) MaintenanceServiceDTO service,
    @nullable @JsonKey(includeIfNull: false, name: 'service_id') int serviceId,
    @nullable
    @JsonKey(includeIfNull: false, name: 'assignment_id')
        int assignmentId,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: 0)
    @IntegerSerializer()
        int urgency,
    @nullable @JsonKey(includeIfNull: false) String status,
    @nullable @JsonKey(includeIfNull: false) AssignmentDTOData assignment,
    @nullable
    @JsonKey(includeIfNull: false, name: "fixed_at")
    @TimestampConverter()
        String fixedAt,
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
  }) = _MaintenanceDTOData;

  factory MaintenanceDTOData.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceDTODataFromJson(json);

  Map<String, dynamic> toJson() => _$_$_MaintenanceDTODataToJson(this);

  factory MaintenanceDTOData.fromDomain(Maintenance instance) =>
      MaintenanceDTOData(
        comment: instance?.comment?.getOrNull,
        serviceId: instance?.service?.id?.value,
        urgency: instance?.urgency?.getOrNull,
        assignmentId: instance?.assignment?.id?.value,
        status: instance?.status?.name,
      );

  Maintenance domain([bool isLandlord = false]) => Maintenance(
        id: UniqueId.fromExternal(id),
        comment: !comment.isNull ? BasicTextField(comment) : null,
        service: !service.isNull ? service.domain : null,
        urgency: !urgency.isNull ? BasicTextField(urgency) : null,
        status: !status.isNull ? MaintenanceStatus.valueOf(status) : null,
        assignment: !assignment.isNull ? assignment.domain(isLandlord) : null,
        fixedAt: fixedAt != null ? DateTime.tryParse(fixedAt) : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
