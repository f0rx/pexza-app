// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_core/firebase_core.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pexza/features/auth/presentation/manager/auth/auth_cubit.dart'
    as _i3;
import 'package:pexza/features/auth/presentation/manager/token_verification/token_verification_cubit.dart'
    as _i10;
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart'
    as _i8;
import 'package:pexza/manager/locator/modules/modules.dart' as _i11;
import 'package:pexza/manager/theme/manager/theme_cubit.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String environment, _i2.EnvironmentFilter environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final modules = _$Modules();
    gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.DataConnectionChecker>(
        () => modules.connectionChecker);
    await gh.factoryAsync<_i5.FirebaseApp>(() => modules.firebaseApp,
        preResolve: true);
    gh.lazySingleton<_i6.FirebaseAuth>(() => modules.firebaseAuth);
    gh.lazySingleton<_i7.GoogleSignIn>(() => modules.googleSignIn);
    gh.factory<_i8.OnBoardingCubit>(
        () => _i8.OnBoardingCubit(get<_i4.DataConnectionChecker>()));
    gh.factory<_i9.ThemeCubit>(() => _i9.ThemeCubit());
    gh.factory<_i10.TokenVerificationCubit>(
        () => _i10.TokenVerificationCubit());
    return this;
  }
}

class _$Modules extends _i11.Modules {}
