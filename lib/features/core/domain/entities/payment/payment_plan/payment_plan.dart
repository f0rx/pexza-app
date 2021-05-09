import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_plan.g.dart';

class PaymentPlan extends EnumClass {
  static const PaymentPlan monthly = _$monthly;
  @BuiltValueEnumConst(fallback: true)
  static const PaymentPlan yearly = _$yearly;

  const PaymentPlan._(String name) : super(name);

  static BuiltSet<PaymentPlan> get values => _$paymentPlanValues;

  static PaymentPlan valueOf(String name) => _$paymentPlanValueOf(name);

  static Serializer<PaymentPlan> get serializer => _$paymentPlanSerializer;

  T fold<T>({
    T Function(String) monthly,
    T Function(String) yearly,
  }) {
    switch (this.name) {
      case "monthly":
        return monthly?.call(this.name);
      case "yearly":
      default:
        return yearly?.call(this.name);
    }
  }
}
