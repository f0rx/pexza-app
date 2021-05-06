// GENERATED CODE - DO NOT MODIFY BY HAND

part of property_type.dart;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PropertyType _$Residential = const PropertyType._('Residential');
const PropertyType _$Commercial = const PropertyType._('Commercial');

PropertyType _$propertyTypeValueOf(String name) {
  switch (name) {
    case 'Residential':
      return _$Residential;
    case 'Commercial':
      return _$Commercial;
    default:
      return _$Residential;
  }
}

final BuiltSet<PropertyType> _$propertyTypeValues =
    new BuiltSet<PropertyType>(const <PropertyType>[
  _$Residential,
  _$Commercial,
]);

Serializer<PropertyType> _$propertyTypeSerializer =
    new _$PropertyTypeSerializer();

class _$PropertyTypeSerializer implements PrimitiveSerializer<PropertyType> {
  @override
  final Iterable<Type> types = const <Type>[PropertyType];
  @override
  final String wireName = 'PropertyType';

  @override
  Object serialize(Serializers serializers, PropertyType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PropertyType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PropertyType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
