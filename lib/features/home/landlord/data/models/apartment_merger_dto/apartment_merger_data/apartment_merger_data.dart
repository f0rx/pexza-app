library apartment_merger_data.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'apartment_merger_data.g.dart';
part 'apartment_merger_data.freezed.dart';

@freezed
@immutable
abstract class ApartmentMergerData implements _$ApartmentMergerData {
  const ApartmentMergerData._();

  const factory ApartmentMergerData({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: ApartmentStatus.vacant)
        String status,
    @nullable @JsonKey(includeIfNull: false) int amount,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'payment_plan')
        String paymentPlan,
    @nullable
    @JsonKey(includeIfNull: false, name: 'tenant_email')
        String tenantEmail,
    @nullable
    @JsonKey(includeIfNull: false, name: 'apartment_id')
    @IntegerSerializer()
        int apartmentId,
    @nullable @JsonKey(includeIfNull: false) int duration,
    @nullable
    @JsonKey(includeIfNull: false, name: "currency_id")
    @IntegerSerializer()
        int currencyId,
    @nullable @JsonKey(includeIfNull: false) CurrencyDTO currency,
    @nullable @JsonKey(includeIfNull: false) UserDTO tenant,
    @nullable @JsonKey(includeIfNull: false) UserDTO landlord,
    @nullable @JsonKey(includeIfNull: false) LandlordApartmentData apartment,
    @nullable
    @JsonKey(includeIfNull: false, name: "expire_at")
    @TimestampConverter()
        DateTime expireAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "renewed_at")
    @TimestampConverter()
        DateTime renewedAt,
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
  }) = _ApartmentMergerData;

  factory ApartmentMergerData.fromJson(Map<String, dynamic> json) =>
      _$ApartmentMergerDataFromJson(json);

  Map<String, dynamic> toJson() => _$_$_ApartmentMergerDataToJson(this);

  factory ApartmentMergerData.fromDomain(ApartmentMerger instance) =>
      ApartmentMergerData(
        amount: instance?.amount?.getOrNull,
        paymentPlan: instance?.plan?.name,
        tenantEmail: instance?.emailAddress?.getOrEmpty,
        apartmentId: instance?.apartment?.id?.value,
        duration: instance?.duration,
        currencyId: instance?.currency?.id?.value,
      );

  ApartmentMerger get domain => ApartmentMerger(
        id: UniqueId<int>.fromExternal(id),
        status: !status.isNull ? ApartmentStatus.valueOf(status) : null,
        amount: !amount.isNull ? AmountField(amount) : null,
        plan: !paymentPlan.isNull ? PaymentPlan.valueOf(paymentPlan) : null,
        currency: !currency.isNull ? currency?.domain : null,
        tenant: !tenant.isNull ? tenant?.domain : null,
        landlord: !landlord.isNull ? landlord?.domain : null,
        apartment: !apartment.isNull ? apartment?.domain : null,
        expireAt: expireAt,
        renewedAt: renewedAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
