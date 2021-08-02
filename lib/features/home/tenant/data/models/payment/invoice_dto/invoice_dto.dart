library invoice_dto.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/core/domain/entities/payment/index.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:pexza/manager/serializer/serializers.dart';
import 'package:pexza/utils/utils.dart';

part 'invoice_dto.g.dart';
part 'invoice_dto.freezed.dart';

@freezed
@immutable
abstract class InvoiceDTO implements _$InvoiceDTO {
  const InvoiceDTO._();

  const factory InvoiceDTO({
    @nullable @JsonKey(includeIfNull: false) int id,
    @nullable @JsonKey(includeIfNull: false) PaymentMetaDTO meta,
    @nullable
    @JsonKey(includeIfNull: false, name: 'assignment_id')
    @IntegerSerializer()
        int assignmentId,
    @nullable @JsonKey(includeIfNull: false) @NumSerializer() num amount,
    @nullable
    @JsonKey(includeIfNull: false, name: 'base_amount')
    @IntegerSerializer()
        int baseAmount,
    @nullable @JsonKey(includeIfNull: false) @DoubleSerializer() double charges,
    @nullable @JsonKey(includeIfNull: false) @IntegerSerializer() int duration,
    @nullable @JsonKey(includeIfNull: false, defaultValue: '') String status,
    @nullable
    @JsonKey(includeIfNull: false, defaultValue: '', name: 'invoice_no')
        String invoiceNumber,
    @nullable
    @JsonKey(includeIfNull: false, name: "created_at")
    @TimestampConverter()
        String createdAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "updated_at")
    @TimestampConverter()
        String updatedAt,
    @nullable
    @JsonKey(includeIfNull: false, name: "deleted_at")
    @TimestampConverter()
        String deletedAt,
  }) = _InvoiceDTO;

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory InvoiceDTO.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDTOFromJson(json);

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$_$_InvoiceDTOToJson(this);

  /// Maps the Data Transfer Object to a Domain instance.
  Invoice get domain => Invoice(
        id: !id.isNull ? UniqueId.fromExternal(id) : null,
        invoiceNo:
            !invoiceNumber.isNull ? UniqueId.fromExternal(invoiceNumber) : null,
        invoiceStatus: !status.isNull ? InvoiceStatus.valueOf(status) : null,
        meta: meta?.domain,
        amount: !amount.isNull ? AmountField(amount) : null,
        baseAmount: !baseAmount.isNull ? AmountField(baseAmount) : null,
        charges: !charges.isNull ? BasicTextField(charges) : null,
        assignmentId:
            !assignmentId.isNull ? UniqueId.fromExternal(assignmentId) : null,
        duration: !duration.isNull ? UniqueId.fromExternal(duration) : null,
        createdAt: createdAt != null ? DateTime.tryParse(createdAt) : null,
        updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt) : null,
        deletedAt: deletedAt != null ? DateTime.tryParse(deletedAt) : null,
      );
}
