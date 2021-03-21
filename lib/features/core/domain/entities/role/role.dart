import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/widgets.dart';

part 'role.g.dart';

class Role extends EnumClass {
  static const Role parent = _$parent;
  static const Role student = _$student;
  static const Role admin = _$admin;

  const Role._(String name) : super(name);

  static BuiltSet<Role> get values => _$values;

  static BuiltList<Role> get list => _$values.toBuiltList();

  static Role valueOf(String name) => _$valueOf(name);

  bool get isParent => this.name == parent.name;

  bool get isStudent => this.name == student.name;

  bool get isAdmin => this.name == admin.name;

  T fold<T>({
    T Function() parent,
    T Function() student,
    T Function() admin,
  }) {
    switch (name) {
      case "parent":
        return parent != null ? parent() : null;
      case "student":
        return student != null ? student() : null;
      case "admin":
        return admin != null ? admin() : null;
      default:
        return (T is Widget) ? SizedBox() as T : null;
    }
  }
}
