// GENERATED CODE - DO NOT MODIFY BY HAND

part of apartment_status.dart;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApartmentStatus _$vacant = const ApartmentStatus._('vacant');
const ApartmentStatus _$assigned = const ApartmentStatus._('assigned');
const ApartmentStatus _$paired = const ApartmentStatus._('paired');
const ApartmentStatus _$occupied = const ApartmentStatus._('occupied');
const ApartmentStatus _$reject = const ApartmentStatus._('reject');

ApartmentStatus _$apartmentStatusValueOf(String name) {
  switch (name) {
    case 'vacant':
      return _$vacant;
    case 'assigned':
      return _$assigned;
    case 'paired':
      return _$paired;
    case 'occupied':
      return _$occupied;
    case 'reject':
      return _$reject;
    default:
      return _$vacant;
  }
}

final BuiltSet<ApartmentStatus> _$apartmentStatusValues =
    new BuiltSet<ApartmentStatus>(const <ApartmentStatus>[
  _$vacant,
  _$assigned,
  _$paired,
  _$occupied,
  _$reject,
]);

Serializer<ApartmentStatus> _$apartmentStatusSerializer =
    new _$ApartmentStatusSerializer();

class _$ApartmentStatusSerializer
    implements PrimitiveSerializer<ApartmentStatus> {
  @override
  final Iterable<Type> types = const <Type>[ApartmentStatus];
  @override
  final String wireName = 'ApartmentStatus';

  @override
  Object serialize(Serializers serializers, ApartmentStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ApartmentStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ApartmentStatus.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
