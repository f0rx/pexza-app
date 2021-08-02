library landlord_rent_payment_history.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'landlord_rent_payment_history.freezed.dart';

@freezed
@immutable
abstract class LandlordRentPaymentHistory
    implements _$LandlordRentPaymentHistory {
  const LandlordRentPaymentHistory._();

  const factory LandlordRentPaymentHistory({
    @nullable UniqueId<int> id,
    @nullable UniqueId<int> userId,
    @nullable BasicTextField<int> duration,
    @nullable UniqueId<int> currencyId,
    @nullable BasicTextField<double> totalCharged,
    @nullable BasicTextField<int> amount,
    @nullable BasicTextField<double> charges,
    @nullable UniqueId<int> assignmentId,
    @nullable UniqueId<int> invoiceId,
    @nullable DateTime effectiveFrom,
    @nullable DateTime expiresOn,
    @nullable UniqueId<int> chargeableId,
    @nullable UniqueId<String> invoiceNo,
    @nullable Invoice invoice,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _LandlordRentPaymentHistory;
}
