library landlord_property.dart;

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';

part 'landlord_property.freezed.dart';

@freezed
@immutable
abstract class LandlordProperty implements _$LandlordProperty {
  const LandlordProperty._();

  const factory LandlordProperty({
    @nullable UniqueId<int> id,
    @nullable LandlordField<String> name,
    @nullable LandlordPropertyTypeField propertyType,
    @nullable LandlordField<String> houseType,
    @nullable LandlordField<String> street,
    @nullable LandlordField<String> town,
    @nullable PhotoField photo,
    @nullable CountryState state,
    @nullable LandlordField<String> country,
    @nullable @required MaterialColor color,
    @nullable @required LandlordPropertyImage image,
    @nullable LandlordField<int> numberOfTenants,
    @nullable LandlordField<int> numberOfApartments,
    @nullable LandlordField<int> numberOfAvailableApartments,
    @nullable LandlordField<int> numberOfRentedApartment,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _LandlordProperty;

  Option<FieldObjectException<dynamic>> get failures => name.mapped
      .andThen(propertyType.mapped)
      .andThen(houseType.mapped)
      .andThen(street.mapped)
      .andThen(town.mapped)
      // .andThen(state.mapped)
      // .andThen(country.mapped)
      .fold(
        (f) => some(f),
        (_) => none(),
      );
}
