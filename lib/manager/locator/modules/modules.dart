import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class Modules {
  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();

  @preResolve
  Future<FirebaseApp> get firebaseApp => Firebase.initializeApp();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
}

@module
abstract class ServiceModules {
  @preResolve
  Future<Dio> get dio async => await _DioInstance._instance();

  @lazySingleton
  Connectivity get connectionStatus => Connectivity();
}

class _DioInstance {
  static final BaseOptions _options = BaseOptions(
    baseUrl: env.baseUri.toString(),
    contentType: "application/json",
    headers: {"Accept": "application/json"},
  );

  static Future<Dio> _instance() async {
    Dio dio = Dio(_options);

    dio.options.connectTimeout = 8000;

    dio.options.receiveTimeout = 8000;

    dio.interceptors.add(
      DioCacheManager(
        CacheConfig(baseUrl: env.baseUri.path),
      ).interceptor,
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 100,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options) async {
          // log.wtf("Attach bearer token to every request");
          log.i("Access token => ${getIt<AccessTokenManager>().fetch()}");
          options.headers["Authorization"] =
              getIt<AccessTokenManager>().fetch();
          return options;
        },
        onError: (error) async {
          switch (error.response.statusCode) {
            case 401:
            case 403:
              dio.interceptors.requestLock.lock();
              dio.interceptors.responseLock.lock();

              // final _facade = getIt<AuthFacade>();

              // await _facade.refreshAccessToken();
              // await _facade.retry(error.request);

              dio.interceptors.requestLock.unlock();
              dio.interceptors.responseLock.unlock();
              return error;
            default:
              return error;
          }
        },
      ),
    );

    return dio;
  }
}
