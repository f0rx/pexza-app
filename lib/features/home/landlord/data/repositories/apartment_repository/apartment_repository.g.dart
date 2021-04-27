// GENERATED CODE - DO NOT MODIFY BY HAND

part of apartment_repository.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApartmentRepository implements ApartmentRepository {
  _ApartmentRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<LandlordApartmentListDTO> all() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/apartment',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LandlordApartmentListDTO.fromJson(_result.data);
    return value;
  }

  @override
  Future<LandlordApartmentListDTO> allApartmentsForProperty(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/property/$id/apartments',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LandlordApartmentListDTO.fromJson(_result.data);
    return value;
  }

  @override
  Future<LandlordApartmentDTO> create(dto) async {
    ArgumentError.checkNotNull(dto, 'dto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(dto?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/apartment',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LandlordApartmentDTO.fromJson(_result.data);
    return value;
  }

  @override
  Future<LandlordApartmentDTO> show(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/apartment/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LandlordApartmentDTO.fromJson(_result.data);
    return value;
  }

  @override
  Future<LandlordApartmentDTO> update(id, dto) async {
    ArgumentError.checkNotNull(id, 'id');
    ArgumentError.checkNotNull(dto, 'dto');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(dto?.toJson() ?? <String, dynamic>{});
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/apartment/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LandlordApartmentDTO.fromJson(_result.data);
    return value;
  }

  @override
  Future<LandlordApartmentDTO> delete(id) async {
    ArgumentError.checkNotNull(id, 'id');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/landlord/apartment/$id',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'DELETE',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LandlordApartmentDTO.fromJson(_result.data);
    return value;
  }
}
