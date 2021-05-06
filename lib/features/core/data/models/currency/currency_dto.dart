library currency.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/currency/index.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'currency_dto.g.dart';
part 'currency_dto.freezed.dart';

@freezed
@immutable
abstract class CurrencyDTO implements _$CurrencyDTO {
  const CurrencyDTO._();

  const factory CurrencyDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: "") int id,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: "", name: "name")
        String countryName,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: "", name: "country_phone_code")
        String countryPhoneCode,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: false, name: "is_supported")
    @IntToBoolSerializer()
        bool isSupported,
    @nullable @JsonKey(includeIfNull: false, defaultValue: "") String currency,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: "", name: "currency_name")
        String currencyName,
  }) = _CurrencyDTO;

  factory CurrencyDTO.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDTOFromJson(json);

  factory CurrencyDTO.fromDomain(Currency instance) => CurrencyDTO(
        id: instance?.id?.value,
        currencyName: instance?.name,
        currency: instance?.type?.name,
      );

  Currency get domain => Currency(
        id: UniqueId<int>.fromExternal(id),
        name: currencyName,
        type: !currency.isNull ? CurrencyType.valueOf(currency) : null,
      );
}
