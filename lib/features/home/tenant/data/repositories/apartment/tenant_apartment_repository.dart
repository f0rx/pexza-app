library tenant_apartment_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';

part 'tenant_apartment_repository.g.dart';

@singleton
@RestApi()
abstract class TenantApartmentRepository {
  @factoryMethod
  factory TenantApartmentRepository(Dio dio) = _TenantApartmentRepository;

  @GET("/tenant/apartment")
  Future<TenantApartmentDTOList> all();

  @GET("/tenant/apartment/{id}")
  Future<TenantApartmentDTO> show(@Path("id") int id);
}
