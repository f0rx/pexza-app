library property_rent_history_dto_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'property_rent_history_dto_data.freezed.dart';
part 'property_rent_history_dto_data.g.dart';

@freezed
@immutable
abstract class PropertyRentHistoryDTOData
    implements _$PropertyRentHistoryDTOData {
  const PropertyRentHistoryDTOData._();

  const factory PropertyRentHistoryDTOData({
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int id,
    @nullable @JsonKey(includeIfNull: false) CurrencyDTO currency,
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int amount,
    @nullable
    @JsonKey(includeIfNull: false, name: 'payment_plan')
        String paymentPlan,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @nullable @JsonKey(includeIfNull: false, name: 'can_renew') bool canRenew,
    @nullable @JsonKey(includeIfNull: false) UserDTO tenant,
    @nullable @JsonKey(includeIfNull: false) UserDTO landlord,
    @nullable @JsonKey(includeIfNull: false) BaseApartmentDTO apartment,
    @nullable @JsonKey(includeIfNull: false) LandlordPropertyData property,
    @nullable
    @JsonKey(includeIfNull: false, name: 'recent_payment')
        RentPaymentHistoryDTO recentPayment,
    @nullable
    @JsonKey(includeIfNull: false, name: 'payment_histories')
        List<RentPaymentHistoryDTO> paymentHistories,
    @nullable
    @JsonKey(includeIfNull: false, name: "expire_at")
    @TimestampConverter()
        DateTime expiresAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "renewed_at")
    @TimestampConverter()
        DateTime renewsAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        DateTime createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        DateTime updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        DateTime deletedAt,
  }) = _PropertyRentHistoryDTOData;

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_PropertyRentHistoryDTODataToJson(this);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory PropertyRentHistoryDTOData.fromJson(Map<String, dynamic> json) =>
      _$PropertyRentHistoryDTODataFromJson(json);

  /// Maps the Data Transfer Object to a PropertyRentHistory Object.
  PropertyRentHistory get domain => PropertyRentHistory(
        id: !id.isNull ? UniqueId.fromExternal(id) : null,
        amount: !amount.isNull ? BasicTextField(amount) : null,
        country: Country(
          currency: currency?.domain,
          isSupported: currency?.isSupported,
          dialCode: currency?.countryPhoneCode,
          name: CountryName.valueOf(currency?.currency),
        ),
        tenant: tenant?.domain,
        landlord: landlord?.domain,
        apartment: apartment?.tenantDomain,
        canRenew: canRenew,
        property: property?.domain,
        plan: !paymentPlan.isNull ? PaymentPlan.valueOf(paymentPlan) : null,
        status: !status.isNull ? ApartmentStatus.valueOf(status) : null,
        recentPayment: recentPayment?.domain,
        expiresOn: expiresAt,
        renewsOn: renewsAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
