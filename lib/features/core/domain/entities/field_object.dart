import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/utils/utils.dart';

@immutable
abstract class FieldObject<T> {
  const FieldObject();

  Either<FieldObjectException<String>, T> get value;

  bool isEqualTo(String other, {bool inMemory = false}) {
    if (this.isValid) {
      if (inMemory) return identical(this.getOrCrash, other);
      return this.getOrCrash == other;
    }
    return false;
  }

  bool get isValid => value.isRight();

  T get getOrCrash => value.fold((failure) {
        log.e(
            "Oops! The program crashed (Field Object Failure: [${value.runtimeType}])");
        throw UnExpectedFailure(message: failure.message);
      }, id);

  Either<FieldObjectException<dynamic>, Unit> get failureOrUnit =>
      value.fold((l) => left(l), (r) => right(unit));

  T get getOrNull => value.fold((failure) => null, id);

  T get getOrEmpty => value.fold((failure) => T is Iterable ? [] : "", id);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is FieldObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() =>
      "FieldObject<$T>(${value.getOrElse(() => null).toString()})";
}
