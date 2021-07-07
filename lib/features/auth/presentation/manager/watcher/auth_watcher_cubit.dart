import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'auth_watcher_state.dart';
part 'auth_watcher_cubit.freezed.dart';

typedef Task = void Function(Either<AuthResponse, Option<User>> option);

@injectable
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  final AuthFacade _facade;
  StreamSubscription<Either<AuthResponse, Option<User>>> _authStateChanges;

  AuthWatcherCubit(this._facade) : super(AuthWatcherState.initial());

  void toggleLoading([bool isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  Future<User> get currentUser async {
    final user = await _facade.currentUser;
    return user?.getOrElse(() => null)?.getOrElse(() => null);
  }

  void listenToAuthChanges(Task actions) async {
    toggleLoading();
    // Get current user
    final user = await currentUser;

    // Cancel previous subscription
    await unsubscribeAuthChanges;
    // Install new subscription
    _authStateChanges ??= _facade.onAuthStateChanged.listen(
      (data) {
        final User _user = data?.getOrElse(() => null)?.getOrElse(() => null);

        emit(state.copyWith(
          isAuthenticated: _user != null,
          user: _user,
        ));

        actions?.call(data);

        toggleLoading(false);
      },
    );

    await _facade.sink();

    toggleLoading();

    emit(state.copyWith(
      isAuthenticated: user != null,
      user: user,
    ));
  }

  Future<void> get unsubscribeAuthChanges async =>
      await _authStateChanges?.cancel();

  Future<void> get signOut async {
    toggleLoading();

    await _facade.signOut();

    final user = await currentUser;

    toggleLoading();

    emit(state.copyWith(
      isAuthenticated: user != null,
      user: user,
    ));
  }

  @override
  Future<void> close() async {
    await _authStateChanges?.cancel();
    return super.close();
  }
}
