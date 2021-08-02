library property_rent_history.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'property_rent_history.freezed.dart';

@freezed
@immutable
abstract class PropertyRentHistory implements _$PropertyRentHistory {
  const PropertyRentHistory._();

  const factory PropertyRentHistory({
    @nullable UniqueId<int> id,
    @nullable Country country,
    @nullable BasicTextField<int> amount,
    @nullable User tenant,
    @nullable User landlord,
    @nullable ApartmentStatus status,
    @nullable BaseApartment apartment,
    @nullable LandlordProperty property,
    @nullable PaymentPlan plan,
    @nullable LandlordRentPaymentHistory recentPayment,
    @Default(KtList.empty())
        KtList<LandlordRentPaymentHistory> paymentHistories,
    @Default(false) bool canRenew,
    @nullable DateTime renewsOn,
    @nullable DateTime expiresOn,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _PropertyRentHistory;
}
