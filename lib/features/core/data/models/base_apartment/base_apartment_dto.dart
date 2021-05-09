library base_apartment_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/landlord_apartment/landlord_apartment.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'base_apartment_dto.g.dart';
part 'base_apartment_dto.freezed.dart';

@freezed
@immutable
abstract class BaseApartmentDTO implements _$BaseApartmentDTO {
  const BaseApartmentDTO._();

  const factory BaseApartmentDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @nullable
    @JsonKey(disallowNullValue: true, name: "property_id")
    @IntegerSerializer()
        int propertyId,
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
  }) = _BaseApartmentDTO;

  factory BaseApartmentDTO.fromJson(Map<String, dynamic> json) =>
      _$BaseApartmentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$_$_BaseApartmentDTOToJson(this);

  factory BaseApartmentDTO.fromLandlordDomain(LandlordApartment instance) =>
      BaseApartmentDTO(
        id: instance?.id?.value,
        name: instance?.name?.getOrNull,
        status: instance?.status?.name,
        propertyId: instance?.property?.id?.value,
      );

  // factory BaseApartmentDTO.fromDomain(TenantApartment instance) =>
  //     BaseApartmentDTO();

  LandlordApartment get landlordDomain => LandlordApartment(
        id: UniqueId<int>.fromExternal(id),
        name: !name.isNull ? BasicTextField(name) : null,
        status: !status.isNull ? ApartmentStatus.valueOf(status) : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );

  // TenantApartment get domain => TenantApartment();
}
