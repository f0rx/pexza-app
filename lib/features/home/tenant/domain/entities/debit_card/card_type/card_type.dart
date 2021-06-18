library card_type.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'card_type.g.dart';

class CardType extends EnumClass {
  @BuiltValueEnumConst(fallback: true)
  static const CardType DEBIT = _$DEBIT;
  static const CardType CREDIT = _$CREDIT;

  const CardType._(String name) : super(name);

  static BuiltSet<CardType> get values => _$cardTypeValues;

  static CardType valueOf(String name) => _$cardTypeValueOf(name);

  T fold<T>({
    T Function(String) debit,
    T Function(String) credit,
  }) {
    switch (this.name) {
      case "CREDIT":
        return credit?.call(this.name);
      case "DEBIT":
      default:
        return debit?.call(this.name);
    }
  }
}
