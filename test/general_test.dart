import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/merger/apartment_merger.dart';
import 'package:pexza/features/home/landlord/domain/entities/payment/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
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

    ApartmentMergerDTO dto =
        ApartmentMergerDTO.fromJson(jsonDecode(dataString));
  });

  test('countries and currency  - serialization', () {
    String countriesJson = fixture("countries.json");
    String currenciesJson = fixture("currencies.json");

    final currencies = CurrencyListDTO.fromJson(jsonDecode(currenciesJson));
    final countries = CountriesDTO.fromJson(jsonDecode(countriesJson));

    Logger().wtf(currencies);
    Logger().wtf(countries);
  });

  test('server validation error  - serialization', () {
    String errorsJson = fixture("server_validation_error.json");

    final errors = ServerFieldErrors.fromJson(jsonDecode(errorsJson)['errors']);
    final failure = LandlordFailure.fromJson(jsonDecode(errorsJson));

    Logger().wtf(failure);
  });
}
