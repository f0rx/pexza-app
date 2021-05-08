library property_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:retrofit/retrofit.dart';

part 'property_repository.g.dart';

@injectable
@RestApi()
abstract class PropertyRepository {
  @factoryMethod
  factory PropertyRepository(Dio dio) = _PropertyRepository;

  @GET("/landlord/property")
  Future<LandlordPropertyDTOList> all();

  @POST("/landlord/property")
  Future<LandlordPropertyDTO> create(
    @Body() LandlordPropertyData dto,
  );

  @GET("/landlord/property/{id}")
  Future<LandlordPropertyDTO> show(@Path("id") int id);

  @PUT("/landlord/property/{id}")
  Future<LandlordPropertyDTO> update(
    @Path() int id,
    @Body() LandlordPropertyData dto,
  );

  @DELETE("/landlord/property/{id}")
  Future<LandlordPropertyDTO> delete(@Path() int id);
}
