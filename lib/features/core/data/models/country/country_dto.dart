library country_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'country_dto.g.dart';
part 'country_dto.freezed.dart';

@freezed
@immutable
abstract class CountryDTO implements _$CountryDTO {
  const CountryDTO._();

  const factory CountryDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'country_phone_code')
        String phoneCode,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: false, name: 'is_supported')
    @IntToBoolSerializer()
        bool isSupported,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency')
        String currencyType,
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'currency_name')
        String currencyName,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
  }) = _CountryDTO;

  factory CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$CountryDTOFromJson(json);

  factory CountryDTO.fromDomain(Country instance) => CountryDTO(
        id: instance?.id?.value,
        name: instance?.name?.name,
        phoneCode: instance?.dialCode,
        isSupported: instance?.isSupported,
        currencyType: instance?.currency?.type?.name,
        currencyName: instance?.currency?.name,
      );

  Country get domain => Country(
        id: UniqueId<int>.fromExternal(id),
        name: !name.isNull ? CountryName.valueOf(name) : null,
        dialCode: phoneCode,
        isSupported: isSupported,
        currency: Currency(
          name: !currencyName.isNull ? currencyName : null,
          type:
              !currencyType.isNull ? CurrencyType.valueOf(currencyType) : null,
        ),
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
