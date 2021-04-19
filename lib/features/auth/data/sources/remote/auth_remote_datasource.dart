import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/auth_failure.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/utils/utils.dart';

@singleton
class AuthRemoteDatasource {
  final Dio _dio;

  AuthRemoteDatasource(this._dio);

  Future<Response<dynamic>> createUserAccount(UserDTO dto) async {
    // Generate Form Data for request
    FormData data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return await _dio.post(
      EndPoints.REGISTER,
      data: data,
    );
  }

  Future<Response<dynamic>> login({
    @required String email,
    @required String password,
  }) async {
    // Convert data to DTO
    final UserDTO dto = UserDTO(
      email: email,
      password: password,
    );
    // Generate Form Data for request
    FormData data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return await _dio.post(
      EndPoints.LOGIN,
      data: data,
    );
  }

  Future<Response<dynamic>> verifyUserEmailAddress(
    String email,
    String token,
  ) async {
    // Convert data to DTO
    final UserDTO dto = UserDTO(
      email: email,
      token: token,
    );
    // log.wtf(dto);
    // Generate Form Data for request
    FormData data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return _dio.post(
      EndPoints.VERIFY,
      data: data,
    );
  }

  Future<Response<dynamic>> sendPasswordResetEmail(
    String email,
  ) async {}

  Future<Response<dynamic>> confirmPasswordReset({
    @required String code,
    @required String newPassword,
  }) async {}

  Future<Response<dynamic>> refreshUserAccessToken({
    @required UserDTO userDTO,
  }) async {
    return await _dio.post(
      EndPoints.LOGIN,
      data: FormData.fromMap(userDTO.toJson()),
    );
  }

  Future<dynamic> signOut() async {
    return await _dio.post(EndPoints.LOGOUT);
  }

  Future<Either<AuthFailure, UserDTO>> fetchUserInfo([
    Future<void> Function() callback,
  ]) async {
    try {
      final _response = await _dio.get(EndPoints.GET_USER);

      return right(UserDTO.fromJson(_response?.data).copyWith(
        id: "${_response.data['id']}",
      ));
    } on DioError catch (e) {
      // If callback is not-null, call the method
      await callback?.call();

      switch (e.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          return left(AuthFailure.timeout());
        case DioErrorType.RECEIVE_TIMEOUT:
          return left(AuthFailure.receiveTimeout());
        // case DioErrorType.DEFAULT:
        case DioErrorType.RESPONSE:
          return left(
            AuthFailure.fromJson(e.response.data).copyWith(
              code: e.response.statusCode,
            ),
          );
        case DioErrorType.SEND_TIMEOUT:
          return left(AuthFailure.timeout());
          break;
        default:
          return left(AuthFailure.unknownFailure());
      }
    }
  }
}
