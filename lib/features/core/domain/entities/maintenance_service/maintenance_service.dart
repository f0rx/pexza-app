library maintenance_service.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';

part 'maintenance_service.freezed.dart';

@freezed
@immutable
abstract class MaintenanceService implements _$MaintenanceService {
  const MaintenanceService._();

  const factory MaintenanceService({
    @nullable UniqueId<int> id,
    @nullable BasicTextField<String> name,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _MaintenanceService;
}
