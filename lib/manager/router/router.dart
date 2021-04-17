import 'package:auto_route/auto_route_annotations.dart';
import 'package:pexza/features/_404.dart';
import 'package:pexza/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:pexza/features/auth/presentation/screens/login_screen.dart';
import 'package:pexza/features/auth/presentation/screens/profile_select_screen.dart';
import 'package:pexza/features/auth/presentation/screens/profile_setup_screen.dart';
import 'package:pexza/features/auth/presentation/screens/rent_details_screen.dart';
import 'package:pexza/features/auth/presentation/screens/signup_screen.dart';
import 'package:pexza/features/auth/presentation/screens/verify_email_screen.dart';
import 'package:pexza/features/core/presentation/screens/export.dart';
import 'package:pexza/features/home/landlord/presentation/screens/add_property_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/add_tenant_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/home_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/landl_prop_detail_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/landl_rent_detail.dart';
import 'package:pexza/features/home/landlord/presentation/screens/maintenance_request_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/tenants_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/home_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/property_detail_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/rent_detail_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/rent_payment_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/service_request_screen.dart';
import 'package:pexza/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:pexza/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:pexza/manager/router/export.dart';

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
      page: ProfileSelectScreen,
      maintainState: true,
    ),
    /////////////// Authentication Routes ////////////////////
    AdaptiveRoute(
      page: ProfileSetupScreen,
      maintainState: true,
    ),
    AdaptiveRoute(
      page: RentDetailsScreen,
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
    AdaptiveRoute(
      page: ForgotPasswordScreen,
      maintainState: true,
    ),
    AdaptiveRoute(
      page: VerifyEmailScreen,
      maintainState: true,
    ),
    //////////////// Tenant Routes ////////////////////////
    AdaptiveRoute(
      page: TenantHomeScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: TenantPropertyDetailScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: TenantRentDetailScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: TenantRentPaymentScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: ServiceRequestScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    //////////////// Landlord Routes ////////////////////////
    AdaptiveRoute(
      page: LandlordHomeScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: LandlordAddPropertyScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: LandlordPropertyDetailScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: LandlordRentDetailScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: LandlordAddTenantScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: LandlordMaintenanceRequestScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    AdaptiveRoute(
      page: LandlordTenantsListingScreen,
      guards: [AuthGuard],
      maintainState: true,
    ),
    //////
    AdaptiveRoute(
      cupertinoPageTitle: "Profile",
      page: AccountScreen,
      maintainState: true,
    ),
    AdaptiveRoute(
      cupertinoPageTitle: "Profile",
      page: EditAccountScreen,
      maintainState: true,
    ),
    AdaptiveRoute(
      cupertinoPageTitle: "App Settings",
      page: SettingsScreen,
      maintainState: true,
    ),
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
