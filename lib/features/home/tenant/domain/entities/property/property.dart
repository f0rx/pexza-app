import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/fields/country/country.dart';
import 'package:pexza/features/core/domain/entities/unique_id.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';

part 'property.freezed.dart';

@freezed
@immutable
abstract class Property implements _$Property {
  const Property._();

  const factory Property({
    // Rent Info
    @nullable UniqueId id,
    @nullable PropertyOwner owner,
    @nullable PropertyName type,
    @nullable PropertyLocation location,
    @nullable PropertyPlan plan,
    @nullable Country currency,
    @nullable
        PropertyAmount
            rentAmount, // Rent Amount (Monthly..calc yearly from monthly)
    @nullable PropertyColor color,
    // Renewal Info
    @nullable DateTime dueDate,
    @nullable PropertyAmount renewalAmount,
  }) = _Property;

  static List<Property> get list => [
        Property(
          id: UniqueId(),
          owner: PropertyOwner("Adewale Olayemi"),
          type: PropertyName("Shop"),
          location: PropertyLocation("12, Tenants street, Uyo"),
          plan: PropertyPlan.Monthly,
          currency: Country.NG,
          rentAmount: PropertyAmount("200000"),
          dueDate: DateTime(2022),
          renewalAmount: PropertyAmount("250000"),
          color: PropertyColor((PropertyColor.pref.toList()..shuffle()).first),
        ),
        Property(
          id: UniqueId(),
          owner: PropertyOwner("Umoren Benjamin"),
          type: PropertyName("3 Bedroom Flat"),
          location: PropertyLocation("Ikeja, Lagos"),
          plan: PropertyPlan.Monthly,
          currency: Country.NG,
          rentAmount: PropertyAmount("200000"),
          dueDate: DateTime(2022, 07, 23),
          renewalAmount: PropertyAmount("250000"),
          color: PropertyColor((PropertyColor.pref.toList()..shuffle()).first),
        ),
        Property(
          id: UniqueId(),
          owner: PropertyOwner("Tigraine Annie"),
          type: PropertyName("Cubicle"),
          location: PropertyLocation("32, Ogunmefun Drive, GRA, Lagos"),
          plan: PropertyPlan.Monthly,
          currency: Country.NG,
          rentAmount: PropertyAmount("200000"),
          dueDate: DateTime(2021, 01, 30),
          renewalAmount: PropertyAmount("250000"),
          color: PropertyColor((PropertyColor.pref.toList()..shuffle()).first),
        ),
        Property(
          id: UniqueId(),
          owner: PropertyOwner("Umoren Benjamin"),
          type: PropertyName("1 Bedroom Flat"),
          location:
              PropertyLocation("42 Congress road, Rumuokoro, Port Harcourt"),
          plan: PropertyPlan.Monthly,
          currency: Country.NG,
          rentAmount: PropertyAmount("200000"),
          dueDate: DateTime(2026, 09, 24),
          renewalAmount: PropertyAmount("250000"),
          color: PropertyColor((PropertyColor.pref.toList()..shuffle()).first),
        ),
      ];
}
