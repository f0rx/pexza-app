part of 'tenant_maintenance_cubit.dart';

@freezed
@immutable
abstract class TenantMaintenanceState implements _$TenantMaintenanceState {
  const TenantMaintenanceState._();

  const factory TenantMaintenanceState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required BasicTextField<String> comment,
    @required BasicTextField<int> urgency,
    @nullable MaintenanceService service,
    @nullable Maintenance maintenance,
    @nullable Assignment assignment,
    @Default(KtList.empty()) KtList<Assignment> assignments,
    @Default(KtList.empty()) KtList<MaintenanceService> services,
    @Default(KtList.empty()) KtList<Maintenance> maintenances,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _TenantMaintenanceState;

  factory TenantMaintenanceState.initial() => TenantMaintenanceState(
        comment: BasicTextField(""),
        urgency: BasicTextField(0),
      );
}
