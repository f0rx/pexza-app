import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/auth/data/models/auth_response/auth_response.dart';

part 'auth_status.freezed.dart';

@freezed
@immutable
abstract class AuthStatus<R> implements _$AuthStatus {
  const AuthStatus._();

  const factory AuthStatus({
    Either<AuthResponse, R> status,
  }) = _AuthStatus<R>;
}
