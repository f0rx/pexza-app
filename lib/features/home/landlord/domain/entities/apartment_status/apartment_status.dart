library apartment_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'apartment_status.g.dart';

class ApartmentStatus extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const ApartmentStatus vacant = _$vacant;
  static const ApartmentStatus assigned = _$assigned;
  static const ApartmentStatus paired = _$paired;
  static const ApartmentStatus occupied = _$occupied;
  static const ApartmentStatus reject = _$reject;

  const ApartmentStatus._(String name) : super(name);

  static BuiltSet<ApartmentStatus> get values => _$apartmentStatusValues;

  static ApartmentStatus valueOf(String name) => _$apartmentStatusValueOf(name);

  static Serializer<ApartmentStatus> get serializer =>
      _$apartmentStatusSerializer;
}
