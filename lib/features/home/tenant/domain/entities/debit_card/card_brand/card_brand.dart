library card_brand.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';

part 'card_brand.g.dart';

class CardBrand extends EnumClass {
  static const CardBrand mastercard = _$mastercard;
  static const CardBrand visa = _$visa;
  static const CardBrand verve = _$verve;
  @BuiltValueEnumConst(fallback: true)
  static const CardBrand unknown = _$unknown;

  const CardBrand._(String name) : super(name);

  static BuiltSet<CardBrand> get values => _$cardBrandValues;

  static CardBrand valueOf(String name) => _$cardBrandValueOf(name);

  T fold<T>({
    T Function(String) mastercard,
    T Function(String) visa,
    T Function(String) verve,
    @required T Function(String) unknown,
  }) {
    switch (this.name) {
      case "mastercard":
        return mastercard?.call(this.name);
      case "visa":
        return visa?.call(this.name);
      case "verve":
        return verve?.call(this.name);
      case "unknown":
      default:
        return unknown?.call(this.name);
    }
  }
}
