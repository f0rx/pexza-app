part of 'admin_utils_cubit.dart';

@freezed
abstract class AdminUtilsState implements _$AdminUtilsState {
  const AdminUtilsState._();

  const factory AdminUtilsState({
    @Default(false) bool isLoading,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _AdminUtilsState;

  factory AdminUtilsState.initial() => AdminUtilsState();
}
