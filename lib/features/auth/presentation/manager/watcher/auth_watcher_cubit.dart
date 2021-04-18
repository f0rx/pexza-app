import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/auth_failure.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'auth_watcher_state.dart';
part 'auth_watcher_cubit.freezed.dart';

typedef Task = void Function(Either<AuthFailure, Option<User>> option);

@injectable
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  final AuthFacade _facade;
  StreamSubscription<Either<AuthFailure, Option<User>>> _authStateChanges;

  AuthWatcherCubit(this._facade) : super(AuthWatcherState.initial());

  Future<User> get currentUser async {
    final user = await _facade.currentUser;
    return user?.getOrElse(() => null)?.getOrElse(() => null);
  }

  void listenToAuthChanges(Task actions) async {
    emit(state.copyWith(isLoading: true));
    // Get current user
    final user = await currentUser;

    // Cancel previous subscription
    await unsubscribeAuthChanges;
    // Install new subscription
    _authStateChanges ??= _facade.onAuthStateChanged.listen(actions);

    await _facade.sink();

    emit(state.copyWith(
      isLoading: false,
      isAuthenticated: user != null,
      user: user,
    ));
  }

  Future<void> get unsubscribeAuthChanges async =>
      await _authStateChanges?.cancel();

  Future<void> get signOut async {
    emit(state.copyWith(isLoading: true));

    final user = await currentUser;

    await _facade.signOut();

    emit(state.copyWith(
      isLoading: false,
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
