import 'package:uuid/uuid.dart';

class UniqueId {
  final String value;

  factory UniqueId() {
    // Grants true uniqueness
    return UniqueId._(Uuid().v1());
  }

  factory UniqueId.v4() {
    // Grants true uniqueness
    return UniqueId._(Uuid().v4());
  }

  factory UniqueId.fromExternal(String id) {
    // Here, we'll just have to trust what's coming in from the server :)
    assert(id != null);
    return UniqueId._(id);
  }

  const UniqueId._(this.value);
}
