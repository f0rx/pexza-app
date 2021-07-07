library bank_account_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';

part 'bank_account_dto.g.dart';
part 'bank_account_dto.freezed.dart';

@freezed
@immutable
abstract class BankAccountDTO implements _$BankAccountDTO {
  const BankAccountDTO._();

  const factory BankAccountDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @nullable
    @JsonKey(includeIfNull: false, name: 'bank_account')
        BankAccountData bankAccount,
    @nullable @JsonKey(includeIfNull: false) PaginationLinks links,
    @nullable @JsonKey(includeIfNull: false) MetaField meta,
  }) = _BankAccountDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory BankAccountDTO.fromJson(Map<String, dynamic> json) =>
      _$BankAccountDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_BankAccountDTOToJson(this);
}
