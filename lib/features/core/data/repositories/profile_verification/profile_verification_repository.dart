library profile_verification_repository.dart;

import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_verification_repository.g.dart';

@singleton
@RestApi()
abstract class ProfileVerificationRepository {
  @factoryMethod
  factory ProfileVerificationRepository(Dio dio) =
      _ProfileVerificationRepository;

  @POST("/user/verify")
  @MultiPart()
  @Headers(<String, dynamic>{'content-type': 'multipart/form-data'})
  Future<void> uploadDocument(
    @Part(name: "type") String type,
    @Part(name: "document") File document,
  );
}
