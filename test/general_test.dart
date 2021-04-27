import 'dart:convert';

import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:test/test.dart';

import 'fixtures/fixture_reader.dart';

void main() {
  test('landlord property dto  - serialization', () {
    String dataString = fixture("landlord_property_dto.json");
    LandlordPropertyDTO dto =
        LandlordPropertyDTO.fromJson(jsonDecode(dataString));

    print(dto);
  });

  test('landlord property dto list  - serialization', () {
    String dataString = fixture("landlord_property_dto_list.json");
    LandlordPropertyDTOList list =
        LandlordPropertyDTOList.fromJson(jsonDecode(dataString));

    print(list);
  });
}
