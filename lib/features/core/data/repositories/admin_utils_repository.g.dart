// GENERATED CODE - DO NOT MODIFY BY HAND

part of admin_utils_repository.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AdminUtilsRepository implements AdminUtilsRepository {
  _AdminUtilsRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<void> resetDatabase() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    await _dio.request<void>('/setup-db',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    return null;
  }
}
