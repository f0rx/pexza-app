// GENERATED CODE - DO NOT MODIFY BY HAND

part of profile_verification_repository.dart;

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ProfileVerificationRepository implements ProfileVerificationRepository {
  _ProfileVerificationRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<void> uploadDocument(type, document) async {
    ArgumentError.checkNotNull(type, 'type');
    ArgumentError.checkNotNull(document, 'document');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = FormData();
    if (type != null) {
      _data.fields.add(MapEntry('type', type));
    }
    _data.files.add(MapEntry(
        'document',
        MultipartFile.fromFileSync(document.path,
            filename: document.path.split(Platform.pathSeparator).last)));
    await _dio.request<void>('/user/verify',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'content-type': 'multipart/form-data'},
            extra: _extra,
            contentType: 'multipart/form-data',
            baseUrl: baseUrl),
        data: _data);
    return null;
  }
}
