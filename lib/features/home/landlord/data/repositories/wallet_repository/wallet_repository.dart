library property_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_repository.g.dart';

@singleton
@RestApi()
abstract class WalletRepository {
  @factoryMethod
  factory WalletRepository(Dio dio) = _WalletRepository;
}
