library invoice_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'invoice_status.g.dart';

class InvoiceStatus extends EnumClass {
  static const InvoiceStatus generated = _$generated;
  static const InvoiceStatus pending = _$pending;
  @BuiltValueEnumConst(fallback: true)
  static const InvoiceStatus failed = _$failed;

  const InvoiceStatus._(String name) : super(name);

  static BuiltSet<InvoiceStatus> get values => _$invoiceStatusValues;

  static InvoiceStatus valueOf(String name) => _$invoiceStatusValueOf(name);

  T fold<T>({
    T Function(String) generated,
    T Function(String) pending,
    T Function(String) failed,
  }) {
    switch (this.name) {
      case "generated":
        return generated?.call(this.name);
      case "pending":
        return pending?.call(this.name);
      case "failed":
      default:
        return failed?.call(this.name);
    }
  }
}
