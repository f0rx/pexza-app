import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/widgets.dart';

part 'role.g.dart';

class Role extends EnumClass {
  static const Role landlord = _$landlord;
  @BuiltValueEnumConst(fallback: true)
  static const Role tenant = _$tenant;
  static const Role admin = _$admin;

  const Role._(String name) : super(name);

  static BuiltSet<Role> get values => _$values;

  static BuiltList<Role> get list => _$values.toBuiltList();

  static Role valueOf(String name) => _$valueOf(name);

  bool get isLandlord => this.name == landlord.name;

  bool get isTenant => this.name == tenant.name;

  bool get isAdmin => this.name == admin.name;

  T fold<T>({
    T Function() landlord,
    T Function() tenant,
    T Function() admin,
  }) {
    switch (name) {
      case "landlord":
        return landlord?.call();
      case "tenant":
        return tenant?.call();
      case "admin":
        return admin?.call();
      default:
        return (T is Widget) ? SizedBox() as T : null;
    }
  }
}
