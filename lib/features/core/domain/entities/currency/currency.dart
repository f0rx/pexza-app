library currency.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/currency/index.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';

part 'currency.freezed.dart';

@freezed
@immutable
abstract class Currency implements _$Currency {
  const Currency._();

  const factory Currency({
    @nullable UniqueId<int> id,
    @nullable String name,
    @nullable CurrencyType type,
  }) = _Currency;

  static String getNameFor(CurrencyType type) {
    return "Naira"; // TODO: Fix currency stuff later
  }
}
