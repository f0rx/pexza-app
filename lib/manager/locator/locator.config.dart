// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i4;
import 'package:data_connection_checker/data_connection_checker.dart' as _i5;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_core/firebase_core.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart'
    as _i3;
import 'package:pexza/features/auth/data/repositories/auth_facade_impl.dart'
    as _i17;
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart'
    as _i19;
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart'
    as _i18;
import 'package:pexza/features/auth/domain/domain.dart' as _i16;
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart'
    as _i21;
import 'package:pexza/features/auth/presentation/manager/role/role_cubit.dart'
    as _i12;
import 'package:pexza/features/auth/presentation/manager/token_verification/token_verification_cubit.dart'
    as _i14;
import 'package:pexza/features/auth/presentation/manager/watcher/auth_watcher_cubit.dart'
    as _i20;
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart'
    as _i11;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_property/landlord_property_cubit.dart'
    as _i15;
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart'
    as _i10;
import 'package:pexza/manager/locator/modules/modules.dart' as _i22;
import 'package:pexza/manager/theme/manager/theme_cubit.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String environment, _i2.EnvironmentFilter environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final serviceModules = _$ServiceModules();
    final modules = _$Modules();
    gh.lazySingleton<_i3.AccessTokenManager>(() => _i3.AccessTokenManager());
    gh.lazySingleton<_i4.Connectivity>(() => serviceModules.connectionStatus);
    gh.lazySingleton<_i5.DataConnectionChecker>(
        () => modules.connectionChecker);
    await gh.factoryAsync<_i6.Dio>(() => serviceModules.dio, preResolve: true);
    await gh.factoryAsync<_i7.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i8.FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<_i9.GoogleSignIn>(() => modules.googleSignIn);
    gh.factory<_i10.OnBoardingCubit>(() => _i10.OnBoardingCubit(
        get<_i5.DataConnectionChecker>(), get<_i4.Connectivity>()));
    gh.factory<_i11.PropertyRepository>(
        () => _i11.PropertyRepository(get<_i6.Dio>()));
    gh.factory<_i12.RoleCubit>(() => _i12.RoleCubit());
    gh.factory<_i13.ThemeCubit>(() => _i13.ThemeCubit());
    gh.factory<_i14.TokenVerificationCubit>(
        () => _i14.TokenVerificationCubit());
    gh.factory<_i15.LandlordPropertyCubit>(() => _i15.LandlordPropertyCubit(
        get<_i11.PropertyRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.lazySingleton<_i16.AuthFacade>(() => _i17.AuthFacadeImpl(
        get<_i18.AuthRemoteDatasource>(), get<_i19.AuthLocalDatasource>()));
    gh.factory<_i20.AuthWatcherCubit>(
        () => _i20.AuthWatcherCubit(get<_i16.AuthFacade>()));
    gh.factory<_i21.AuthCubit>(() => _i21.AuthCubit(get<_i16.AuthFacade>()));
    gh.singleton<_i19.AuthLocalDatasource>(
        _i19.AuthLocalDatasource(get<_i3.AccessTokenManager>()));
    gh.singleton<_i18.AuthRemoteDatasource>(
        _i18.AuthRemoteDatasource(get<_i6.Dio>()));
    return this;
  }
}

class _$ServiceModules extends _i22.ServiceModules {}

class _$Modules extends _i22.Modules {}
