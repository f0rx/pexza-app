library property_type.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'property_type.g.dart';

class PropertyType extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const PropertyType Residential = _$Residential;
  static const PropertyType Commercial = _$Commercial;

  const PropertyType._(String name) : super(name);

  static BuiltSet<PropertyType> get values => _$propertyTypeValues;

  static PropertyType valueOf(String name) => _$propertyTypeValueOf(name);

  static Serializer<PropertyType> get serializer => _$propertyTypeSerializer;
}
