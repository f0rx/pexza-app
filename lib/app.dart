import 'package:auto_route/auto_route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart' hide Router;
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/manager/router/export.dart';
import 'package:pexza/manager/theme/theme.dart';
import 'package:pexza/utils/utils.dart';
import 'package:wiredash/wiredash.dart';

class Pexza extends StatelessWidget {
  /// This is the entry point for Pexza App
  const Pexza({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Precache dependencies & images
    Helpers.precache(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => getIt<ThemeCubit>()),
        BlocProvider<RoleCubit>(create: (_) => getIt<RoleCubit>()),
        BlocProvider<AuthWatcherCubit>(
          create: (_) => getIt<AuthWatcherCubit>(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, AppTheme>(
        builder: (context, app) => Portal(
          child: Wiredash(
            projectId: env.kWiredashProjectId,
            secret: env.kWiredashSecret,
            navigatorKey: App.key,
            child: MaterialApp(
              title: AppStrings.appName.capitalizeFirst(),
              debugShowCheckedModeBanner: false,
              theme: app?.themeData() ?? AppTheme.light().themeData(),
              darkTheme: AppTheme.dark().themeData(),
              locale: DevicePreview.locale(context),
              builder: (context, child) => DevicePreview.appBuilder(
                context,
                ExtendedNavigator(
                  navigatorKey: App.key,
                  initialRoute: Routes.splashScreen,
                  observers: [
                    NavigationHistoryObserver(),
                    env.flavor.fold(
                      dev: () => RouteObserver(),
                      prod: () => FirebaseAnalyticsObserver(
                        analytics: getIt<FirebaseAnalytics>(),
                      ),
                    ),
                  ],
                  router: Router(),
                  guards: [AuthGuard()],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class Pexza extends StatelessWidget {
//   /// This is the entry point for Pexza App
//   const Pexza({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Precache dependencies & images
//     Helpers.precache(context);

//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<ThemeCubit>(create: (_) => getIt<ThemeCubit>()),
//         BlocProvider<RoleCubit>(create: (_) => getIt<RoleCubit>()),
//         BlocProvider<AuthWatcherCubit>(
//           create: (_) => getIt<AuthWatcherCubit>(),
//         ),
//       ],
//       child: BlocBuilder<ThemeCubit, AppTheme>(
//         builder: (context, app) => Portal(
//           child: Wiredash(
//             projectId: env.kWiredashProjectId,
//             secret: env.kWiredashSecret,
//             navigatorKey: App.key,
//             child: MaterialApp(
//               title: AppStrings.appName.capitalizeFirst(),
//               debugShowCheckedModeBanner: false,
//               theme: app?.themeData() ?? AppTheme.light().themeData(),
//               darkTheme: AppTheme.dark().themeData(),
//               locale: DevicePreview.locale(context),
//               builder: (context, child) => DevicePreview.appBuilder(
//                 context,
//                 ExtendedNavigator(
//                   navigatorKey: App.key,
//                   initialRoute: Routes.splashScreen,
//                   observers: [
//                     NavigationHistoryObserver(),
//                     env.flavor.fold(
//                       prod: () => FirebaseAnalyticsObserver(
//                         analytics: getIt<FirebaseAnalytics>(),
//                       ),
//                     ),
//                   ],
//                   router: Router(),
//                   guards: [AuthGuard()],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
