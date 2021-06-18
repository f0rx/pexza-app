library payment_details_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';

part 'payment_details_dto.g.dart';
part 'payment_details_dto.freezed.dart';

@freezed
@immutable
abstract class PaymentDetailsDTO implements _$PaymentDetailsDTO {
  const PaymentDetailsDTO._();

  const factory PaymentDetailsDTO({
    @nullable @JsonKey(includeIfNull: false) int amount,
    @nullable
    @JsonKey(includeIfNull: false, name: 'metadata')
        PaymentMetaDTO meta,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String email,
  }) = _PaymentDetailsDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PaymentDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_PaymentDetailsDTOToJson(this);
}
