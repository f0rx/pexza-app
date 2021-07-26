library wallet_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'wallet_dto.g.dart';
part 'wallet_dto.freezed.dart';

@freezed
@immutable
abstract class WalletDTO implements _$WalletDTO {
  const WalletDTO._();

  const factory WalletDTO({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false, name: 'payable_id') int payableId,
    @nullable @JsonKey(includeIfNull: false) int amount,
  }) = _WalletDTO;

  /// Maps LandLordWallet to a Data Transfer Object.
  factory WalletDTO.fromDomain(LandlordWallet instance) => WalletDTO(
        payableId: instance?.payableId?.getOrNull,
        amount: instance?.amount?.getOrNull,
      );

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory WalletDTO.fromJson(Map<String, dynamic> json) =>
      _$WalletDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_WalletDTOToJson(this);

  /// Maps the Data Transfer Object to a LandlordWallet Object.
  LandlordWallet get domain => LandlordWallet();
}
