// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i5;
import 'package:data_connection_checker/data_connection_checker.dart' as _i6;
import 'package:dio/dio.dart' as _i7;
import 'package:firebase_analytics/firebase_analytics.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_core/firebase_core.dart' as _i10;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i12;
import 'package:flutter_login_facebook/flutter_login_facebook.dart' as _i8;
import 'package:flutter_paystack/flutter_paystack.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i13;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pexza/features/auth/data/repositories/access_token_manager.dart'
    as _i3;
import 'package:pexza/features/auth/data/repositories/auth_facade_impl.dart'
    as _i40;
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart'
    as _i42;
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart'
    as _i41;
import 'package:pexza/features/auth/domain/domain.dart' as _i39;
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart'
    as _i48;
import 'package:pexza/features/auth/presentation/manager/role/role_cubit.dart'
    as _i17;
import 'package:pexza/features/auth/presentation/manager/token_verification/token_verification_cubit.dart'
    as _i20;
import 'package:pexza/features/auth/presentation/manager/watcher/auth_watcher_cubit.dart'
    as _i43;
import 'package:pexza/features/core/data/database/app_database.dart' as _i4;
import 'package:pexza/features/core/data/repositories/admin_utils_repository.dart'
    as _i47;
import 'package:pexza/features/core/data/repositories/profile_verification/profile_verification_repository.dart'
    as _i33;
import 'package:pexza/features/core/presentation/managers/admin_utils/admin_utils_cubit.dart'
    as _i46;
import 'package:pexza/features/core/presentation/managers/payment/payment_cubit.dart'
    as _i15;
import 'package:pexza/features/core/presentation/managers/profile_verification/profile_verification_cubit.dart'
    as _i32;
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart'
    as _i23;
import 'package:pexza/features/home/landlord/data/repositories/maintenance_repository/landlord_maintenance_repository.dart'
    as _i26;
import 'package:pexza/features/home/landlord/data/repositories/misc_repository/misc_repository.dart'
    as _i28;
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart'
    as _i24;
import 'package:pexza/features/home/landlord/data/repositories/withdrawal_repository/withdrawal_repository.dart'
    as _i31;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_apartment/landlord_apartment_cubit.dart'
    as _i22;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_maintenance/landlord_maintenance_cubit.dart'
    as _i25;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_merger/landlord_merger_cubit.dart'
    as _i27;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_property/landlord_property_cubit.dart'
    as _i29;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_withdrawal/landlord_withdrawal_cubit.dart'
    as _i30;
import 'package:pexza/features/home/tenant/data/repositories/apartment/tenant_apartment_repository.dart'
    as _i35;
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart'
    as _i21;
import 'package:pexza/features/home/tenant/data/repositories/debit_card/debit_card_repository.dart'
    as _i45;
import 'package:pexza/features/home/tenant/data/repositories/maintenance/tenant_maintenance_repository.dart'
    as _i38;
import 'package:pexza/features/home/tenant/presentation/managers/debit_card/debit_card_cubit.dart'
    as _i44;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_apartment/tenant_apartment_cubit.dart'
    as _i34;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_assignment/tenant_assignment_cubit.dart'
    as _i36;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_maintenance/tenant_maintenance_cubit.dart'
    as _i37;
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart'
    as _i14;
import 'package:pexza/manager/locator/modules/modules.dart' as _i50;
import 'package:pexza/manager/theme/manager/theme_cubit.dart' as _i19;
import 'package:sweetsheet/sweetsheet.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i8.FacebookLogin>(() => modules.facebookLogin);
    gh.lazySingleton<_i9.FirebaseAnalytics>(() => modules.firebaseAnalytics);
    await gh.factoryAsync<_i10.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i11.FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<_i12.FirebaseCrashlytics>(
        () => modules.firebaseCrashlytics);
    gh.lazySingleton<_i13.GoogleSignIn>(() => modules.googleSignIn);
    gh.factory<_i14.OnBoardingCubit>(() => _i14.OnBoardingCubit(
        get<_i6.DataConnectionChecker>(), get<_i5.Connectivity>()));
    gh.factory<_i15.PaymentCubit>(() => _i15.PaymentCubit());
    await gh.factoryAsync<_i16.PaystackPlugin>(() => modules.paystackInit,
        preResolve: true);
    gh.factory<_i17.RoleCubit>(() => _i17.RoleCubit());
    gh.lazySingleton<_i18.SweetSheet>(() => modules.sweetSheet);
    gh.factory<_i19.ThemeCubit>(() => _i19.ThemeCubit());
    gh.factory<_i20.TokenVerificationCubit>(() => _i20.TokenVerificationCubit(
        get<_i21.TenantAssignmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i22.LandlordApartmentCubit>(() => _i22.LandlordApartmentCubit(
        get<_i23.ApartmentRepository>(),
        get<_i24.PropertyRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i25.LandlordMaintenanceCubit>(() =>
        _i25.LandlordMaintenanceCubit(get<_i26.LandlordMaintenanceRepository>(),
            get<_i5.Connectivity>(), get<_i6.DataConnectionChecker>()));
    gh.factory<_i27.LandlordMergerCubit>(() => _i27.LandlordMergerCubit(
        get<_i23.ApartmentRepository>(),
        get<_i24.PropertyRepository>(),
        get<_i28.MiscRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i29.LandlordPropertyCubit>(() => _i29.LandlordPropertyCubit(
        get<_i24.PropertyRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i30.LandlordWithdrawalCubit>(() => _i30.LandlordWithdrawalCubit(
        get<_i31.WithdrawalRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i32.ProfileVerificationCubit>(() =>
        _i32.ProfileVerificationCubit(get<_i33.ProfileVerificationRepository>(),
            get<_i5.Connectivity>(), get<_i6.DataConnectionChecker>()));
    gh.factory<_i34.TenantApartmentCubit>(() => _i34.TenantApartmentCubit(
        get<_i35.TenantApartmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i36.TenantAssignmentCubit>(() => _i36.TenantAssignmentCubit(
        get<_i21.TenantAssignmentRepository>(),
        get<_i35.TenantApartmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i37.TenantMaintenanceCubit>(() => _i37.TenantMaintenanceCubit(
        get<_i38.TenantMaintenanceRepository>(),
        get<_i28.MiscRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.lazySingleton<_i39.AuthFacade>(() => _i40.AuthFacadeImpl(
        get<_i41.AuthRemoteDatasource>(),
        get<_i42.AuthLocalDatasource>(),
        get<_i9.FirebaseAnalytics>(),
        get<_i13.GoogleSignIn>(),
        get<_i8.FacebookLogin>()));
    gh.factory<_i43.AuthWatcherCubit>(
        () => _i43.AuthWatcherCubit(get<_i39.AuthFacade>()));
    gh.factory<_i44.DebitCardCubit>(() => _i44.DebitCardCubit(
        get<_i45.DebitCardRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i46.AdminUtilsCubit>(() => _i46.AdminUtilsCubit(
        get<_i39.AuthFacade>(),
        get<_i47.AdminUtilsRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i48.AuthCubit>(() => _i48.AuthCubit(get<_i39.AuthFacade>()));
    gh.singleton<_i42.AuthLocalDatasource>(_i42.AuthLocalDatasource(
        get<_i3.AccessTokenManager>(), get<_i4.AppDatabase>()));
    gh.singleton<_i26.LandlordMaintenanceRepository>(
        _i26.LandlordMaintenanceRepository(get<_i7.Dio>()));
    gh.singleton<_i28.MiscRepository>(_i28.MiscRepository(get<_i7.Dio>()));
    gh.singleton<_i33.ProfileVerificationRepository>(
        _i33.ProfileVerificationRepository(get<_i7.Dio>()));
    gh.singleton<_i24.PropertyRepository>(
        _i24.PropertyRepository(get<_i7.Dio>()));
    gh.singleton<_i35.TenantApartmentRepository>(
        _i35.TenantApartmentRepository(get<_i7.Dio>()));
    gh.singleton<_i21.TenantAssignmentRepository>(
        _i21.TenantAssignmentRepository(get<_i7.Dio>()));
    gh.singleton<_i38.TenantMaintenanceRepository>(
        _i38.TenantMaintenanceRepository(get<_i7.Dio>()));
    gh.singleton<_i31.WithdrawalRepository>(
        _i31.WithdrawalRepository(get<_i7.Dio>()));
    gh.singleton<_i47.AdminUtilsRepository>(
        _i47.AdminUtilsRepository(get<_i7.Dio>()));
    gh.singleton<_i23.ApartmentRepository>(
        _i23.ApartmentRepository(get<_i7.Dio>()));
    gh.singleton<_i41.AuthRemoteDatasource>(
        _i41.AuthRemoteDatasource(get<_i7.Dio>()));
    gh.singleton<_i45.DebitCardRepository>(
        _i45.DebitCardRepository(get<_i7.Dio>()));
    return this;
  }
}

class _$ServiceModules extends _i50.ServiceModules {}

class _$Modules extends _i50.Modules {}
