import 'package:pexza/features/core/core.dart';

abstract class BaseApartment {
  UniqueId<int> get id;
  BasicTextField<String> get name;
  ApartmentStatus get status;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime get deletedAt;
}
