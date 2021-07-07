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
    as _i39;
import 'package:pexza/features/auth/data/sources/local/auth_local_datasource.dart'
    as _i41;
import 'package:pexza/features/auth/data/sources/remote/auth_remote_datasource.dart'
    as _i40;
import 'package:pexza/features/auth/domain/domain.dart' as _i38;
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart'
    as _i45;
import 'package:pexza/features/auth/presentation/manager/role/role_cubit.dart'
    as _i17;
import 'package:pexza/features/auth/presentation/manager/token_verification/token_verification_cubit.dart'
    as _i19;
import 'package:pexza/features/auth/presentation/manager/watcher/auth_watcher_cubit.dart'
    as _i42;
import 'package:pexza/features/core/data/database/app_database.dart' as _i4;
import 'package:pexza/features/core/presentation/managers/payment/payment_cubit.dart'
    as _i15;
import 'package:pexza/features/home/landlord/data/repositories/apartment_repository/apartment_repository.dart'
    as _i22;
import 'package:pexza/features/home/landlord/data/repositories/maintenance_repository/landlord_maintenance_repository.dart'
    as _i25;
import 'package:pexza/features/home/landlord/data/repositories/misc_repository/misc_repository.dart'
    as _i27;
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart'
    as _i23;
import 'package:pexza/features/home/landlord/data/repositories/wallet_repository/wallet_repository.dart'
    as _i30;
import 'package:pexza/features/home/landlord/data/repositories/withdrawal_repository/withdrawal_repository.dart'
    as _i32;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_apartment/landlord_apartment_cubit.dart'
    as _i21;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_maintenance/landlord_maintenance_cubit.dart'
    as _i24;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_merger/landlord_merger_cubit.dart'
    as _i26;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_property/landlord_property_cubit.dart'
    as _i28;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_wallet/landlord_wallet_cubit.dart'
    as _i29;
import 'package:pexza/features/home/landlord/presentation/manager/landlord_withdrawal/landlord_withdrawal_cubit.dart'
    as _i31;
import 'package:pexza/features/home/tenant/data/repositories/apartment/tenant_apartment_repository.dart'
    as _i34;
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart'
    as _i20;
import 'package:pexza/features/home/tenant/data/repositories/debit_card/debit_card_repository.dart'
    as _i44;
import 'package:pexza/features/home/tenant/data/repositories/maintenance/tenant_maintenance_repository.dart'
    as _i37;
import 'package:pexza/features/home/tenant/presentation/managers/debit_card/debit_card_cubit.dart'
    as _i43;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_apartment/tenant_apartment_cubit.dart'
    as _i33;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_assignment/tenant_assignment_cubit.dart'
    as _i35;
import 'package:pexza/features/home/tenant/presentation/managers/tenant_maintenance/tenant_maintenance_cubit.dart'
    as _i36;
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart'
    as _i14;
import 'package:pexza/manager/locator/modules/modules.dart' as _i46;
import 'package:pexza/manager/theme/manager/theme_cubit.dart'
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
    gh.factory<_i18.ThemeCubit>(() => _i18.ThemeCubit());
    gh.factory<_i19.TokenVerificationCubit>(() => _i19.TokenVerificationCubit(
        get<_i20.TenantAssignmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i21.LandlordApartmentCubit>(() => _i21.LandlordApartmentCubit(
        get<_i22.ApartmentRepository>(),
        get<_i23.PropertyRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i24.LandlordMaintenanceCubit>(() =>
        _i24.LandlordMaintenanceCubit(get<_i25.LandlordMaintenanceRepository>(),
            get<_i5.Connectivity>(), get<_i6.DataConnectionChecker>()));
    gh.factory<_i26.LandlordMergerCubit>(() => _i26.LandlordMergerCubit(
        get<_i22.ApartmentRepository>(),
        get<_i23.PropertyRepository>(),
        get<_i27.MiscRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i28.LandlordPropertyCubit>(() => _i28.LandlordPropertyCubit(
        get<_i23.PropertyRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i29.LandlordWalletCubit>(() => _i29.LandlordWalletCubit(
        get<_i30.WalletRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i31.LandlordWithdrawalCubit>(() => _i31.LandlordWithdrawalCubit(
        get<_i32.WithdrawalRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i33.TenantApartmentCubit>(() => _i33.TenantApartmentCubit(
        get<_i34.TenantApartmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i35.TenantAssignmentCubit>(() => _i35.TenantAssignmentCubit(
        get<_i20.TenantAssignmentRepository>(),
        get<_i34.TenantApartmentRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i36.TenantMaintenanceCubit>(() => _i36.TenantMaintenanceCubit(
        get<_i37.TenantMaintenanceRepository>(),
        get<_i27.MiscRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.lazySingleton<_i38.AuthFacade>(() => _i39.AuthFacadeImpl(
        get<_i40.AuthRemoteDatasource>(),
        get<_i41.AuthLocalDatasource>(),
        get<_i9.FirebaseAnalytics>(),
        get<_i13.GoogleSignIn>(),
        get<_i8.FacebookLogin>()));
    gh.factory<_i42.AuthWatcherCubit>(
        () => _i42.AuthWatcherCubit(get<_i38.AuthFacade>()));
    gh.factory<_i43.DebitCardCubit>(() => _i43.DebitCardCubit(
        get<_i44.DebitCardRepository>(),
        get<_i5.Connectivity>(),
        get<_i6.DataConnectionChecker>()));
    gh.factory<_i45.AuthCubit>(() => _i45.AuthCubit(get<_i38.AuthFacade>()));
    gh.singleton<_i41.AuthLocalDatasource>(_i41.AuthLocalDatasource(
        get<_i3.AccessTokenManager>(), get<_i4.AppDatabase>()));
    gh.singleton<_i25.LandlordMaintenanceRepository>(
        _i25.LandlordMaintenanceRepository(get<_i7.Dio>()));
    gh.singleton<_i27.MiscRepository>(_i27.MiscRepository(get<_i7.Dio>()));
    gh.singleton<_i23.PropertyRepository>(
        _i23.PropertyRepository(get<_i7.Dio>()));
    gh.singleton<_i34.TenantApartmentRepository>(
        _i34.TenantApartmentRepository(get<_i7.Dio>()));
    gh.singleton<_i20.TenantAssignmentRepository>(
        _i20.TenantAssignmentRepository(get<_i7.Dio>()));
    gh.singleton<_i37.TenantMaintenanceRepository>(
        _i37.TenantMaintenanceRepository(get<_i7.Dio>()));
    gh.singleton<_i30.WalletRepository>(_i30.WalletRepository(get<_i7.Dio>()));
    gh.singleton<_i32.WithdrawalRepository>(
        _i32.WithdrawalRepository(get<_i7.Dio>()));
    gh.singleton<_i22.ApartmentRepository>(
        _i22.ApartmentRepository(get<_i7.Dio>()));
    gh.singleton<_i40.AuthRemoteDatasource>(
        _i40.AuthRemoteDatasource(get<_i7.Dio>()));
    gh.singleton<_i44.DebitCardRepository>(
        _i44.DebitCardRepository(get<_i7.Dio>()));
    return this;
  }
}

class _$ServiceModules extends _i46.ServiceModules {}

class _$Modules extends _i46.Modules {}
