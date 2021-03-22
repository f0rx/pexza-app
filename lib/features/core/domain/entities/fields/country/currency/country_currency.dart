import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:kt_dart/collection.dart';

part 'country_currency.g.dart';

class CountryCurrency extends EnumClass {
  static const CountryCurrency NGN = _$NGN;
  static const CountryCurrency USD = _$USD;
  static const CountryCurrency CFP = _$CFP;
  static const CountryCurrency GBP = _$GBP;

  const CountryCurrency._(String name) : super(name);

  static BuiltSet<CountryCurrency> get values => _$values;

  static KtList<CountryCurrency> get items => values.toImmutableList();

  static CountryCurrency valueOf(String name) => _$valueOf(name);
}
