import 'package:auto_route/auto_route.dart';
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
          child: MaterialApp(
            title: AppStrings.appName.capitalizeFirst(),
            debugShowCheckedModeBanner: false,
            theme: app?.themeData() ?? AppTheme.light().themeData(),
            darkTheme: AppTheme.dark().themeData(),
            builder: ExtendedNavigator(
              navigatorKey: App.key,
              initialRoute: Routes.splashScreen,
              observers: [NavigationHistoryObserver()],
              router: Router(),
              guards: [AuthGuard()],
            ),
          ),
        ),
      ),
    );
  }
}
