library account_detail_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'account_detail_dto.g.dart';
part 'account_detail_dto.freezed.dart';

@freezed
@immutable
abstract class AccountDetailDTO implements _$AccountDetailDTO {
  const AccountDetailDTO._();

  const factory AccountDetailDTO({
    @nullable @JsonKey(includeIfNull: false, name: 'bank_id') int bankId,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_number')
        String accountNumber,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'account_name')
        String accountName,
    @nullable @JsonKey(includeIfNull: false) BankDataModel bank,
  }) = _AccountDetailDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AccountDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_AccountDetailDTOToJson(this);

  /// Maps the Domain instance to a Data Transfer Object.
  factory AccountDetailDTO.fromDomain(BankAccountDetail instance) =>
      AccountDetailDTO(
        bankId: instance?.bank?.id?.value,
        accountNumber: instance?.accountNumber?.getOrNull,
      );

  /// Maps the Data Transfer Object to a BankAccountDetail.
  BankAccountDetail get domain => BankAccountDetail(
        bankId: !bankId.isNullOrBlank ? BasicTextField(bankId) : null,
        accountName:
            !accountName.isNullOrBlank ? BasicTextField(accountName) : null,
        accountNumber:
            !accountNumber.isNullOrBlank ? BasicTextField(accountNumber) : null,
        bank: bank?.domain,
      );
}
