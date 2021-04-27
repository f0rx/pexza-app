library landlord_property_data;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'landlord_property_data.g.dart';
part 'landlord_property_data.freezed.dart';

@freezed
@immutable
abstract class LandlordPropertyData implements _$LandlordPropertyData {
  static KtList<String> images = KtList.of(
    AppAssets.apartment1,
    AppAssets.apartment2,
    AppAssets.apartment3,
    AppAssets.apartment4,
    AppAssets.apartment5,
    AppAssets.apartment6,
    AppAssets.apartment7,
    AppAssets.apartment8,
  );

  const LandlordPropertyData._();

  const factory LandlordPropertyData({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "property_type")
        String propertyType,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "house_type")
        String houseType,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String street,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String town,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String state,
    @nullable
    @JsonKey(ignore: true, includeIfNull: false, defaultValue: 1)
        int stateId,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String country,
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
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: 0, name: "number_of_tenants")
        int numberOfTenants,
  }) = _LandlordPropertyData;

  factory LandlordPropertyData.fromJson(Map<String, dynamic> json) =>
      _$LandlordPropertyDataFromJson(json);

  factory LandlordPropertyData.fromDomain(LandlordProperty instance) =>
      LandlordPropertyData(
        name: instance.name?.getOrNull,
        propertyType: instance.propertyType?.getOrNull?.name,
        houseType: instance.houseType?.getOrNull,
        town: instance.town?.getOrNull,
        street: instance.street?.getOrNull,
        state: instance.state?.getOrNull,
        stateId: 1,
      );

  LandlordProperty get domain => LandlordProperty(
        id: UniqueId<int>.fromExternal(id),
        name: !name.isNull ? LandlordField(name) : null,
        propertyType: !propertyType.isNull
            ? LandlordPropertyTypeField(PropertyType.valueOf(propertyType))
            : null,
        houseType: !houseType.isNull ? LandlordField(houseType) : null,
        town: !town.isNull ? LandlordField(town) : null,
        street: !street.isNull ? LandlordField(street) : null,
        state: !state.isNull ? LandlordField(state) : null,
        country: !country.isNull ? LandlordField(country) : null,
        color: AppColors.random,
        image: LandlordPropertyImage(images.random()),
        numberOfTenants:
            !numberOfTenants.isNull ? TenantsCountField(numberOfTenants) : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
