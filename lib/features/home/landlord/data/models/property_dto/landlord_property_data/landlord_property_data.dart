library landlord_property_data;

import 'dart:math' as math;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
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
  const factory LandlordPropertyData({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String name,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "property_type")
        String propertyType,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: "house_type")
        String houseType,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String photo,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String street,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String town,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'swatch')
        String primary,
    @nullable @JsonKey(includeIfNull: false) StateDTO state,
    @nullable @JsonKey(includeIfNull: false) UserDTO landlord,
    @nullable
    @JsonKey(includeIfNull: true, name: "state_id")
    @IntegerSerializer()
        int stateId,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String country,
    @nullable
    @JsonKey(includeIfNull: false, name: "number_of_tenants")
        int numberOfTenants,
    @nullable
    @JsonKey(includeIfNull: false, name: "number_of_apartments")
        int numberOfApartments,
    @nullable
    @JsonKey(includeIfNull: false, name: "number_of_available_apartments")
        int numberOfAvailableApartments,
    @nullable
    @JsonKey(includeIfNull: false, name: "number_of_rented_apartment")
        int numberOfRentedApartment,
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
  }) = _LandlordPropertyData;

  const LandlordPropertyData._();

  factory LandlordPropertyData.fromDomain(LandlordProperty instance) =>
      LandlordPropertyData(
        name: instance.name?.getOrNull,
        propertyType: instance.propertyType?.getOrNull?.name,
        houseType: instance.houseType?.getOrNull,
        town: instance.town?.getOrNull,
        street: instance.street?.getOrNull,
        stateId: 5,
      );

  factory LandlordPropertyData.fromJson(Map<String, dynamic> json) =>
      _$LandlordPropertyDataFromJson(json);

  static get _img => math.Random().nextInt(AppAssets.apartments.length);

  LandlordProperty get domain {
    Color _color = AppColors.fromHex(
      PropertyColor(primary).getOrNull ??
          AppColors.stringHex(
            AppColors.random,
            appendHash: true,
            withAlpha: false,
          ),
    );

    return LandlordProperty(
      id: UniqueId<int>.fromExternal(id),
      animatable: AnimatableState(
        2 + math.Random().nextInt(1 - 0),
        2 + math.Random().nextInt(1 - 0),
      ),
      name: !name.isNull ? BasicTextField(name) : null,
      propertyType: !propertyType.isNull
          ? LandlordPropertyTypeField(PropertyType.valueOf(propertyType))
          : null,
      houseType: !houseType.isNull ? BasicTextField(houseType) : null,
      town: !town.isNull ? BasicTextField(town) : null,
      street: !street.isNull ? BasicTextField(street) : null,
      photo: LandlordPropertyImage(
        // !photo.isNullOrBlank ? photo : AppAssets.anonymous,
        AppAssets.apartments[_img],
      ),
      state: !state.isNull ? state.domain : null,
      landlord: !landlord.isNull ? landlord.domain : null,
      country: !country.isNull ? BasicTextField(country) : null,
      color: MaterialColor(_color.value, AppColors.swatch(_color)),
      numberOfTenants:
          !numberOfTenants.isNull ? BasicTextField(numberOfTenants) : null,
      numberOfApartments: !numberOfApartments.isNull
          ? BasicTextField(numberOfApartments)
          : null,
      numberOfAvailableApartments: !numberOfAvailableApartments.isNull
          ? BasicTextField(numberOfAvailableApartments)
          : null,
      numberOfRentedApartment: !numberOfRentedApartment.isNull
          ? BasicTextField(numberOfRentedApartment)
          : null,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
      updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
      deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
    );
  }

  Map<String, dynamic> toJson() => _$_$_LandlordPropertyDataToJson(this);
}
