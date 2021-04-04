part of 'role_cubit.dart';

@freezed
abstract class RoleState with _$RoleState {
  const RoleState._();

  const factory RoleState({
    Role role,
    @Default(false) bool isLoading,
  }) = _RoleState;

  factory RoleState.initial() => RoleState();
}
