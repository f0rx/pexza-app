import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';

class ImmutableIds extends FieldObject<KtList<UniqueId>> {
  final Either<FieldObjectException<String>, KtList<UniqueId>> value;
  static const ImmutableIds EMPTY = const ImmutableIds._(Right(KtList.empty()));

  factory ImmutableIds({@required KtList<UniqueId> input}) {
    assert(input != null);
    return ImmutableIds._(right(input));
  }

  const ImmutableIds._([this.value]);
}
