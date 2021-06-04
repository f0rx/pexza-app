import 'package:dartz/dartz.dart';
import 'package:flutter/painting.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';

class PropertyColor<T> extends FieldObject<T> {
  final Either<FieldObjectException<String>, T> value;

  static const bool standard = true;

  factory PropertyColor([T input, bool standard = standard]) =>
      PropertyColor._(Validator.validateColor(
        input: input,
        useStandard: standard,
      ));

  const PropertyColor._(this.value);

  static const List<Color> pref = [
    Color(0xfffa8072),
    Color(0xfffedc56),
    Color(0xff997950),
    Color(0xffae30fb),
    Color(0xff8eb8cd),
  ];
}
