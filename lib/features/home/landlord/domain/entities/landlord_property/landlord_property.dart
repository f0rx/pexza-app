library landlord_property.dart;

import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';

part 'landlord_property.freezed.dart';

@freezed
@immutable
abstract class LandlordProperty implements _$LandlordProperty {
  const LandlordProperty._();

  const factory LandlordProperty({
    @nullable UniqueId<int> id,
    @nullable LandlordField name,
    @nullable LandlordPropertyTypeField propertyType,
    @nullable LandlordField houseType,
    @nullable LandlordField street,
    @nullable LandlordField town,
    @nullable LandlordField state,
    @nullable LandlordField country,
    @nullable @required Color color,
    @nullable @required LandlordPropertyImage image,
    @nullable TenantsCountField numberOfTenants,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _LandlordProperty;
}
