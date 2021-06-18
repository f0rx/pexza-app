//            "created_at": "2021-04-30T13:38:21.000000Z",
//          "updated_at": "2021-04-30T13:38:21.000000Z",
//        "country": {

library state_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'state_dto.g.dart';
part 'state_dto.freezed.dart';

@freezed
@immutable
abstract class StateDTO implements _$StateDTO {
  const StateDTO._();

  const factory StateDTO({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: true, name: 'is_supported')
    @IntToBoolSerializer()
        bool isSupported,
    @nullable
    @JsonKey(includeIfNull: false, name: 'country_id')
    @IntegerSerializer()
        int countryId,
    @nullable @JsonKey(includeIfNull: false) CountryDTO country,
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
  }) = _StateDTO;

  factory StateDTO.fromJson(Map<String, dynamic> json) =>
      _$StateDTOFromJson(json);

  factory StateDTO.fromDomain(ProvinceState instance) => StateDTO(
        id: instance?.id?.value,
        name: instance?.name?.getOrNull,
        countryId: instance?.country?.id?.value,
      );

  ProvinceState get domain => ProvinceState(
        id: UniqueId<int>.fromExternal(id),
        name: !name.isNull ? StateName(name) : null,
        isSupported: isSupported,
        country: country?.domain,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
