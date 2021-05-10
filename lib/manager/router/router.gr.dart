// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/_404.dart';
import 'package:pexza/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:pexza/features/auth/presentation/screens/login_screen.dart';
import 'package:pexza/features/auth/presentation/screens/profile_select_screen.dart';
import 'package:pexza/features/auth/presentation/screens/profile_setup_screen.dart';
import 'package:pexza/features/auth/presentation/screens/rent_details_screen.dart';
import 'package:pexza/features/auth/presentation/screens/signup_screen.dart';
import 'package:pexza/features/auth/presentation/screens/verify_email_screen.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/presentation/screens/export.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/screens/add_apartment_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/add_property_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/add_tenant_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/home_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/landl_apartment_detail.dart';
import 'package:pexza/features/home/landlord/presentation/screens/landl_prop_detail_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/landl_rent_detail.dart';
import 'package:pexza/features/home/landlord/presentation/screens/maintenance_request_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/request_detail_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/tenants_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/view_all_apartments_screen.dart';
import 'package:pexza/features/home/landlord/presentation/screens/view_all_properties_screen.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/presentation/screens/apartment_detail_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/home_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/rent_detail_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/rent_payment_screen.dart';
import 'package:pexza/features/home/tenant/presentation/screens/service_request_screen.dart';
import 'package:pexza/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:pexza/features/onboarding/presentation/pages/splash_screen.dart';
import 'package:pexza/manager/router/export.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String profileSelectScreen = '/profile-select-screen';
  static const String profileSetupScreen = '/profile-setup-screen';
  static const String rentDetailsScreen = '/rent-details-screen';
  static const String loginScreen = '/login-screen';
  static const String signupScreen = '/signup-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String verifyEmailScreen = '/verify-email-screen';
  static const String tenantHomeScreen = '/tenant-home-screen';
  static const String tenantApartmentDetailScreen =
      '/tenant-apartment-detail-screen';
  static const String tenantRentDetailScreen = '/tenant-rent-detail-screen';
  static const String tenantRentPaymentScreen = '/tenant-rent-payment-screen';
  static const String serviceRequestScreen = '/service-request-screen';
  static const String landlordHomeScreen = '/landlord-home-screen';
  static const String viewAllPropertiesScreen = '/view-all-properties-screen';
  static const String viewAllApartmentScreen = '/view-all-apartment-screen';
  static const String landlordAddPropertyScreen =
      '/landlord-add-property-screen';
  static const String landlordPropertyDetailScreen =
      '/landlord-property-detail-screen';
  static const String landlordApartmentDetailScreen =
      '/landlord-apartment-detail-screen';
  static const String landlordAddApartmentScreen =
      '/landlord-add-apartment-screen';
  static const String landlordRentDetailScreen = '/landlord-rent-detail-screen';
  static const String landlordAddTenantScreen = '/landlord-add-tenant-screen';
  static const String landlordMaintenanceRequestScreen =
      '/landlord-maintenance-request-screen';
  static const String landlordMaintenanceRequestDetailScreen =
      '/landlord-maintenance-request-detail-screen';
  static const String landlordTenantsListingScreen =
      '/landlord-tenants-listing-screen';
  static const String accountScreen = '/account-screen';
  static const String editAccountScreen = '/edit-account-screen';
  static const String settingsScreen = '/settings-screen';
  static const String unknownRoute = '*';
  static const all = <String>{
    splashScreen,
    onBoardingScreen,
    profileSelectScreen,
    profileSetupScreen,
    rentDetailsScreen,
    loginScreen,
    signupScreen,
    forgotPasswordScreen,
    verifyEmailScreen,
    tenantHomeScreen,
    tenantApartmentDetailScreen,
    tenantRentDetailScreen,
    tenantRentPaymentScreen,
    serviceRequestScreen,
    landlordHomeScreen,
    viewAllPropertiesScreen,
    viewAllApartmentScreen,
    landlordAddPropertyScreen,
    landlordPropertyDetailScreen,
    landlordApartmentDetailScreen,
    landlordAddApartmentScreen,
    landlordRentDetailScreen,
    landlordAddTenantScreen,
    landlordMaintenanceRequestScreen,
    landlordMaintenanceRequestDetailScreen,
    landlordTenantsListingScreen,
    accountScreen,
    editAccountScreen,
    settingsScreen,
    unknownRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.profileSelectScreen, page: ProfileSelectScreen),
    RouteDef(Routes.profileSetupScreen, page: ProfileSetupScreen),
    RouteDef(Routes.rentDetailsScreen, page: RentDetailsScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.signupScreen, page: SignupScreen),
    RouteDef(Routes.forgotPasswordScreen, page: ForgotPasswordScreen),
    RouteDef(Routes.verifyEmailScreen, page: VerifyEmailScreen),
    RouteDef(Routes.tenantHomeScreen,
        page: TenantHomeScreen, guards: [AuthGuard]),
    RouteDef(Routes.tenantApartmentDetailScreen,
        page: TenantApartmentDetailScreen, guards: [AuthGuard]),
    RouteDef(Routes.tenantRentDetailScreen,
        page: TenantRentDetailScreen, guards: [AuthGuard]),
    RouteDef(Routes.tenantRentPaymentScreen,
        page: TenantRentPaymentScreen, guards: [AuthGuard]),
    RouteDef(Routes.serviceRequestScreen,
        page: ServiceRequestScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordHomeScreen,
        page: LandlordHomeScreen, guards: [AuthGuard]),
    RouteDef(Routes.viewAllPropertiesScreen,
        page: ViewAllPropertiesScreen, guards: [AuthGuard]),
    RouteDef(Routes.viewAllApartmentScreen,
        page: ViewAllApartmentScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordAddPropertyScreen,
        page: LandlordAddPropertyScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordPropertyDetailScreen,
        page: LandlordPropertyDetailScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordApartmentDetailScreen,
        page: LandlordApartmentDetailScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordAddApartmentScreen,
        page: LandlordAddApartmentScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordRentDetailScreen,
        page: LandlordRentDetailScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordAddTenantScreen,
        page: LandlordAddTenantScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordMaintenanceRequestScreen,
        page: LandlordMaintenanceRequestScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordMaintenanceRequestDetailScreen,
        page: LandlordMaintenanceRequestDetailScreen, guards: [AuthGuard]),
    RouteDef(Routes.landlordTenantsListingScreen,
        page: LandlordTenantsListingScreen, guards: [AuthGuard]),
    RouteDef(Routes.accountScreen, page: AccountScreen),
    RouteDef(Routes.editAccountScreen, page: EditAccountScreen),
    RouteDef(Routes.settingsScreen, page: SettingsScreen),
    RouteDef(Routes.unknownRoute, page: UnknownRoute),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
        maintainState: true,
      );
    },
    OnBoardingScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
        maintainState: true,
      );
    },
    ProfileSelectScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileSelectScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    ProfileSetupScreen: (data) {
      final args = data.getArgs<ProfileSetupScreenArguments>(
        orElse: () => ProfileSetupScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileSetupScreen(
          key: args.key,
          assignment: args.assignment,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    RentDetailsScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => RentDetailsScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    LoginScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    SignupScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SignupScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    ForgotPasswordScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ForgotPasswordScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    VerifyEmailScreen: (data) {
      final args = data.getArgs<VerifyEmailScreenArguments>(
        orElse: () => VerifyEmailScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => VerifyEmailScreen(
          key: args.key,
          email: args.email,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    TenantHomeScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => TenantHomeScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    TenantApartmentDetailScreen: (data) {
      final args = data.getArgs<TenantApartmentDetailScreenArguments>(
        orElse: () => TenantApartmentDetailScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => TenantApartmentDetailScreen(
          key: args.key,
          apartment: args.apartment,
        ).wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    TenantRentDetailScreen: (data) {
      final args = data.getArgs<TenantRentDetailScreenArguments>(
        orElse: () => TenantRentDetailScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => TenantRentDetailScreen(
          key: args.key,
          property: args.property,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    TenantRentPaymentScreen: (data) {
      final args = data.getArgs<TenantRentPaymentScreenArguments>(
        orElse: () => TenantRentPaymentScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => TenantRentPaymentScreen(
          key: args.key,
          property: args.property,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    ServiceRequestScreen: (data) {
      final args = data.getArgs<ServiceRequestScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ServiceRequestScreen(
          key: args.key,
          assignment: args.assignment,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    LandlordHomeScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordHomeScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    ViewAllPropertiesScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ViewAllPropertiesScreen().wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    ViewAllApartmentScreen: (data) {
      final args = data.getArgs<ViewAllApartmentScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ViewAllApartmentScreen(
          key: args.key,
          landlordProperty: args.landlordProperty,
        ).wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    LandlordAddPropertyScreen: (data) {
      final args = data.getArgs<LandlordAddPropertyScreenArguments>(
        orElse: () => LandlordAddPropertyScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordAddPropertyScreen(
          key: args.key,
          property: args.property,
        ).wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    LandlordPropertyDetailScreen: (data) {
      final args =
          data.getArgs<LandlordPropertyDetailScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordPropertyDetailScreen(
          key: args.key,
          property: args.property,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    LandlordApartmentDetailScreen: (data) {
      final args = data.getArgs<LandlordApartmentDetailScreenArguments>(
        orElse: () => LandlordApartmentDetailScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordApartmentDetailScreen(
          key: args.key,
          landlordApartment: args.landlordApartment,
        ).wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    LandlordAddApartmentScreen: (data) {
      final args =
          data.getArgs<LandlordAddApartmentScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordAddApartmentScreen(
          key: args.key,
          property: args.property,
          apartment: args.apartment,
        ).wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    LandlordRentDetailScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordRentDetailScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    LandlordAddTenantScreen: (data) {
      final args =
          data.getArgs<LandlordAddTenantScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordAddTenantScreen(
          key: args.key,
          property: args.property,
          apartment: args.apartment,
        ).wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    LandlordMaintenanceRequestScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            LandlordMaintenanceRequestScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    LandlordMaintenanceRequestDetailScreen: (data) {
      final args =
          data.getArgs<LandlordMaintenanceRequestDetailScreenArguments>(
        orElse: () => LandlordMaintenanceRequestDetailScreenArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LandlordMaintenanceRequestDetailScreen(
          key: args.key,
          maintenance: args.maintenance,
        ).wrappedRoute(context),
        settings: data,
        fullscreenDialog: true,
        maintainState: true,
      );
    },
    LandlordTenantsListingScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            LandlordTenantsListingScreen().wrappedRoute(context),
        settings: data,
        maintainState: true,
      );
    },
    AccountScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AccountScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Profile',
        maintainState: true,
      );
    },
    EditAccountScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => EditAccountScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'Profile',
        maintainState: true,
      );
    },
    SettingsScreen: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SettingsScreen().wrappedRoute(context),
        settings: data,
        cupertinoTitle: 'App Settings',
        maintainState: true,
      );
    },
    UnknownRoute: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => UnknownRoute(),
        settings: data,
        cupertinoTitle: 'Error 404',
        maintainState: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushOnBoardingScreen() =>
      push<dynamic>(Routes.onBoardingScreen);

  Future<dynamic> pushProfileSelectScreen() =>
      push<dynamic>(Routes.profileSelectScreen);

  Future<dynamic> pushProfileSetupScreen({
    Key key,
    Assignment assignment,
  }) =>
      push<dynamic>(
        Routes.profileSetupScreen,
        arguments:
            ProfileSetupScreenArguments(key: key, assignment: assignment),
      );

  Future<dynamic> pushRentDetailsScreen() =>
      push<dynamic>(Routes.rentDetailsScreen);

  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushSignupScreen() => push<dynamic>(Routes.signupScreen);

  Future<dynamic> pushForgotPasswordScreen() =>
      push<dynamic>(Routes.forgotPasswordScreen);

  Future<dynamic> pushVerifyEmailScreen({
    Key key,
    EmailAddress email,
  }) =>
      push<dynamic>(
        Routes.verifyEmailScreen,
        arguments: VerifyEmailScreenArguments(key: key, email: email),
      );

  Future<dynamic> pushTenantHomeScreen() =>
      push<dynamic>(Routes.tenantHomeScreen);

  Future<dynamic> pushTenantApartmentDetailScreen(
          {Key key,
          TenantApartment apartment,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.tenantApartmentDetailScreen,
        arguments: TenantApartmentDetailScreenArguments(
            key: key, apartment: apartment),
        onReject: onReject,
      );

  Future<dynamic> pushTenantRentDetailScreen(
          {Key key, Property property, OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.tenantRentDetailScreen,
        arguments:
            TenantRentDetailScreenArguments(key: key, property: property),
        onReject: onReject,
      );

  Future<dynamic> pushTenantRentPaymentScreen(
          {Key key, Property property, OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.tenantRentPaymentScreen,
        arguments:
            TenantRentPaymentScreenArguments(key: key, property: property),
        onReject: onReject,
      );

  Future<dynamic> pushServiceRequestScreen(
          {Key key,
          @required Assignment assignment,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.serviceRequestScreen,
        arguments:
            ServiceRequestScreenArguments(key: key, assignment: assignment),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordHomeScreen() =>
      push<dynamic>(Routes.landlordHomeScreen);

  Future<dynamic> pushViewAllPropertiesScreen() =>
      push<dynamic>(Routes.viewAllPropertiesScreen);

  Future<dynamic> pushViewAllApartmentScreen(
          {Key key,
          @required LandlordProperty landlordProperty,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.viewAllApartmentScreen,
        arguments: ViewAllApartmentScreenArguments(
            key: key, landlordProperty: landlordProperty),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordAddPropertyScreen(
          {Key key,
          LandlordProperty property,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.landlordAddPropertyScreen,
        arguments:
            LandlordAddPropertyScreenArguments(key: key, property: property),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordPropertyDetailScreen(
          {Key key,
          @required LandlordProperty property,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.landlordPropertyDetailScreen,
        arguments:
            LandlordPropertyDetailScreenArguments(key: key, property: property),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordApartmentDetailScreen(
          {Key key,
          LandlordApartment landlordApartment,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.landlordApartmentDetailScreen,
        arguments: LandlordApartmentDetailScreenArguments(
            key: key, landlordApartment: landlordApartment),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordAddApartmentScreen(
          {Key key,
          @required LandlordProperty property,
          LandlordApartment apartment,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.landlordAddApartmentScreen,
        arguments: LandlordAddApartmentScreenArguments(
            key: key, property: property, apartment: apartment),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordRentDetailScreen() =>
      push<dynamic>(Routes.landlordRentDetailScreen);

  Future<dynamic> pushLandlordAddTenantScreen(
          {Key key,
          @required LandlordProperty property,
          LandlordApartment apartment,
          OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.landlordAddTenantScreen,
        arguments: LandlordAddTenantScreenArguments(
            key: key, property: property, apartment: apartment),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordMaintenanceRequestScreen() =>
      push<dynamic>(Routes.landlordMaintenanceRequestScreen);

  Future<dynamic> pushLandlordMaintenanceRequestDetailScreen(
          {Key key, Maintenance maintenance, OnNavigationRejected onReject}) =>
      push<dynamic>(
        Routes.landlordMaintenanceRequestDetailScreen,
        arguments: LandlordMaintenanceRequestDetailScreenArguments(
            key: key, maintenance: maintenance),
        onReject: onReject,
      );

  Future<dynamic> pushLandlordTenantsListingScreen() =>
      push<dynamic>(Routes.landlordTenantsListingScreen);

  Future<dynamic> pushAccountScreen() => push<dynamic>(Routes.accountScreen);

  Future<dynamic> pushEditAccountScreen() =>
      push<dynamic>(Routes.editAccountScreen);

  Future<dynamic> pushSettingsScreen() => push<dynamic>(Routes.settingsScreen);

  Future<dynamic> pushUnknownRoute() => push<dynamic>(Routes.unknownRoute);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProfileSetupScreen arguments holder class
class ProfileSetupScreenArguments {
  final Key key;
  final Assignment assignment;
  ProfileSetupScreenArguments({this.key, this.assignment});
}

/// VerifyEmailScreen arguments holder class
class VerifyEmailScreenArguments {
  final Key key;
  final EmailAddress email;
  VerifyEmailScreenArguments({this.key, this.email});
}

/// TenantApartmentDetailScreen arguments holder class
class TenantApartmentDetailScreenArguments {
  final Key key;
  final TenantApartment apartment;
  TenantApartmentDetailScreenArguments({this.key, this.apartment});
}

/// TenantRentDetailScreen arguments holder class
class TenantRentDetailScreenArguments {
  final Key key;
  final Property property;
  TenantRentDetailScreenArguments({this.key, this.property});
}

/// TenantRentPaymentScreen arguments holder class
class TenantRentPaymentScreenArguments {
  final Key key;
  final Property property;
  TenantRentPaymentScreenArguments({this.key, this.property});
}

/// ServiceRequestScreen arguments holder class
class ServiceRequestScreenArguments {
  final Key key;
  final Assignment assignment;
  ServiceRequestScreenArguments({this.key, @required this.assignment});
}

/// ViewAllApartmentScreen arguments holder class
class ViewAllApartmentScreenArguments {
  final Key key;
  final LandlordProperty landlordProperty;
  ViewAllApartmentScreenArguments({this.key, @required this.landlordProperty});
}

/// LandlordAddPropertyScreen arguments holder class
class LandlordAddPropertyScreenArguments {
  final Key key;
  final LandlordProperty property;
  LandlordAddPropertyScreenArguments({this.key, this.property});
}

/// LandlordPropertyDetailScreen arguments holder class
class LandlordPropertyDetailScreenArguments {
  final Key key;
  final LandlordProperty property;
  LandlordPropertyDetailScreenArguments({this.key, @required this.property});
}

/// LandlordApartmentDetailScreen arguments holder class
class LandlordApartmentDetailScreenArguments {
  final Key key;
  final LandlordApartment landlordApartment;
  LandlordApartmentDetailScreenArguments({this.key, this.landlordApartment});
}

/// LandlordAddApartmentScreen arguments holder class
class LandlordAddApartmentScreenArguments {
  final Key key;
  final LandlordProperty property;
  final LandlordApartment apartment;
  LandlordAddApartmentScreenArguments(
      {this.key, @required this.property, this.apartment});
}

/// LandlordAddTenantScreen arguments holder class
class LandlordAddTenantScreenArguments {
  final Key key;
  final LandlordProperty property;
  final LandlordApartment apartment;
  LandlordAddTenantScreenArguments(
      {this.key, @required this.property, this.apartment});
}

/// LandlordMaintenanceRequestDetailScreen arguments holder class
class LandlordMaintenanceRequestDetailScreenArguments {
  final Key key;
  final Maintenance maintenance;
  LandlordMaintenanceRequestDetailScreenArguments({this.key, this.maintenance});
}
