library maintenance.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';

part 'maintenance.freezed.dart';

@freezed
@immutable
abstract class Maintenance implements _$Maintenance {
  const Maintenance._();

  const factory Maintenance({
    @nullable UniqueId<int> id,
    @nullable BasicTextField<String> comment,
    @nullable MaintenanceService service,
    @nullable BasicTextField<int> urgency,
    @nullable Assignment assignment,
    @nullable MaintenanceStatus status,
    @nullable DateTime fixedAt,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _Maintenance;
}
