library invoice_meta.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';

part 'invoice_meta.freezed.dart';

@freezed
@immutable
abstract class InvoiceMeta implements _$InvoiceMeta {
  const InvoiceMeta._();

  const factory InvoiceMeta({
    @nullable bool isSamplePayment,
    @nullable UniqueId<int> chargeableId,
    @nullable BasicTextField<String> description,
    @nullable DebitCardNumber cardNumber,
    @nullable UniqueId<String> invoiceNo,
  }) = _InvoiceMeta;
}
