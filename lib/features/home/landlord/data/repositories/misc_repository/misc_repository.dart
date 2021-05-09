library misc_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:retrofit/retrofit.dart';

part 'misc_repository.g.dart';

@singleton
@RestApi()
abstract class MiscRepository {
  @factoryMethod
  factory MiscRepository(Dio dio) = _MiscRepository;

  @GET("/countries")
  Future<CountriesDTO> fetchCountries();

  @GET("/currencies")
  Future<CurrencyListDTO> fetchCurrencies();

  @GET("/services")
  Future<MaintenanceServiceDTOList> fetchServices();
}
