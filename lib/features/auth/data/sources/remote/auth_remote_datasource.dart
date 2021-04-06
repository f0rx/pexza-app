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

  Future<Response<dynamic>> createUserAccount({
    @required Role role,
    @required String firstName,
    @required String lastName,
    @required String emailAddress,
    @required String phone,
    @required String gender,
    @required String age,
    @required String password,
  }) async {
    // Convert data to DTO
    final UserDTO dto = UserDTO(
      firstName: firstName,
      lastName: lastName,
      email: emailAddress,
      gender: gender,
      age: age,
      phone: phone,
      password: password,
    );
    // Generate Form Data for request
    FormData data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return await role.fold(
      landlord: () async => await _dio.post(
        EndPoints.LANDLORD_REGISTER,
        data: data,
      ),
      tenant: () async => await _dio.post(
        EndPoints.TENANT_REGISTER,
        data: data,
      ),
    );
  }

  Future<Response<dynamic>> login({
    @required Role role,
    @required String phone,
    @required String password,
  }) async {
    // Convert data to DTO
    final UserDTO dto = UserDTO(
      phone: phone,
      password: password,
    );
    // Generate Form Data for request
    FormData data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return await role.fold(
      landlord: () async => await _dio.post(
        EndPoints.LANDLORD_LOGIN,
        data: data,
      ),
      tenant: () async => await _dio.post(
        EndPoints.TENANT_LOGIN,
        data: data,
      ),
    );
  }

  Future<Response<dynamic>> sendPasswordResetEmail({
    @required Role role,
    @required String email,
  }) async {}

  Future<Response<dynamic>> confirmPasswordReset({
    @required Role role,
    @required String code,
    @required String newPassword,
  }) async {}

  Future<Response<dynamic>> refreshUserAccessToken({
    @required Role role,
    @required UserDTO userDTO,
  }) async {
    return await role.fold(
      landlord: () async => await _dio.post(
        EndPoints.LANDLORD_LOGIN,
        data: FormData.fromMap(userDTO.toJson()),
      ),
      tenant: () async => await _dio.post(
        EndPoints.TENANT_LOGIN,
        data: FormData.fromMap(userDTO.toJson()),
      ),
    );
  }

  Future<dynamic> signOut() async {
    return await _dio.post(EndPoints.LOGOUT);
  }

  Future<Either<AuthFailure, UserDTO>> fetchUserInfo() async {
    try {
      final _response = await _dio.get(EndPoints.GET_USER);

      return right(UserDTO.fromJson(_response.data['data']).copyWith(
        id: "${_response.data['data']['id']}",
      ));
    } on DioError catch (e) {
      return left(
        AuthFailure.fromJson(e.response.data).copyWith(
          code: e.response.statusCode.toString(),
        ),
      );
    }
  }

  // Future<Response<dynamic>> fetchUserInfo() async {
  //   return await _dio.get(EndPoints.GET_USER);
  // }
}
