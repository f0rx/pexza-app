part of 'auth_watcher_cubit.dart';

@freezed
abstract class AuthWatcherState with _$AuthWatcherState {
  const AuthWatcherState._();

  const factory AuthWatcherState({
    @Default(false) bool isLoading,
    @nullable User user,
    @Default(false) bool isAuthenticated,
    @nullable AuthResponse failure, // Remove this later, not needed
  }) = _AuthWatcherState;

  factory AuthWatcherState.initial() => AuthWatcherState();
}
