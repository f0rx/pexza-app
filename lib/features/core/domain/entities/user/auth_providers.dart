import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/entities/user/auth_provider.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';

class AuthProviders extends FieldObject<KtList<AuthProvider>> {
  static const AuthProviders EMPTY =
      const AuthProviders._(Right(KtList.empty()));
  final Either<FieldObjectException<String>, KtList<AuthProvider>> value;

  factory AuthProviders(KtList<AuthProvider> input) {
    assert(input != null);
    return AuthProviders._(right(input));
  }

  const AuthProviders._([this.value]);
}
