import 'dart:convert';

import 'package:logger/logger.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart';
import 'package:pexza/features/home/tenant/presentation/managers/index.dart';
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

  test('maintenance request - serialization & deserialization', () {
    String maintenanceListJson = fixture("maintenance_list.json");

    final list = MaintenanceDTOList.fromJson(jsonDecode(maintenanceListJson));

    final _dto = MaintenanceDTOData.fromDomain(Maintenance(
      comment: BasicTextField(
          "I require a fix on Room 13 pls. I actually cannot sleeep. Not cool bro"),
      service: MaintenanceService(id: UniqueId.fromExternal(1)),
      urgency: BasicTextField(1),
      assignment: Assignment(id: UniqueId.fromExternal(34034)),
      status: MaintenanceStatus.pending,
    ));

    Logger().wtf(list?.data?.length);
    Logger().wtf(_dto.toJson());
  });

  test('assignment - serialization & deserialization', () async {
    String assignmentJson = fixture("assignment.json");

    final assignment = AssignmentDTO.fromJson(jsonDecode(assignmentJson));

    final _dto = AssignmentDTOData.fromDomain(Assignment(
      pairingCode: BasicTextField("5Tu3js"),
    ));

    Logger().wtf(assignment.domain(true).apartment);
    Logger().wtf(assignment.domain()?.apartment);
    Logger().wtf(_dto.toJson());
  });
}
