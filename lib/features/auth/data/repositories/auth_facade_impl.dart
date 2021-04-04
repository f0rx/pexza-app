import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/token_response/token_response.dart';
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/auth/data/models/auth_failure.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/core/domain/entities/user/user.dart';
import 'package:pexza/features/core/domain/entities/fields/phone/phone.dart';
import 'package:pexza/features/core/domain/entities/fields/password.dart';
import 'package:pexza/features/core/domain/entities/fields/gender/gender.dart';
import 'package:pexza/features/core/domain/entities/fields/email_address.dart';
import 'package:pexza/features/core/domain/entities/fields/display_name.dart';
import 'package:pexza/features/core/domain/entities/fields/date_time_field.dart';
import 'package:pexza/utils/utils.dart';

@LazySingleton(as: AuthFacade)
class AuthFacadeImplementation extends AuthFacade {
  final DataConnectionChecker _connectionChecker;
  final Dio _dio;
  final AccessTokenManager _tokenManager;
  StreamController<Option<User>> __controller;

  AuthFacadeImplementation(
    this._connectionChecker,
    this._dio,
    this._tokenManager,
  ) : __controller = StreamController.broadcast();

  @override
  void sink([Option<User> user]) {
    __controller.sink.add(user ?? currentUser);
  }

  @override
  Option<User> get currentUser {
    final box = App.box<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);
    if (box.isNotEmpty) return some(box.get(Keys.HIVE_USER_KEY)?.domain);
    return none();
  }

  @override
  Stream<Option<User>> get onAuthStateChanged => __controller.stream;

  @override
  Future<Either<AuthFailure, Unit>> createAccount({
    @required Role role,
    @required DisplayName firstName,
    @required DisplayName lastName,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Gender gender,
    @required DateTimeField dateOfBirth,
    @required Password password,
  }) async {
    final UserDTO newUser = UserDTO.fromDomain(User(
      firstName: firstName,
      lastName: lastName,
      email: emailAddress,
      phone: phone,
      gender: gender,
      age: dateOfBirth,
      password: password,
    ));
    // Prepare form data
    FormData data = FormData.fromMap(newUser.toJson());

    try {
      // Register a new Landlord / Tenant
      await role.fold(
        landlord: () => _dio.post(EndPoints.LANDLORD_REGISTER, data: data),
        tenant: () => _dio.post(EndPoints.TENANT_REGISTER, data: data),
      );

      // Automatically Login new User
      await this.login(phone: phone, password: password, role: role);

      return right(unit);
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          log.e(ex);
          // retry(ex.request);
          break;
        default:
          return left(
            AuthFailure.fromJson(ex.response.data).copyWith(
              code: ex.response.statusCode.toString(),
            ),
          );
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> login({
    @required Role role,
    @required Phone phone,
    @required Password password,
  }) async {
    final UserDTO dto = UserDTO.fromDomain(User(
      phone: phone,
      password: password,
    ));

    FormData data = FormData.fromMap(dto.toJson());

    try {
      // Attempt Authentication
      final _response = await role.fold(
        landlord: () => _dio.post(EndPoints.LANDLORD_LOGIN, data: data),
        tenant: () => _dio.post(EndPoints.TENANT_LOGIN, data: data),
      );

      // Save Token to Box
      _tokenManager.save(responseToken: TokenResponse.fromJson(_response.data));

      final box = App.box<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);

      // Retrieve updated user data from source
      final _freshUserData = (await this.fetchUser()).getOrElse(() => null);

      box.put(Keys.HIVE_USER_KEY, _freshUserData);

      sink(currentUser);

      return right(unit);
    } on AuthFailure catch (ex) {
      return left(ex);
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          log.e(ex);
          // retry(ex.request);
          break;
        default:
          return left(
            AuthFailure.fromJson(ex.response.data).copyWith(
              code: ex.response.statusCode.toString(),
            ),
          );
      }
    }
  }

  @override
  Future<Either<AuthFailure, TokenResponse>> refreshAccessToken() async {
    // Get User Box
    final box = App.box<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);
    // Get stored data
    UserDTO stored = box.get(Keys.HIVE_USER_KEY);

    try {
      final _response = await _dio.post(
        EndPoints.TENANT_LOGIN,
        data: FormData.fromMap(stored.toJson()),
      );

      final _token = TokenResponse.fromJson(_response.data);

      // Save Token to Box
      _tokenManager.save(
        responseToken: _token,
      );

      return right(_token);
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          log.e(ex);
          // retry(ex.request);
          break;
        default:
          return left(
            AuthFailure.fromJson(ex.response.data).copyWith(
              code: ex.response.statusCode.toString(),
            ),
          );
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(EmailAddress email) {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> confirmPasswordReset({
    String code,
    Password newPassword,
  }) {
    // TODO: implement confirmPasswordReset
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    try {
      await _dio.post(EndPoints.LOGOUT);

      final box = App.box<UserDTO>(Keys.HIVE_BOX_USER_DTO_KEY);
      final accessTokenBox = App.box<String>(Keys.HIVE_BOX_ACCESS_TOKEN_KEY);

      // box.clear();
      box.delete(Keys.HIVE_USER_KEY);
      accessTokenBox.delete(Keys.HIVE_ACCESS_TOKEN_KEY);
      accessTokenBox.clear();

      sink();
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          log.e(ex);
          break;
        default:
          return left(
            AuthFailure.fromJson(ex.response.data).copyWith(
              code: ex.response.statusCode.toString(),
            ),
          );
      }
    }
  }

  Future<Either<AuthFailure, UserDTO>> fetchUser() async {
    try {
      final _response = await _dio.get(EndPoints.GET_USER);

      return right(UserDTO.fromJson(_response.data['data']).copyWith(
        id: "${_response.data['data']['id']}",
      ));
    } on DioError catch (ex) {
      switch (ex.type) {
        case DioErrorType.CONNECT_TIMEOUT:
          log.e(ex);
          // retry(ex.request);
          break;
        default:
          return left(
            AuthFailure.fromJson(ex.response.data).copyWith(
              code: ex.response.statusCode.toString(),
            ),
          );
      }
    }
  }
}
