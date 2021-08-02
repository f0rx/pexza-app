library landlord_property.dart;

import 'dart:math' as math;

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
    @nullable BasicTextField<String> name,
    @nullable LandlordPropertyTypeField propertyType,
    @nullable BasicTextField<String> houseType,
    @nullable BasicTextField<String> street,
    @nullable BasicTextField<String> town,
    @nullable ProvinceState state,
    @nullable BasicTextField<String> country,
    @nullable MaterialColor color,
    @nullable LandlordPropertyImage photo,
    @nullable User landlord,
    @nullable BasicTextField<int> numberOfTenants,
    @nullable BasicTextField<int> numberOfApartments,
    @nullable BasicTextField<int> numberOfAvailableApartments,
    @nullable BasicTextField<int> numberOfRentedApartment,
    @nullable AnimatableState animatable,
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

class AnimatableState {
  final int width;
  final int height;

  const AnimatableState(this.width, this.height);

  Animatable get state => CurveTween(
        curve: Interval(
          0.0,
          math.min(1.0, 0.25 + (width * height).toDouble() / 6.0),
          // curve: isFirst ? Curves.elasticOut : Curves.easeOutBack,
        ),
      );

  @override
  String toString() => "AnimatableState(width: $width, height: $height)";
}
