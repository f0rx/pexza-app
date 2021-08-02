library withdrawal_history_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/withdrawal/index.dart';

part 'withdrawal_history_dto.freezed.dart';
part 'withdrawal_history_dto.g.dart';

@freezed
@immutable
abstract class WithdrawalHistoryDTO implements _$WithdrawalHistoryDTO {
  const WithdrawalHistoryDTO._();

  const factory WithdrawalHistoryDTO({
    @nullable
    @JsonKey(includeIfNull: false)
        List<WithdrawalHistoryDTOData> data,
    @JsonKey(includeIfNull: false, name: "current_page") int currentPage,
    @JsonKey(includeIfNull: false) int from,
    @JsonKey(includeIfNull: false, name: "last_page") int lastPage,
    @nullable @JsonKey(includeIfNull: false) List<PaginationLinks> links,
    @nullable @JsonKey(includeIfNull: false) String path,
    @JsonKey(includeIfNull: false, name: "per_page") int perPage,
    @JsonKey(includeIfNull: false) int to,
    @JsonKey(includeIfNull: false) int total,
  }) = _WithdrawalHistoryDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory WithdrawalHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalHistoryDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_WithdrawalHistoryDTOToJson(this);

  /// Maps the Data Transfer Object to a KtList<WithdrawalHistory>.
  KtList<WithdrawalHistory> get domain =>
      data?.map((e) => e.domain)?.toImmutableList();
}
