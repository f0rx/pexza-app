library apartment_merger.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
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
    @nullable Duration duration,
    @nullable PaymentPlan plan,
    @nullable Currency currency,
    @nullable LandlordField<int> amount,
    @nullable ApartmentStatus status,
    @nullable User tenant,
    @nullable User landlord,
    @nullable DateTime expireAt,
    @nullable DateTime renewedAt,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _ApartmentMerger;
}
