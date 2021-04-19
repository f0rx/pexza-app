import 'package:dartz/dartz.dart';
import 'package:flutter/painting.dart';
import 'package:pexza/features/core/domain/entities/field_object.dart';
import 'package:pexza/features/core/domain/failures/field_object/field_object_exception.dart';

class PropertyColor extends FieldObject<Color> {
  final Either<FieldObjectException<String>, Color> value;

  factory PropertyColor(Color input) {
    assert(input != null);
    return PropertyColor._(right(input.withOpacity(.3)));
  }

  const PropertyColor._(this.value);

  static const List<Color> pref = [
    // Color(0xfffafafa),
    Color(0xfffa8072),
    Color(0xfffedc56),
    // Color(0xffd0f0c0),
    // Color(0xfffca3b7),
    Color(0xff997950),
    // Color(0xfffffdd0),
    Color(0xffae30fb),
    Color(0xff8eb8cd),
  ];
}
