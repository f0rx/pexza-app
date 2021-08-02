library withdrawal_history_list_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/withdrawal/index.dart';

part 'withdrawal_history_list_dto.freezed.dart';
part 'withdrawal_history_list_dto.g.dart';

@freezed
@immutable
abstract class WithdrawalHistoryListDTO implements _$WithdrawalHistoryListDTO {
  const WithdrawalHistoryListDTO._();

  const factory WithdrawalHistoryListDTO({
    @Default(<WithdrawalHistoryDTOData>[])
    @JsonKey(includeIfNull: false)
        List<WithdrawalHistoryDTOData> data,
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _WithdrawalHistoryListDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory WithdrawalHistoryListDTO.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalHistoryListDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_WithdrawalHistoryListDTOToJson(this);

  /// Maps the Data Transfer Object to a KtList<WithdrawalHistory>.
  KtList<WithdrawalHistory> get domain =>
      data?.map((e) => e.domain)?.toImmutableList();
}
