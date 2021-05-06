library apartment_merger_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';

part 'apartment_merger_dto.g.dart';
part 'apartment_merger_dto.freezed.dart';

@freezed
@immutable
abstract class ApartmentMergerDTO implements _$ApartmentMergerDTO {
  const ApartmentMergerDTO._();

  const factory ApartmentMergerDTO({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int id,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
        String status,
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int amount,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
        String paymentPlan,
    @JsonKey(includeIfNull: false, name: 'tenant_email') String tenantEmail,
    @JsonKey(includeIfNull: false, name: 'apartment_id') String apartmentId,
    @JsonKey(includeIfNull: false) int duration,
    @JsonKey(includeIfNull: false, name: "currency_id") int currencyId,
    @JsonKey(includeIfNull: false) CurrencyDTO currency,
    @nullable @JsonKey(includeIfNull: false) UserDTO tenant,
    @nullable @JsonKey(includeIfNull: false) UserDTO landlord,
    @nullable @JsonKey(includeIfNull: false) LandlordApartmentDTO apartment,
    @nullable
    @JsonKey(includeIfNull: false, name: "expire_at")
    @TimestampConverter()
        String expireAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "renewed_at")
    @TimestampConverter()
        String renewedAt,
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
  }) = _ApartmentMergerDTO;

  factory ApartmentMergerDTO.fromJson(Map<String, dynamic> json) =>
      _$ApartmentMergerDTOFromJson(json);

  factory ApartmentMergerDTO.fromDomain(ApartmentMerger instance) =>
      ApartmentMergerDTO(
        id: instance?.id?.value,
        // name: !name.isNull ? LandlordField(name) : null,
      );

  ApartmentMerger get domain => ApartmentMerger(
        id: UniqueId<int>.fromExternal(id),
      );
}
