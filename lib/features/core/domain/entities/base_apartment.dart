import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

abstract class BaseApartment {
  UniqueId<int> get id;
  BasicTextField<String> get name;
  ApartmentStatus get status;
  LandlordProperty get property;
  DateTime get createdAt;
  DateTime get updatedAt;
  DateTime get deletedAt;
}
