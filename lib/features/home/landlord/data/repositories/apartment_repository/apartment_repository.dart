library apartment_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:retrofit/retrofit.dart';

part 'apartment_repository.g.dart';

@injectable
@RestApi()
abstract class ApartmentRepository {
  @factoryMethod
  factory ApartmentRepository(Dio dio) = _ApartmentRepository;

  @GET("/landlord/apartment")
  Future<LandlordApartmentListDTO> all();

  @GET("/landlord/property/{id}/apartments")
  Future<LandlordApartmentListDTO> allApartmentsForProperty(@Path("id") int id);

  @POST("/landlord/assignment")
  Future<ApartmentMergerDTO> assignTenantToApartment(
    @Body() ApartmentMergerData dto,
  );

  @POST("/landlord/apartment")
  Future<LandlordApartmentDTO> create(
    @Body() LandlordApartmentData dto,
  );

  @GET("/landlord/apartment/{id}")
  Future<LandlordApartmentDTO> show(@Path("id") int id);

  @PUT("/landlord/apartment/{id}")
  Future<LandlordApartmentDTO> update(
    @Path() int id,
    @Body() LandlordApartmentData dto,
  );

  @DELETE("/landlord/apartment/{id}")
  Future<LandlordApartmentDTO> delete(@Path() int id);
}
