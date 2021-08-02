library landlord_apartment_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_apartment_data.g.dart';
part 'landlord_apartment_data.freezed.dart';

@freezed
@immutable
abstract class LandlordApartmentData implements _$LandlordApartmentData {
  const LandlordApartmentData._();

  const factory LandlordApartmentData({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @nullable
    @JsonKey(disallowNullValue: true, name: "property_id")
    @IntegerSerializer()
        int propertyId,
    @nullable @JsonKey(disallowNullValue: true) LandlordPropertyData property,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        DateTime createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        DateTime updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        DateTime deletedAt,
  }) = _LandlordApartmentData;

  factory LandlordApartmentData.fromJson(Map<String, dynamic> json) =>
      _$LandlordApartmentDataFromJson(json);

  Map<String, dynamic> toJson() => _$_$_LandlordApartmentDataToJson(this);

  factory LandlordApartmentData.fromDomain(LandlordApartment instance) =>
      LandlordApartmentData(
        name: instance.name?.getOrNull,
        propertyId: instance.property?.id?.value,
      );

  LandlordApartment get domain {
    return LandlordApartment(
      id: !id.isNull ? UniqueId<int>.fromExternal(id) : null,
      name: !name.isNull ? BasicTextField(name) : null,
      status: !status.isNull ? ApartmentStatus.valueOf(status) : null,
      property: property?.domain,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
  }
}
