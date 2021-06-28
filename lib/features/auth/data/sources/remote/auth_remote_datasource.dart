import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/auth_response.dart';
import 'package:pexza/features/core/core.dart' hide Response;
import 'package:pexza/utils/utils.dart';

@singleton
class AuthRemoteDatasource {
  final Dio _dio;

  AuthRemoteDatasource(this._dio);

  Future<Response<dynamic>> createUserAccount(UserDTO dto) async {
    // Generate Form Data for request
    final FormData data = FormData.fromMap(dto.toJson());

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
    final FormData data = FormData.fromMap(dto.toJson());

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
    final FormData data = FormData.fromMap(dto.toJson());

    // Perform POST request based on role / user_type
    return _dio.post(
      EndPoints.VERIFY,
      data: data,
    );
  }

  Future<Response<dynamic>> resendVerificationEmail(String email) async {
    // Convert data to DTO
    final UserDTO dto = UserDTO(email: email);

    // Generate Form Data for request
    final FormData data = FormData.fromMap(dto.toJson());

    // Perform POST request based on role / user_type
    return _dio.post(
      EndPoints.RESEND_VERIFICATION,
      data: data,
    );
  }

  Future<Response<dynamic>> sendPasswordResetEmail(
    String email,
  ) async {
    // Convert data to DTO
    final UserDTO dto = UserDTO(email: email);

    // Generate Form Data for request
    final FormData data = FormData.fromMap(dto.toJson());

    // Perform request to send password reset email
    return _dio.post(
      EndPoints.SEND_PASSWORD_RESET_EMAIL,
      data: data,
    );
  }

  Future<Response<dynamic>> confirmPasswordReset({
    @required String code,
    @required String email,
    @required String newPassword,
  }) async {
    // Convert data to DTO
    final UserDTO dto = UserDTO(
      email: email,
      token: code,
      password: newPassword,
    );

    // Generate Form Data for request
    final FormData data = FormData.fromMap(dto.toJson());

    // Perform request to reset user's password
    return _dio.post(
      EndPoints.CONFIRM_PASSWORD_RESET,
      data: data,
    );
  }

  Future<Response<dynamic>> updateProfile(UserDTO dto) {
    // Generate Form Data for request
    final FormData data = FormData.fromMap(dto.toJson());

    // Perform PUT request to update user's profile
    return _dio.put(
      EndPoints.UPDATE_USER_PROFILE,
      data: data,
    );
  }

  Future<Response<dynamic>> updateProfilePhoto(File file) async {
    // Create a new [MultipartFile].
    final MultipartFile part = await MultipartFile.fromFile("${file?.path}");

    // Generate Form Data for request
    final FormData data = FormData.fromMap({
      "image": part,
    });

    return _dio.post(
      EndPoints.UPDATE_USER_PHOTO,
      data: data,
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
  }

  Future<dynamic> signOut() async {
    return await _dio.post(EndPoints.LOGOUT);
  }

  Future<Either<AuthResponse, UserDTO>> fetchUserInfo([
    Future<void> Function() callback,
  ]) async {
    try {
      final _response = await _dio.get(EndPoints.GET_USER);

      return right(UserDTO.fromJson(_response?.data['data']));
    } on DioError catch (e) {
      // If callback is not-null, call the method
      await callback?.call();

      switch (e.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          return left(AuthResponse.timeout());
        case DioErrorType.RECEIVE_TIMEOUT:
          return left(AuthResponse.receiveTimeout());
        case DioErrorType.RESPONSE:
          return left(
            AuthResponse.fromJson(
              e.response.data,
            ).copyWith(code: e.response?.data['code'] ?? e.response.statusCode),
          );
        case DioErrorType.SEND_TIMEOUT:
          return left(AuthResponse.timeout());
        case DioErrorType.DEFAULT:
        default:
          env.flavor.fold(dev: () {
            log.wtf(e?.error);
            log.wtf(e?.request?.receiveTimeout);
            log.wtf(e?.request?.path);
            log.wtf(e?.response?.data);
            log.wtf(e?.response?.statusCode);
            log.wtf(e?.response?.statusMessage);
          });
          return left(AuthResponse.unknownFailure());
      }
    }
  }
}
