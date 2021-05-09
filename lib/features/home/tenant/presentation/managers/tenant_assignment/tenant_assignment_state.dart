part of 'tenant_assignment_cubit.dart';

@freezed
@immutable
abstract class TenantAssignmentState implements _$TenantAssignmentState {
  const TenantAssignmentState._();

  const factory TenantAssignmentState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required BasicTextField<String> code,
    @Default(KtList.empty()) KtList<Assignment> assignments,
    @nullable Assignment assignment,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _TenantAssignmentState;

  factory TenantAssignmentState.initial() => TenantAssignmentState(
        code: BasicTextField(""),
      );
}
