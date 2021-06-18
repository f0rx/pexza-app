library invoice.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';

part 'invoice.freezed.dart';

@freezed
@immutable
abstract class Invoice implements _$Invoice {
  const Invoice._();

  const factory Invoice({
    /// Invoice ID
    @nullable UniqueId<int> id,

    /// Metadata assoc. with invoice
    @nullable InvoiceMeta meta,

    /// User e-mail address that owns this card
    @nullable EmailAddress email,

    /// Amount to charge for invoice
    @nullable AmountField amount,

    /// Assignment duration
    @nullable UniqueId<int> duration,

    /// Assignment ID
    @nullable UniqueId<int> assignmentId,

    /// Invoice status [generated, failed...]
    @nullable InvoiceStatus invoiceStatus,

    /// Invoice Number
    @nullable UniqueId<String> invoiceNo,

    /// Date model was created
    @nullable DateTime createdAt,

    /// Date model was updated
    @nullable DateTime updatedAt,

    /// Date model was deleted
    @nullable DateTime deletedAt,
  }) = _Invoice;
}
