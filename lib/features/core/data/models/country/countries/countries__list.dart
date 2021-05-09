library countries__list.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/models/country/index.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'countries__list.g.dart';
part 'countries__list.freezed.dart';

@freezed
@immutable
abstract class CountriesList implements _$CountriesList {
  const CountriesList._();

  const factory CountriesList({
    // The country's Id
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false) String name,
    @nullable
    @JsonKey(includeIfNull: false, name: "country_phone_code")
        String countryPhoneCode,
    @nullable
    @JsonKey(includeIfNull: false, name: "is_supported", defaultValue: true)
    @IntToBoolSerializer()
        bool isSupported,
    @nullable @JsonKey(includeIfNull: false) String currency,
    @nullable
    @JsonKey(includeIfNull: false, name: "currency_name")
        String currencyName,
    @nullable @JsonKey(includeIfNull: false) List<StateDTO> states,
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
  }) = _CountriesList;

  factory CountriesList.fromJson(Map<String, dynamic> json) =>
      _$CountriesListFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CountriesListToJson(this);
}
