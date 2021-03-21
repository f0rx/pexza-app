import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'property_plan.g.dart';

class PropertyPlan extends EnumClass {
  static const PropertyPlan Monthly = _$monthly;
  static const PropertyPlan Annually = _$annually;
  static const PropertyPlan BiMonthly = _$bi_monthly;
  static const PropertyPlan BiAnnually = _$bi_annually;

  const PropertyPlan._(String name) : super(name);

  String get duration {
    switch (this.name) {
      case "monthly":
        return "1 Month";
      case "annually":
        return "1 Year";
      case "bi_annually":
        return "2 Years";
      case "bi_monthly":
        return "2 Months";
      default:
        return "1 Month";
    }
  }

  static BuiltSet<PropertyPlan> get values => _$values;

  static BuiltList<PropertyPlan> get items => values.toBuiltList();

  static PropertyPlan valueOf(String name) => _$valueOf(name);
}
