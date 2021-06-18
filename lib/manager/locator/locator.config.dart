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
import 'package:flutter_paystack/flutter_paystack.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart'
    as _i3;
import 'package:pexza/features/auth/data/repositories/auth_facade_impl.dart'
    as _i33;
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart'
    as _i35;
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart'
    as _i34;
import 'package:pexza/features/auth/domain/domain.dart' as _i32;
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart'
    as _i39;
import 'package:pexza/features/auth/presentation/manager/role/role_cubit.dart'
    as _i15;
import 'package:pexza/features/auth/presentation/manager/token_verification/token_verification_cubit.dart'
    as _i17;
import 'package:pexza/features/auth/presentation/manager/watcher/auth_watcher_cubit.dart'
    as _i36;
import 'package:pexza/features/core/presentation/managers/payment/payment_cubit.dart'
    as _i13;
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart'
    as _i20;
import 'package:pexza/features/home/landlord/data/repositories/maintenance_repository/landlord_maintenance_repository.dart'
    as _i23;
import 'package:pexza/features/home/landlord/data/repositories/misc_repository/misc_repository.dart'
    as _i25;
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart'
    as _i21;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_apartment/landlord_apartment_cubit.dart'
    as _i19;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_maintenance/landlord_maintenance_cubit.dart'
    as _i22;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_merger/landlord_merger_cubit.dart'
    as _i24;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_property/landlord_property_cubit.dart'
    as _i26;
import 'package:pexza/features/home/tenant/data/repositories/apartment/tenant_apartment_repository.dart'
    as _i28;
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart'
    as _i18;
import 'package:pexza/features/home/tenant/data/repositories/debit_card/debit_card_repository.dart'
    as _i38;
import 'package:pexza/features/home/tenant/data/repositories/maintenance/tenant_maintenance_repository.dart'
    as _i31;
import 'package:pexza/features/home/tenant/presentation/managers/debit_card/debit_card_cubit.dart'
    as _i37;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_apartment/tenant_apartment_cubit.dart'
    as _i27;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_assignment/tenant_assignment_cubit.dart'
    as _i29;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_maintenance/tenant_maintenance_cubit.dart'
    as _i30;
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart'
    as _i12;
import 'package:pexza/manager/locator/modules/modules.dart' as _i40;
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
    gh.factory<_i12.OnBoardingCubit>(() => _i12.OnBoardingCubit(
        get<_i5.DataConnectionChecker>(), get<_i4.Connectivity>()));
    gh.factory<_i13.PaymentCubit>(() => _i13.PaymentCubit());
    await gh.factoryAsync<_i14.PaystackPlugin>(() => modules.paystackInit,
        preResolve: true);
    gh.factory<_i15.RoleCubit>(() => _i15.RoleCubit());
    gh.factory<_i16.ThemeCubit>(() => _i16.ThemeCubit());
    gh.factory<_i17.TokenVerificationCubit>(() => _i17.TokenVerificationCubit(
        get<_i18.TenantAssignmentRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i19.LandlordApartmentCubit>(() => _i19.LandlordApartmentCubit(
        get<_i20.ApartmentRepository>(),
        get<_i21.PropertyRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i22.LandlordMaintenanceCubit>(() =>
        _i22.LandlordMaintenanceCubit(get<_i23.LandlordMaintenanceRepository>(),
            get<_i4.Connectivity>(), get<_i5.DataConnectionChecker>()));
    gh.factory<_i24.LandlordMergerCubit>(() => _i24.LandlordMergerCubit(
        get<_i20.ApartmentRepository>(),
        get<_i21.PropertyRepository>(),
        get<_i25.MiscRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i26.LandlordPropertyCubit>(() => _i26.LandlordPropertyCubit(
        get<_i21.PropertyRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i27.TenantApartmentCubit>(() => _i27.TenantApartmentCubit(
        get<_i28.TenantApartmentRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i29.TenantAssignmentCubit>(() => _i29.TenantAssignmentCubit(
        get<_i18.TenantAssignmentRepository>(),
        get<_i28.TenantApartmentRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i30.TenantMaintenanceCubit>(() => _i30.TenantMaintenanceCubit(
        get<_i31.TenantMaintenanceRepository>(),
        get<_i25.MiscRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.lazySingleton<_i32.AuthFacade>(() => _i33.AuthFacadeImpl(
        get<_i34.AuthRemoteDatasource>(),
        get<_i35.AuthLocalDatasource>(),
        get<_i7.FirebaseAnalytics>()));
    gh.factory<_i36.AuthWatcherCubit>(
        () => _i36.AuthWatcherCubit(get<_i32.AuthFacade>()));
    gh.factory<_i37.DebitCardCubit>(() => _i37.DebitCardCubit(
        get<_i38.DebitCardRepository>(),
        get<_i4.Connectivity>(),
        get<_i5.DataConnectionChecker>()));
    gh.factory<_i39.AuthCubit>(() => _i39.AuthCubit(get<_i32.AuthFacade>()));
    gh.singleton<_i35.AuthLocalDatasource>(
        _i35.AuthLocalDatasource(get<_i3.AccessTokenManager>()));
    gh.singleton<_i23.LandlordMaintenanceRepository>(
        _i23.LandlordMaintenanceRepository(get<_i6.Dio>()));
    gh.singleton<_i25.MiscRepository>(_i25.MiscRepository(get<_i6.Dio>()));
    gh.singleton<_i21.PropertyRepository>(
        _i21.PropertyRepository(get<_i6.Dio>()));
    gh.singleton<_i28.TenantApartmentRepository>(
        _i28.TenantApartmentRepository(get<_i6.Dio>()));
    gh.singleton<_i18.TenantAssignmentRepository>(
        _i18.TenantAssignmentRepository(get<_i6.Dio>()));
    gh.singleton<_i31.TenantMaintenanceRepository>(
        _i31.TenantMaintenanceRepository(get<_i6.Dio>()));
    gh.singleton<_i20.ApartmentRepository>(
        _i20.ApartmentRepository(get<_i6.Dio>()));
    gh.singleton<_i34.AuthRemoteDatasource>(
        _i34.AuthRemoteDatasource(get<_i6.Dio>()));
    gh.singleton<_i38.DebitCardRepository>(
        _i38.DebitCardRepository(get<_i6.Dio>()));
    return this;
  }
}

class _$ServiceModules extends _i40.ServiceModules {}

class _$Modules extends _i40.Modules {}
