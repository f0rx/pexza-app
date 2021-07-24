// GENERATED CODE - DO NOT MODIFY BY HAND

part of property_repository.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WithdrawalRepository implements WithdrawalRepository {
  _WithdrawalRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<BankDTOList> banks() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/banks',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BankDTOList.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<BankAccountData>> bankAccounts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('/landlord/bank',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => BankAccountData.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<BankAccountData> walletBalance() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/wallet/balance',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BankAccountData.fromJson(_result.data);
    return value;
  }

  @override
  Future<BankDataModel> getBankById(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/banks/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BankDataModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<BankAccountDTO> storeBankAccount(dto) async {
    ArgumentError.checkNotNull(dto, 'dto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(dto?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>('/landlord/bank',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BankAccountDTO.fromJson(_result.data);
    return value;
  }

  @override
  Future<AccountVerificationDTO> verifyBankAccount(dto) async {
    ArgumentError.checkNotNull(dto, 'dto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(dto?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/bank/verify',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AccountVerificationDTO.fromJson(_result.data);
    return value;
  }

  @override
  Future<LandlordSuccess> withdraw(dto) async {
    ArgumentError.checkNotNull(dto, 'dto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(dto?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/withdraw',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LandlordSuccess.fromJson(_result.data);
    return value;
  }
}
