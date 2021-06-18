library card_verification_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';

part 'card_verification_dto.g.dart';
part 'card_verification_dto.freezed.dart';

@freezed
@immutable
abstract class CardVerificationDTO implements _$CardVerificationDTO {
  const CardVerificationDTO._();

  const factory CardVerificationDTO({
    @nullable @JsonKey(includeIfNull: false) CardVerificationDetailsDTO details,
  }) = _CardVerificationDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory CardVerificationDTO.fromJson(Map<String, dynamic> json) =>
      _$CardVerificationDTOFromJson(json);

  /// Maps the Data Transfer Object to a Domain instance.
  DebitCard get domain => details.domain;
}
