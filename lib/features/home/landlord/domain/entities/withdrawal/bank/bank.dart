library bank.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';

part 'bank.freezed.dart';

@freezed
@immutable
abstract class Bank implements _$Bank {
  const Bank._();

  const factory Bank({
    @nullable UniqueId<int> id,
    @nullable BasicTextField<String> name,
    @nullable BasicTextField<String> code,
    @nullable BasicTextField<String> countryCode,
    @nullable BasicTextField<String> countryName,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _Bank;
}
