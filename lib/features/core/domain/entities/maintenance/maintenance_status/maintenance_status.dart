library maintenance_status.dart;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';

part 'maintenance_status.g.dart';

class MaintenanceStatus extends EnumClass {
  static const MaintenanceStatus fixed = _$fixed;
  @BuiltValueEnumConst(fallback: true)
  static const MaintenanceStatus unfixed = _$unfixed;
  static const MaintenanceStatus pending = _$pending;

  const MaintenanceStatus._(String name) : super(name);

  static BuiltSet<MaintenanceStatus> get values => _$maintenanceStatusValues;

  static MaintenanceStatus valueOf(String name) =>
      _$maintenanceStatusValueOf(name);

  T fold<T>({
    T Function() fixed,
    T Function() pending,
    T Function() unfixed,
    T Function() orElse,
  }) {
    switch (this.name) {
      case "fixed":
        return fixed?.call() ?? orElse?.call();
      case "pending":
        return pending?.call() ?? orElse?.call();
      case "unfixed":
        return unfixed?.call() ?? orElse?.call();
      default:
        return orElse?.call();
    }
  }
}
