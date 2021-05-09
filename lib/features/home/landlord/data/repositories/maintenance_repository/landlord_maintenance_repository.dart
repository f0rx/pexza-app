library landlord_maintenance_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:retrofit/retrofit.dart';

part 'landlord_maintenance_repository.g.dart';

@injectable
@RestApi()
abstract class LandlordMaintenanceRepository {
  @factoryMethod
  factory LandlordMaintenanceRepository(Dio dio) =
      _LandlordMaintenanceRepository;

  @GET("/landlord/maintenance/all")
  Future<MaintenanceDTOList> all();

  @GET("/landlord/maintenance/apartment/{id}")
  Future<MaintenanceDTOList> allForApartment(@Path('id') int id);

  @GET("/landlord/maintenance/tenant/{id}")
  Future<MaintenanceDTOList> allForTenant(@Path('id') int id);

  @GET("/landlord/maintenance/assignment/{id}")
  Future<MaintenanceDTOList> allForAssignment(@Path('id') int id);

  @GET("/landlord/maintenance/{id}")
  Future<MaintenanceDTO> show(@Path("id") int id);

  @POST("/landlord/maintenance/update/{id}")
  Future<MaintenanceDTO> update(
    @Path() int id,
    @Body() MaintenanceDTOData dto,
  );
}
