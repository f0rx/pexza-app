library account_verification_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'account_verification_dto.g.dart';
part 'account_verification_dto.freezed.dart';

@freezed
@immutable
abstract class AccountVerificationDTO implements _$AccountVerificationDTO {
  const AccountVerificationDTO._();

  const factory AccountVerificationDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: false) bool status,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String message,
    @nullable @JsonKey(includeIfNull: false) AccountDetailDTO data,
  }) = _AccountVerificationDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory AccountVerificationDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountVerificationDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_AccountVerificationDTOToJson(this);

  /// Maps the Data Transfer Object to a Domain instance.
  BankAccountDetail get domain => data?.domain;
}
