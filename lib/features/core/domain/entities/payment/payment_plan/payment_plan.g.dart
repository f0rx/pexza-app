// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_plan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentPlan _$monthly = const PaymentPlan._('monthly');
const PaymentPlan _$yearly = const PaymentPlan._('yearly');

PaymentPlan _$paymentPlanValueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$monthly;
    case 'yearly':
      return _$yearly;
    default:
      return _$yearly;
  }
}

final BuiltSet<PaymentPlan> _$paymentPlanValues =
    new BuiltSet<PaymentPlan>(const <PaymentPlan>[
  _$monthly,
  _$yearly,
]);

Serializer<PaymentPlan> _$paymentPlanSerializer = new _$PaymentPlanSerializer();

class _$PaymentPlanSerializer implements PrimitiveSerializer<PaymentPlan> {
  @override
  final Iterable<Type> types = const <Type>[PaymentPlan];
  @override
  final String wireName = 'PaymentPlan';

  @override
  Object serialize(Serializers serializers, PaymentPlan object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  PaymentPlan deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentPlan.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
