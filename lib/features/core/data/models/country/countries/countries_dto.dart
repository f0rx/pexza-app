library countries_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/models/country/countries/countries__list.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'countries_dto.g.dart';
part 'countries_dto.freezed.dart';

@freezed
@immutable
abstract class CountriesDTO implements _$CountriesDTO {
  const CountriesDTO._();

  const factory CountriesDTO(
    @nullable @JsonKey(includeIfNull: false) List<CountriesList> data,
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
  ) = _CountriesDTO;

  factory CountriesDTO.fromJson(Map<String, dynamic> json) =>
      _$CountriesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CountriesDTOToJson(this);
}
