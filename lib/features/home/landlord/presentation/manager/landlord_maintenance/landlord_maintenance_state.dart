part of 'landlord_maintenance_cubit.dart';

@freezed
@immutable
abstract class LandlordMaintenanceState implements _$LandlordMaintenanceState {
  const LandlordMaintenanceState._();

  const factory LandlordMaintenanceState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(KtList.empty()) KtList<Maintenance> maintenances,
    @nullable Maintenance maintenance,
    @Default(MaintenanceStatus.unfixed) MaintenanceStatus status,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _LandlordMaintenanceState;

  factory LandlordMaintenanceState.initial() => LandlordMaintenanceState();
}
