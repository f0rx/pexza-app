import 'package:auto_route/auto_route_annotations.dart';
import 'package:pexza/features/_404.dart';
import 'package:pexza/features/auth/presentation/pages/login.dart';
import 'package:pexza/features/auth/presentation/pages/profile_setup_screen.dart';
import 'package:pexza/features/auth/presentation/pages/signup.dart';
import 'package:pexza/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:pexza/features/onboarding/presentation/pages/splash_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(
      initial: true,
      page: SplashScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      page: OnBoardingScreen,
      maintainState: true,
    ),
    AdaptiveRoute(
      page: ProfileSetupScreen,
      maintainState: true,
    ),
    AdaptiveRoute(
      page: LoginScreen,
      maintainState: true,
    ),
    AdaptiveRoute(
      page: SignupScreen,
      maintainState: true,
    ),
    //
    AdaptiveRoute(
      path: "*",
      cupertinoPageTitle: "Error 404",
      page: UnknownRoute,
      maintainState: true,
    ),
  ],
  generateNavigationHelperExtension: true,
  preferRelativeImports: false,
)
class $Router {}
