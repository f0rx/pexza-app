// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i5;
import 'package:data_connection_checker/data_connection_checker.dart' as _i6;
import 'package:dio/dio.dart' as _i7;
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:firebase_core/firebase_core.dart' as _i9;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i11;
import 'package:flutter_paystack/flutter_paystack.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart'
    as _i3;
import 'package:pexza/features/auth/data/repositories/auth_facade_impl.dart'
    as _i34;
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart'
    as _i36;
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart'
    as _i35;
import 'package:pexza/features/auth/domain/domain.dart' as _i33;
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart'
    as _i40;
import 'package:pexza/features/auth/presentation/manager/role/role_cubit.dart'
    as _i16;
import 'package:pexza/features/auth/presentation/manager/token_verification/token_verification_cubit.dart'
    as _i18;
import 'package:pexza/features/auth/presentation/manager/watcher/auth_watcher_cubit.dart'
    as _i37;
import 'package:pexza/features/core/data/database/app_database.dart' as _i4;
import 'package:pexza/features/core/presentation/managers/payment/payment_cubit.dart'
    as _i14;
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart'
    as _i21;
import 'package:pexza/features/home/landlord/data/repositories/maintenance_repository/landlord_maintenance_repository.dart'
    as _i24;
import 'package:pexza/features/home/landlord/data/repositories/misc_repository/misc_repository.dart'
    as _i26;
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart'
    as _i22;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_apartment/landlord_apartment_cubit.dart'
    as _i20;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_maintenance/landlord_maintenance_cubit.dart'
    as _i23;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_merger/landlord_merger_cubit.dart'
    as _i25;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_property/landlord_property_cubit.dart'
    as _i27;
import 'package:pexza/features/home/tenant/data/repositories/apartment/tenant_apartment_repository.dart'
    as _i29;
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart'
    as _i19;
import 'package:pexza/features/home/tenant/data/repositories/debit_card/debit_card_repository.dart'
    as _i39;
import 'package:pexza/features/home/tenant/data/repositories/maintenance/tenant_maintenance_repository.dart'
    as _i32;
import 'package:pexza/features/home/tenant/presentation/managers/debit_card/debit_card_cubit.dart'
    as _i38;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_apartment/tenant_apartment_cubit.dart'
    as _i28;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_assignment/tenant_assignment_cubit.dart'
    as _i30;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_maintenance/tenant_maintenance_cubit.dart'
    as _i31;
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart'
    as _i13;
import 'package:pexza/manager/locator/modules/modules.dart' as _i41;
import 'package:pexza/manager/theme/manager/theme_cubit.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
    await gh.factoryAsync<_i4.AppDatabase>(() => serviceModules.database,
        preResolve: true);
    gh.lazySingleton<_i5.Connectivity>(() => serviceModules.connectionStatus);
    gh.lazySingleton<_i6.DataConnectionChecker>(
        () => modules.connectionChecker);
    await gh.factoryAsync<_i7.Dio>(() => serviceModules.dio, preResolve: true);
    gh.lazySingleton<_i8.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i9.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i10.FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<_i11.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i12.GoogleSignIn>(() => modules.googleSignIn);
    gh.factory<_i13.OnBoardingCubit>(() => _i13.OnBoardingCubit(
        get<_i6.DataConnectionChecker>(), get<_i5.Connectivity>()));
    gh.factory<_i14.PaymentCubit>(() => _i14.PaymentCubit());
    await gh.factoryAsync<_i15.PaystackPlugin>(() => modules.paystackInit,
        preResolve: true);
    gh.factory<_i16.RoleCubit>(() => _i16.RoleCubit());
    gh.factory<_i17.ThemeCubit>(() => _i17.ThemeCubit());
    gh.factory<_i18.TokenVerificationCubit>(() => _i18.TokenVerificationCubit(
        get<_i19.TenantAssignmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i20.LandlordApartmentCubit>(() => _i20.LandlordApartmentCubit(
        get<_i21.ApartmentRepository>(),
        get<_i22.PropertyRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i23.LandlordMaintenanceCubit>(() =>
        _i23.LandlordMaintenanceCubit(get<_i24.LandlordMaintenanceRepository>(),
            get<_i5.Connectivity>(), get<_i6.DataConnectionChecker>()));
    gh.factory<_i25.LandlordMergerCubit>(() => _i25.LandlordMergerCubit(
        get<_i21.ApartmentRepository>(),
        get<_i22.PropertyRepository>(),
        get<_i26.MiscRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i27.LandlordPropertyCubit>(() => _i27.LandlordPropertyCubit(
        get<_i22.PropertyRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i28.TenantApartmentCubit>(() => _i28.TenantApartmentCubit(
        get<_i29.TenantApartmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i30.TenantAssignmentCubit>(() => _i30.TenantAssignmentCubit(
        get<_i19.TenantAssignmentRepository>(),
        get<_i29.TenantApartmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i31.TenantMaintenanceCubit>(() => _i31.TenantMaintenanceCubit(
        get<_i32.TenantMaintenanceRepository>(),
        get<_i26.MiscRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.lazySingleton<_i33.AuthFacade>(() => _i34.AuthFacadeImpl(
        get<_i35.AuthRemoteDatasource>(),
        get<_i36.AuthLocalDatasource>(),
        get<_i8.FirebaseAnalytics>()));
    gh.factory<_i37.AuthWatcherCubit>(
        () => _i37.AuthWatcherCubit(get<_i33.AuthFacade>()));
    gh.factory<_i38.DebitCardCubit>(() => _i38.DebitCardCubit(
        get<_i39.DebitCardRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i40.AuthCubit>(() => _i40.AuthCubit(get<_i33.AuthFacade>()));
    gh.singleton<_i36.AuthLocalDatasource>(_i36.AuthLocalDatasource(
        get<_i3.AccessTokenManager>(), get<_i4.AppDatabase>()));
    gh.singleton<_i24.LandlordMaintenanceRepository>(
        _i24.LandlordMaintenanceRepository(get<_i7.Dio>()));
    gh.singleton<_i26.MiscRepository>(_i26.MiscRepository(get<_i7.Dio>()));
    gh.singleton<_i22.PropertyRepository>(
        _i22.PropertyRepository(get<_i7.Dio>()));
    gh.singleton<_i29.TenantApartmentRepository>(
        _i29.TenantApartmentRepository(get<_i7.Dio>()));
    gh.singleton<_i19.TenantAssignmentRepository>(
        _i19.TenantAssignmentRepository(get<_i7.Dio>()));
    gh.singleton<_i32.TenantMaintenanceRepository>(
        _i32.TenantMaintenanceRepository(get<_i7.Dio>()));
    gh.singleton<_i21.ApartmentRepository>(
        _i21.ApartmentRepository(get<_i7.Dio>()));
    gh.singleton<_i35.AuthRemoteDatasource>(
        _i35.AuthRemoteDatasource(get<_i7.Dio>()));
    gh.singleton<_i39.DebitCardRepository>(
        _i39.DebitCardRepository(get<_i7.Dio>()));
    return this;
  }
}

class _$ServiceModules extends _i41.ServiceModules {}

class _$Modules extends _i41.Modules {}
