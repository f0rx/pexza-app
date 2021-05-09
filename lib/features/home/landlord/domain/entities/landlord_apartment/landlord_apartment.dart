library landlord_apartment.dart;

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'landlord_apartment.freezed.dart';

@freezed
@immutable
abstract class LandlordApartment implements _$LandlordApartment, BaseApartment {
  const LandlordApartment._();

  const factory LandlordApartment({
    @nullable UniqueId<int> id,
    @nullable BasicTextField<String> name,
    @nullable ApartmentStatus status,
    @nullable LandlordProperty property,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _LandlordApartment;

  Option<FieldObjectException<dynamic>> get failures => name.mapped.fold(
        (f) => some(f),
        (_) => none(),
      );
}
