library debit_card_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/home/tenant/data/models/index.dart';
import 'package:retrofit/retrofit.dart';

part 'debit_card_repository.g.dart';

@singleton
@RestApi()
abstract class DebitCardRepository {
  @factoryMethod
  factory DebitCardRepository(Dio dio) = _DebitCardRepository;

  @GET("/tenant/card")
  Future<List<CardData>> all();

  @POST("/tenant/card")
  Future<CardDTO> store(
    @Body() CardDTO dto,
  );

  @POST("/tenant/card/verify")
  Future<CardVerificationDTO> verify(
    @Body() CardDTO dto,
  );

  // @DELETE("/tenant/maintenance/{id}")
  // Future<MaintenanceDTO> delete(@Path("id") int id);
}
