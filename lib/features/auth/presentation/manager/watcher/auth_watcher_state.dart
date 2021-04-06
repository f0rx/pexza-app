part of 'auth_watcher_cubit.dart';

@freezed
abstract class AuthWatcherState with _$AuthWatcherState {
  const AuthWatcherState._();

  const factory AuthWatcherState({
    @Default(false) bool isLoading,
    @nullable User user,
    @Default(false) bool isAuthenticated,
  }) = _AuthWatcherState;

  factory AuthWatcherState.initial() => AuthWatcherState();
}
