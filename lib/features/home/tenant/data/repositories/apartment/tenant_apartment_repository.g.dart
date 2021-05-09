// GENERATED CODE - DO NOT MODIFY BY HAND

part of tenant_apartment_repository.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _TenantApartmentRepository implements TenantApartmentRepository {
  _TenantApartmentRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<TenantApartmentDTOList> all() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/tenant/apartment',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = TenantApartmentDTOList.fromJson(_result.data);
    return value;
  }

  @override
  Future<TenantApartmentDTO> show(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/tenant/apartment/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = TenantApartmentDTO.fromJson(_result.data);
    return value;
  }
}
