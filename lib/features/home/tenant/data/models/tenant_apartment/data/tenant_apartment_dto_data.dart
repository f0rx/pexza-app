library tenant_apartment_dto_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'tenant_apartment_dto_data.g.dart';
part 'tenant_apartment_dto_data.freezed.dart';

@freezed
@immutable
abstract class TenantApartmentData implements _$TenantApartmentData {
  const TenantApartmentData._();

  const factory TenantApartmentData({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @nullable @JsonKey(disallowNullValue: true) LandlordPropertyData property,
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
  }) = _TenantApartmentData;

  factory TenantApartmentData.fromJson(Map<String, dynamic> json) =>
      _$TenantApartmentDataFromJson(json);

  Map<String, dynamic> toJson() => _$_$_TenantApartmentDataToJson(this);

  TenantApartment get domain {
    return TenantApartment(
      id: UniqueId<int>.fromExternal(id),
      name: !name.isNull ? BasicTextField(name) : null,
      status: !status.isNull ? ApartmentStatus.valueOf(status) : null,
      property: property?.domain,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
      updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
      deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
    );
  }
}
