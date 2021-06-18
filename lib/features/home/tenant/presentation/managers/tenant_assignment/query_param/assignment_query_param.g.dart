// GENERATED CODE - DO NOT MODIFY BY HAND

part of assignment_query_param.dart;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssignmentQueryParam _$paired = const AssignmentQueryParam._('paired');
const AssignmentQueryParam _$assigned =
    const AssignmentQueryParam._('assigned');

AssignmentQueryParam _$assignmentQueryParamValueOf(String name) {
  switch (name) {
    case 'paired':
      return _$paired;
    case 'assigned':
      return _$assigned;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AssignmentQueryParam> _$assignmentQueryParamValues =
    new BuiltSet<AssignmentQueryParam>(const <AssignmentQueryParam>[
  _$paired,
  _$assigned,
]);

Serializer<AssignmentQueryParam> _$assignmentQueryParamSerializer =
    new _$AssignmentQueryParamSerializer();

class _$AssignmentQueryParamSerializer
    implements PrimitiveSerializer<AssignmentQueryParam> {
  @override
  final Iterable<Type> types = const <Type>[AssignmentQueryParam];
  @override
  final String wireName = 'AssignmentQueryParam';

  @override
  Object serialize(Serializers serializers, AssignmentQueryParam object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  AssignmentQueryParam deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AssignmentQueryParam.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
