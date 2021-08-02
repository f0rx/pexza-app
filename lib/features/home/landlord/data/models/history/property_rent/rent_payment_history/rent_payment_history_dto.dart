library rent_payment_history_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'rent_payment_history_dto.freezed.dart';
part 'rent_payment_history_dto.g.dart';

@freezed
@immutable
abstract class RentPaymentHistoryDTO implements _$RentPaymentHistoryDTO {
  const RentPaymentHistoryDTO._();

  const factory RentPaymentHistoryDTO({
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int id,
    @nullable
    @JsonKey(includeIfNull: false, name: 'user_id')
    @IntegerSerializer()
        int userId,
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int duration,
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int currency,
    @nullable
    @JsonKey(includeIfNull: false, name: 'amount')
    @DoubleSerializer()
        double totalAmount,
    @nullable
    @JsonKey(includeIfNull: false, name: 'base_amount')
    @IntegerSerializer()
        int amount,
    @nullable @JsonKey(includeIfNull: false) @DoubleSerializer() double charges,
    @nullable
    @JsonKey(includeIfNull: false, name: 'assignment_id')
    @IntegerSerializer()
        int assignmentId,
    @nullable
    @JsonKey(includeIfNull: false, name: 'invoice_id')
    @IntegerSerializer()
        int invoiceId,
    @nullable
    @JsonKey(includeIfNull: false, name: 'chargeable_id')
    @IntegerSerializer()
        int chargeableId,
    @nullable
    @JsonKey(includeIfNull: false, name: 'invoice_no', defaultValue: '')
    @IntegerSerializer()
        String invoiceNumber,
    @nullable @JsonKey(includeIfNull: false) InvoiceDTO invoice,
    @nullable
    @JsonKey(includeIfNull: false, name: "effective_from")
    @TimestampConverter()
        DateTime effeciveFrom,
    @nullable
    @JsonKey(includeIfNull: false, name: "expire_at")
    @TimestampConverter()
        DateTime expiresAt,
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
  }) = _RentPaymentHistoryDTO;

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_RentPaymentHistoryDTOToJson(this);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory RentPaymentHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$RentPaymentHistoryDTOFromJson(json);

  /// Maps the Data Transfer Object to a LandlordRentPaymentHistory Object.
  LandlordRentPaymentHistory get domain => LandlordRentPaymentHistory(
        id: !id.isNull ? UniqueId.fromExternal(id) : null,
        userId: !userId.isNull ? UniqueId.fromExternal(userId) : null,
        duration: !duration.isNull ? BasicTextField(duration) : null,
        currencyId: !currency.isNull ? UniqueId.fromExternal(currency) : null,
        totalCharged: !totalAmount.isNull ? BasicTextField(totalAmount) : null,
        amount: !amount.isNull ? BasicTextField(amount) : null,
        charges: !charges.isNull ? BasicTextField(charges) : null,
        assignmentId:
            !assignmentId.isNull ? UniqueId.fromExternal(assignmentId) : null,
        invoiceId: !invoiceId.isNull ? UniqueId.fromExternal(invoiceId) : null,
        chargeableId:
            !chargeableId.isNull ? UniqueId.fromExternal(chargeableId) : null,
        invoiceNo:
            !invoiceNumber.isNull ? UniqueId.fromExternal(invoiceNumber) : null,
        invoice: invoice?.domain,
        effectiveFrom: effeciveFrom,
        expiresOn: expiresAt,
        createdAt: createdAt,
        updatedAt: updatedAt,
        deletedAt: deletedAt,
      );
}
