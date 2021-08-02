library transaction_history_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:retrofit/retrofit.dart';

part 'transaction_history_repository.g.dart';

@singleton
@RestApi()
abstract class TransactionHistoryRepository {
  @factoryMethod
  factory TransactionHistoryRepository(Dio dio) = _TransactionHistoryRepository;

  @GET("/landlord/withdraw/history")
  Future<WithdrawalHistoryDTO> landlordWithdrawalHistory();

  @GET("/landlord/property/rent-history/{id}")
  Future<PropertyRentHistoryListDTO> landlordPropertyRentHistory(
    @Path("id") int id,
  );

  @GET("/tenant/payment/history")
  Future<void> tenantPaymentHistory();
}
