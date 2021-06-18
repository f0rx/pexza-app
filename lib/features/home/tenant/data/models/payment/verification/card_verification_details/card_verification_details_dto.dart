library card_verification_details_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'card_verification_details_dto.g.dart';
part 'card_verification_details_dto.freezed.dart';

@freezed
@immutable
abstract class CardVerificationDetailsDTO
    implements _$CardVerificationDetailsDTO {
  const CardVerificationDetailsDTO._();

  const factory CardVerificationDetailsDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String bin,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String brand,
    @nullable @JsonKey(includeIfNull: false, name: 'sub_brand') String subBrand,
    @nullable
    @JsonKey(includeIfNull: false, name: 'country_code', defaultValue: '')
        String countryCode,
    @nullable
    @JsonKey(includeIfNull: false, name: 'country_name', defaultValue: '')
        String countryName,
    @nullable
    @JsonKey(includeIfNull: false, name: 'card_type', defaultValue: '')
        String cardType,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String bank,
    @nullable @JsonKey(includeIfNull: false, name: 'linked_bank_id') int bankId,
  }) = _CardVerificationDetailsDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory CardVerificationDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$CardVerificationDetailsDTOFromJson(json);

  DebitCard get domain => DebitCard(
        brand: !brand.isNull ? CardBrand.valueOf(brand) : null,
        subBrand: !subBrand.isNull ? BasicTextField(subBrand) : null,
        countryCode: !countryCode.isNull ? BasicTextField(countryCode) : null,
        countryName: !countryName.isNull ? BasicTextField(countryName) : null,
        cardType: !cardType.isNull ? CardType.valueOf(cardType) : null,
        bank: !bank.isNull ? BasicTextField(bank) : null,
        bankId: !bankId.isNull ? BasicTextField(bankId) : null,
      );
}
