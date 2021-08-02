library withdrawal_repository.dart;

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/home/landlord/data/models/export.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:retrofit/retrofit.dart';

part 'withdrawal_repository.g.dart';

@singleton
@RestApi()
abstract class WithdrawalRepository {
  @factoryMethod
  factory WithdrawalRepository(Dio dio) = _WithdrawalRepository;

  @GET("/banks")
  Future<BankDTOList> banks();

  @GET("/landlord/bank")
  Future<List<BankAccountData>> bankAccounts();

  @GET("/landlord/wallet/balance")
  Future<BankAccountData> walletBalance();

  @GET("/banks/{id}")
  Future<BankDataModel> getBankById(@Path("id") int id);

  @POST("/landlord/bank")
  Future<BankAccountDTO> storeBankAccount(@Body() AccountDetailDTO dto);

  @POST("/landlord/bank/verify")
  Future<AccountVerificationDTO> verifyBankAccount(
    @Body() AccountDetailDTO dto,
  );

  @POST("/landlord/withdraw")
  Future<LandlordSuccess> withdraw(@Body() WalletDTO dto);
}
