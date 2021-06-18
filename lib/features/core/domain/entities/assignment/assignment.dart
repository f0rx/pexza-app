library assignment.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/domain/domain.dart';
import 'package:pexza/utils/utils.dart';

part 'assignment.freezed.dart';

@freezed
@immutable
abstract class Assignment implements _$Assignment {
  const Assignment._();

  const factory Assignment({
    @nullable UniqueId<int> id,
    @nullable UniqueId<int> tenantId,
    @nullable UniqueId<int> landlordId,
    @nullable UniqueId<int> apartmentId,
    @nullable ApartmentStatus status,
    @nullable Country country,
    @nullable BasicTextField<String> pairingCode,
    @nullable UniqueId<int> duration,
    @nullable User tenant,
    @nullable User landlord,
    @nullable PaymentPlan plan,
    @nullable UniqueId<int> currencyId,
    @nullable BaseApartment apartment,
    @nullable BasicTextField<String> amount,
    @nullable BasicTextField<int> renewalId,
    @nullable @Default(true) bool canRenew,
    @nullable DateTime renewedOn,
    @nullable DateTime expiresOn,
    @nullable DateTime createdAt,
    @nullable DateTime updatedAt,
    @nullable DateTime deletedAt,
  }) = _Assignment;

  bool get expired =>
      expiresOn != null && DateTime.now().isAfter(expiresOn) ? true : false;

  int get inDays => !expired ? expiresOn.difference(DateTime.now()).inDays : 0;

  int get inMonths => (inDays * 0.0328767).floor();

  int get inYears => (inDays * 0.00273973).floor();

  int get payableDuration => plan.fold(
        monthly: (_) => inMonths,
        yearly: (_) => inYears,
      );

  String get rentDuration => inYears > 1
      ? '$inYears'.padIf(true, ' year'.pluralize(inYears))
      : inMonths > 1
          ? '$inMonths'.padIf(true, ' month'.pluralize(inMonths))
          : '$inDays'.padIf(true, ' day'.pluralize(inDays));

  TenantApartment get tenantApartment => this
      .copyWith(
        apartment: TenantApartment(
          id: apartment.id,
          name: apartment.name,
          status: apartment.status,
          property: apartment.property,
          createdAt: apartment.createdAt,
          updatedAt: apartment.updatedAt,
          deletedAt: apartment.deletedAt,
        ),
      )
      .apartment;

  LandlordApartment get landlordApartment => this
      .copyWith(
        apartment: LandlordApartment(
          id: apartment.id,
          name: apartment.name,
          status: apartment.status,
          property: apartment.property,
          createdAt: apartment.createdAt,
          updatedAt: apartment.updatedAt,
          deletedAt: apartment.deletedAt,
        ),
      )
      .apartment;
}
