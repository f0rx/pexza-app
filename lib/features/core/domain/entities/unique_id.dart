import 'dart:math' as Math;
import 'package:uuid/uuid.dart';

class UniqueId<T> {
  final T value;

  factory UniqueId() {
    // Grants true uniqueness
    return UniqueId._(Uuid().v1() as T);
  }

  factory UniqueId.v4() {
    // Grants true uniqueness
    return UniqueId._(Uuid().v4() as T);
  }

  factory UniqueId.fromExternal(T id) {
    // Here, we'll just have to trust what's coming in from the server :)
    assert(id != null);
    return UniqueId._(id);
  }

  factory UniqueId.int([int min = 0, int max = 100]) {
    return UniqueId._(min + Math.Random.secure().nextInt(max - min) as T);
  }

  const UniqueId._(this.value);

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is UniqueId && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => "UniqueId(id: $value)";
}
