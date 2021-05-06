import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/merger/apartment_merger.dart';
import 'package:pexza/features/home/landlord/domain/entities/payment/index.dart';
import 'package:test/test.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  // test('landlord property dto  - serialization', () {
  //   String dataString = fixture("landlord_property_dto.json");
  //   LandlordPropertyDTO dto =
  //       LandlordPropertyDTO.fromJson(jsonDecode(dataString));

  //   print(dto);
  // });

  // test('landlord property dto list  - serialization', () {
  //   String dataString = fixture("landlord_property_dto_list.json");
  //   LandlordPropertyDTOList list =
  //       LandlordPropertyDTOList.fromJson(jsonDecode(dataString));

  //   print(list);
  // });

  test('landlord merger dto  - serialization', () {
    String dataString = fixture("apartment_merger_dto.json");
    final _data = ApartmentMergerData.fromDomain(ApartmentMerger(
      emailAddress: EmailAddress("brendan-white@forx.anonaddy.com"),
      apartment: LandlordApartment(id: UniqueId.fromExternal(89)),
      duration: 4,
      plan: PaymentPlan.yearly,
      currency: Currency(id: UniqueId<int>.fromExternal(4)),
      amount: AmountField(5000),
    ));

    ApartmentMergerDTO dto =
        ApartmentMergerDTO.fromJson(jsonDecode(dataString));

    Logger().wtf(dto?.domain?.amount);
    Logger().wtf(dto?.domain?.plan);
    Logger().wtf(dto?.domain?.createdAt);
    print(
        "===================================================================");
    Logger().wtf(_data.toJson());
  });
}
