library tenant_assignment_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pexza/features/core/data/models/assignment/index.dart';

part 'tenant_assignment_repository.g.dart';

@singleton
@RestApi()
abstract class TenantAssignmentRepository {
  @factoryMethod
  factory TenantAssignmentRepository(Dio dio) = _TenantAssignmentRepository;

  @GET("/tenant/assignment")
  Future<AssignmentDTOList> all();

  @POST("/tenant/assignment/{id}/accept")
  Future<AssignmentDTO> accept(
    @Path("id") int id,
    @Body() AssignmentDTOData data,
  );

  @GET("/tenant/assignment/{id}/reject")
  Future<AssignmentDTO> reject(@Path("id") int id);

  @GET("/tenant/assignment/{id}/cancel")
  Future<AssignmentDTO> cancel(@Path("id") int id);

  @GET("/tenant/assignment/{id}")
  Future<AssignmentDTO> show(@Path("id") int id);
}
