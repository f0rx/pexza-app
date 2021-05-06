library apartment_merger.dart;

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';

part 'apartment_merger.freezed.dart';

@freezed
@immutable
abstract class ApartmentMerger implements _$ApartmentMerger {
  const ApartmentMerger._();

  const factory ApartmentMerger({
    @nullable UniqueId<int> id,
    @nullable LandlordApartment apartment,
    @nullable EmailAddress emailAddress,
    @nullable int duration,
    @nullable PaymentPlan plan,
    @nullable Currency currency,
    @nullable AmountField amount,
    @nullable ApartmentStatus status,
    @nullable User tenant,
    @nullable User landlord,
    @nullable DateTime expireAt,
    @nullable DateTime renewedAt,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _ApartmentMerger;

  Option<FieldObjectException<dynamic>> get failures => amount.mapped.fold(
        (f) => some(f),
        (_) => none(),
      );
}
