library assignment_query_param.dart;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'assignment_query_param.g.dart';

class AssignmentQueryParam extends EnumClass {
  /// Get only accepted assignments
  static const AssignmentQueryParam paired = _$paired;

  /// Get all unaccepted / unpaired assignments
  static const AssignmentQueryParam assigned = _$assigned;

  const AssignmentQueryParam._(String name) : super(name);

  static BuiltSet<AssignmentQueryParam> get values =>
      _$assignmentQueryParamValues;
  static AssignmentQueryParam valueOf(String name) =>
      _$assignmentQueryParamValueOf(name);

  String serialize() =>
      serializers.serializeWith(AssignmentQueryParam.serializer, this);

  static AssignmentQueryParam deserialize(String string) =>
      serializers.deserializeWith(AssignmentQueryParam.serializer, string);

  String toJson() => serialize();

  static Serializer<AssignmentQueryParam> get serializer =>
      _$assignmentQueryParamSerializer;
}
