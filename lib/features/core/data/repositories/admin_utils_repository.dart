library admin_utils_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'admin_utils_repository.g.dart';

@singleton
@RestApi()
abstract class AdminUtilsRepository {
  @factoryMethod
  factory AdminUtilsRepository(Dio dio) = _AdminUtilsRepository;

  @GET("/setup-db")
  Future<void> resetDatabase();
}
