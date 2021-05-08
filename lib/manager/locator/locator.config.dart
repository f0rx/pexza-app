// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i4;
import 'package:data_connection_checker/data_connection_checker.dart' as _i5;
import 'package:dio/dio.dart' as _i6;
import 'package:firebase_analytics/firebase_analytics.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:firebase_core/firebase_core.dart' as _i8;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart'
    as _i3;
import 'package:pexza/features/auth/data/repositories/auth_facade_impl.dart'
    as _i23;
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart'
    as _i25;
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart'
    as _i24;
import 'package:pexza/features/auth/domain/domain.dart' as _i22;
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart'
    as _i27;
import 'package:pexza/features/auth/presentation/manager/role/role_cubit.dart'
    as _i15;
import 'package:pexza/features/auth/presentation/manager/token_verification/token_verification_cubit.dart'
    as _i17;
import 'package:pexza/features/auth/presentation/manager/watcher/auth_watcher_cubit.dart'
    as _i26;
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart'
    as _i18;
import 'package:pexza/features/home/landlord/data/repositories/misc_repository/misc_repository.dart'
    as _i12;
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart'
    as _i14;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_apartment/landlord_apartment_cubit.dart'
    as _i19;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_merger/landlord_merger_cubit.dart'
    as _i20;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_property/landlord_property_cubit.dart'
    as _i21;
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart'
    as _i13;
import 'package:pexza/manager/locator/modules/modules.dart' as _i28;
import 'package:pexza/manager/theme/manager/theme_cubit.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i7.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i8.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i9.FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<_i10.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i11.GoogleSignIn>(() => modules.googleSignIn);
    gh.factory<_i12.MiscRepository>(() => _i12.MiscRepository(get<_i6.Dio>()));
    gh.factory<_i13.OnBoardingCubit>(() => _i13.OnBoardingCubit(
        get<_i5.DataConnectionChecker>(), get<_i4.Connectivity>()));
    gh.factory<_i14.PropertyRepository>(
        () => _i14.PropertyRepository(get<_i6.Dio>()));
    gh.factory<_i15.RoleCubit>(() => _i15.RoleCubit());
    gh.factory<_i16.ThemeCubit>(() => _i16.ThemeCubit());
    gh.factory<_i17.TokenVerificationCubit>(
        () => _i17.TokenVerificationCubit());
    gh.factory<_i18.ApartmentRepository>(
        () => _i18.ApartmentRepository(get<_i6.Dio>()));
    gh.factory<_i19.LandlordApartmentCubit>(() => _i19.LandlordApartmentCubit(
        get<_i18.ApartmentRepository>(),
        get<_i14.PropertyRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i20.LandlordMergerCubit>(() => _i20.LandlordMergerCubit(
        get<_i18.ApartmentRepository>(),
        get<_i14.PropertyRepository>(),
        get<_i12.MiscRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i21.LandlordPropertyCubit>(() => _i21.LandlordPropertyCubit(
        get<_i14.PropertyRepository>(),
        get<_i18.ApartmentRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.lazySingleton<_i22.AuthFacade>(() => _i23.AuthFacadeImpl(
        get<_i24.AuthRemoteDatasource>(),
        get<_i25.AuthLocalDatasource>(),
        get<_i7.FirebaseAnalytics>(),
        get<_i10.FirebaseCrashlytics>()));
    gh.factory<_i26.AuthWatcherCubit>(
        () => _i26.AuthWatcherCubit(get<_i22.AuthFacade>()));
    gh.factory<_i27.AuthCubit>(() => _i27.AuthCubit(get<_i22.AuthFacade>()));
    gh.singleton<_i25.AuthLocalDatasource>(
        _i25.AuthLocalDatasource(get<_i3.AccessTokenManager>()));
    gh.singleton<_i24.AuthRemoteDatasource>(
        _i24.AuthRemoteDatasource(get<_i6.Dio>()));
    return this;
  }
}

class _$ServiceModules extends _i28.ServiceModules {}

class _$Modules extends _i28.Modules {}
