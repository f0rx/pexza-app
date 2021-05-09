library assignment_dto_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'assignment_dto_data.g.dart';
part 'assignment_dto_data.freezed.dart';

@freezed
@immutable
abstract class AssignmentDTOData implements _$AssignmentDTOData {
  const AssignmentDTOData._();

  const factory AssignmentDTOData({
    @nullable @JsonKey(includeIfNull: false, defaultValue: 0) int id,
    @nullable
    @JsonKey(includeIfNull: false, name: "tenant_id")
    @IntegerSerializer()
        int tenantId,
    @nullable
    @JsonKey(includeIfNull: false, name: "landlord_id")
    @IntegerSerializer()
        int landlordId,
    @nullable
    @JsonKey(includeIfNull: false, name: "apartment_id")
    @IntegerSerializer()
        int apartmentId,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @nullable @JsonKey(includeIfNull: false) CurrencyDTO currency,
    @nullable @JsonKey(includeIfNull: false) String code,
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int duration,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
        String paymentPlan,
    @nullable
    @JsonKey(includeIfNull: false, name: "currency_id")
    @IntegerSerializer()
        int currencyId,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String amount,
    @nullable
    @JsonKey(includeIfNull: false, name: "renewal_id")
    @IntegerSerializer()
        int renewalId,
    @nullable @JsonKey(includeIfNull: false) UserDTO tenant,
    @nullable @JsonKey(includeIfNull: false) UserDTO landlord,
    @nullable @JsonKey(includeIfNull: false) BaseApartmentDTO apartment,
    @nullable
    @JsonKey(includeIfNull: false, name: "can_renew")
    @IntToBoolSerializer()
        bool canRenew,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "renewed_at")
    @TimestampConverter()
        String renewedOn,
    @nullable
    @JsonKey(includeIfNull: false, name: "expire_at")
    @TimestampConverter()
        String expiresOn,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
  }) = _AssignmentDTOData;

  factory AssignmentDTOData.fromJson(Map<String, dynamic> json) =>
      _$AssignmentDTODataFromJson(json);

  Map<String, dynamic> toJson() => _$_$_AssignmentDTODataToJson(this);

  factory AssignmentDTOData.fromDomain(Assignment instance) =>
      AssignmentDTOData(code: instance?.pairingCode?.getOrNull);

  Assignment domain([bool isLandlord = false]) => Assignment(
        id: UniqueId.fromExternal(id),
        tenantId: !tenantId.isNull ? UniqueId.fromExternal(tenantId) : null,
        currencyId:
            !currencyId.isNull ? UniqueId.fromExternal(currencyId) : null,
        landlordId:
            !landlordId.isNull ? UniqueId.fromExternal(landlordId) : null,
        apartmentId:
            !apartmentId.isNull ? UniqueId.fromExternal(apartmentId) : null,
        duration: !duration.isNull ? UniqueId.fromExternal(duration) : null,
        renewalId: !renewalId.isNull ? BasicTextField(renewalId) : null,
        amount: !amount.isNull ? BasicTextField(amount) : null,
        canRenew: canRenew,
        status: !status.isNull ? ApartmentStatus.valueOf(status) : null,
        plan: !paymentPlan.isNull ? PaymentPlan.valueOf(paymentPlan) : null,
        landlord: !landlord.isNull ? landlord.domain : null,
        tenant: !tenant.isNull ? tenant.domain : null,
        apartment: !apartment.isNull
            ? isLandlord
                ? apartment?.landlordDomain
                : apartment?.tenantDomain
            : null,
        country: !currency.isNull
            ? Country(
                name: !currency.countryName.isNull
                    ? CountryName.valueOf(currency.countryName)
                    : null,
                dialCode: !currency.countryPhoneCode.isNull
                    ? currency.countryPhoneCode
                    : null,
                isSupported: currency?.isSupported,
                currency: Currency(
                  id: UniqueId.fromExternal(currency.id),
                  name: !currency.currencyName.isNull
                      ? currency.currencyName
                      : null,
                  type: !currency.currency.isNull
                      ? CurrencyType.valueOf(currency.currency)
                      : null,
                ),
              )
            : null,
        renewedOn: renewedOn != null ? DateTime.tryParse(renewedOn) : null,
        expiresOn: expiresOn != null ? DateTime.tryParse(expiresOn) : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
