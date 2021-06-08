part of 'tenant_assignment_cubit.dart';

@freezed
@immutable
abstract class TenantAssignmentState implements _$TenantAssignmentState {
  const TenantAssignmentState._();

  const factory TenantAssignmentState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @Default(KtList.empty()) KtList<Assignment> unaccepted,
    @Default(KtList.empty()) KtList<Assignment> paired,
    @Default(KtList.empty()) KtList<TenantApartment> apartments,
    @nullable TenantApartment apartment,
    @nullable Assignment assignment,
    @nullable LandlordProperty property,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _TenantAssignmentState;

  factory TenantAssignmentState.initial() => TenantAssignmentState();
}
