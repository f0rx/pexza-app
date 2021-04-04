import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'auth_watcher_state.dart';
part 'auth_watcher_cubit.freezed.dart';

typedef Tasks = void Function(Option<User> option);

@injectable
class AuthWatcherCubit extends Cubit<AuthWatcherState> {
  final AuthFacade _facade;
  final DataConnectionChecker _connectionChecker;
  final Connectivity _connectivity;
  StreamSubscription<Option<User>> _authStateChanges;

  AuthWatcherCubit(
    this._facade,
    this._connectionChecker,
    this._connectivity,
  ) : super(AuthWatcherState.initial());

  User get currentUser => _facade.currentUser.getOrElse(() => null);

  void listenToAuthChanges(Tasks actions) async {
    emit(state.copyWith(
      isLoading: true,
      isAuthenticated: _facade.currentUser.isSome(),
      user: _facade.currentUser?.getOrElse(() => null),
    ));

    // Cancel previous subscription
    await unsubscribeAuthChanges;
    // Install new subscription
    _authStateChanges ??= _facade.onAuthStateChanged.listen(actions);

    // Sink authenticated user if available
    _facade.sink();

    emit(state.copyWith(isLoading: false));
  }

  Future<void> get unsubscribeAuthChanges async =>
      await _authStateChanges?.cancel();

  Future<void> get signOut async {
    emit(state.copyWith(isLoading: true));

    await _facade.signOut();

    emit(state.copyWith(
      isLoading: false,
      isAuthenticated: _facade.currentUser.isSome(),
      user: _facade.currentUser?.getOrElse(() => null),
    ));
  }

  @override
  Future<void> close() async {
    await _authStateChanges?.cancel();
    return super.close();
  }
}
