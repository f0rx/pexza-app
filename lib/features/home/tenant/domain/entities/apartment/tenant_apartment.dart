library tenant_apartment.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'tenant_apartment.freezed.dart';

@freezed
@immutable
abstract class TenantApartment implements _$TenantApartment, BaseApartment {
  const TenantApartment._();

  const factory TenantApartment({
    @nullable UniqueId<int> id,
    @nullable BasicTextField<String> name,
    @nullable ApartmentStatus status,
    @nullable LandlordProperty property,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _TenantApartment;
}
