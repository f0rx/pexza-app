library bank_dto_list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/withdrawal/index.dart';

part 'bank_dto_list.g.dart';
part 'bank_dto_list.freezed.dart';

@freezed
@immutable
abstract class BankDTOList implements _$BankDTOList {
  const BankDTOList._();

  const factory BankDTOList({
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @Default(<BankDataModel>[])
    @JsonKey(includeIfNull: false)
        List<BankDataModel> banks,
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _BankDTOList;

  factory BankDTOList.fromJson(Map<String, dynamic> json) =>
      _$BankDTOListFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  KtList<Bank> get domain => KtList.from(banks?.map((e) => e.domain));
}
