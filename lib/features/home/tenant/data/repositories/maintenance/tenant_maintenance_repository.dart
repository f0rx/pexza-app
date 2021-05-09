library tenant_maintenance_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pexza/features/core/data/models/maintenance/index.dart';

part 'tenant_maintenance_repository.g.dart';

@singleton
@RestApi()
abstract class TenantMaintenanceRepository {
  @factoryMethod
  factory TenantMaintenanceRepository(Dio dio) = _TenantMaintenanceRepository;

  @GET("/tenant/maintenance")
  Future<MaintenanceDTOList> all();

  @POST("/tenant/maintenance")
  Future<MaintenanceDTO> create(@Body() MaintenanceDTOData data);

  @GET("/tenant/maintenance/{id}")
  Future<MaintenanceDTO> show(@Path("id") int id);

  @PUT("/tenant/maintenance/{id}")
  Future<MaintenanceDTO> update(
    @Path("id") int id,
    @Body() MaintenanceDTOData data,
  );

  @DELETE("/tenant/maintenance/{id}")
  Future<MaintenanceDTO> delete(@Path("id") int id);
}
