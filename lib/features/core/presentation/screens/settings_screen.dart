import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/manager/theme/theme.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
      builder: (context, state) => PortalEntry(
        visible: state.isLoading,
        portal: App.loadingOverlay(),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "App Settings"),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            physics: Helpers.physics,
            padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubtitledHeader(text: "Notifications"),
                //
                VerticalSpace(height: App.longest * 0.02),
                //
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Material(
                    color: Helpers.optionOf(
                        Colors.white, AppColors.secondaryColor),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SwitchListTile.adaptive(
                          value: true,
                          title: AutoSizeText("Push Notifications"),
                          onChanged: (value) {},
                        ),
                        //
                        Divider(
                          height: 0.0,
                          indent: App.height * 0.02,
                          endIndent: App.height * 0.02,
                        ),
                        //
                        SwitchListTile.adaptive(
                          value: false,
                          title: AutoSizeText("Email Notification"),
                          onChanged: (value) {},
                        ),
                        //
                        Divider(
                          height: 0.0,
                          indent: App.height * 0.02,
                          endIndent: App.height * 0.02,
                        ),
                        //
                        SwitchListTile.adaptive(
                          value: false,
                          title: AutoSizeText("SMS Notification"),
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
                //
                VerticalSpace(height: App.longest * 0.04),
                //
                SubtitledHeader(text: "Personal"),
                //
                VerticalSpace(height: App.longest * 0.02),
                //
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Material(
                    color: Helpers.optionOf(
                        Colors.white, AppColors.secondaryColor),
                    child: Column(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          Visibility(
                            visible: context
                                .watch<AuthWatcherCubit>()
                                .state
                                .user
                                .role
                                .isTenant,
                            child: ListTile(
                              title: AutoSizeText("My Saved Cards"),
                              trailing: Icon(Icons.navigate_next_rounded),
                              onTap: () => navigator.pushSavedCardScreen(),
                            ),
                          ),
                          //
                          SwitchListTile.adaptive(
                            value:
                                BlocProvider.of<ThemeCubit>(context).isDarkMode,
                            title: AutoSizeText(
                              "${Helpers.optionOf('Activate', 'Switch off')} Dark Mode",
                            ),
                            onChanged: (_) =>
                                BlocProvider.of<ThemeCubit>(context)
                                    .toggleTheme(),
                          ),
                        ],
                      ).toList(),
                    ),
                  ),
                ),
                VerticalSpace(height: App.longest * 0.02),
                //
                Visibility(
                  visible: env.flavor.fold(
                    dev: () => true,
                    prod: () => Helpers.checkIsBrendan(context),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SubtitledHeader(
                        text: "Special Access (developers only!)",
                      ),
                      //
                      VerticalSpace(height: App.longest * 0.02),
                      //
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Material(
                          color: Helpers.optionOf(
                              Colors.white, AppColors.secondaryColor),
                          child: Column(
                            children: ListTile.divideTiles(
                              context: context,
                              tiles: [
                                ListTile(
                                  title: AutoSizeText(
                                    "Clear database!",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.auto_delete_rounded,
                                      color: Colors.white),
                                  tileColor: AppColors.welcomeGrey,
                                  onTap: () => runDatabaseCleanup(context),
                                ),
                              ],
                            ).toList(),
                          ),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.longest * 0.02),
                    ],
                  ),
                ),
                //
                SubtitledHeader(text: "Help"),
                //
                VerticalSpace(height: App.longest * 0.02),
                //
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Material(
                    color: Helpers.optionOf(
                        Colors.white, AppColors.secondaryColor),
                    child: Column(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          ListTile(
                            title: AutoSizeText("Terms of Use"),
                            trailing: Icon(Icons.navigate_next_rounded),
                            onTap: () {},
                          ),
                          //
                          ListTile(
                            title: AutoSizeText("Privacy Policy"),
                            trailing: Icon(Icons.navigate_next_rounded),
                            onTap: () {},
                          ),
                        ],
                      ).toList(),
                    ),
                  ),
                ),
                //
                VerticalSpace(height: App.longest * 0.06),
                //
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Material(
                    color: Helpers.optionOf(
                      Colors.white,
                      AppColors.secondaryColor,
                    ),
                    child: ListTile(
                      title: AutoSizeText(
                        "Log Out",
                        style: TextStyle(
                          color: Helpers.optionOf(
                            AppColors.errorRed,
                            Colors.white,
                          ),
                          fontWeight: Helpers.optionOf(null, FontWeight.bold),
                        ),
                      ),
                      tileColor: Helpers.optionOf(null, Colors.redAccent),
                      trailing: Icon(
                        Icons.exit_to_app,
                        color: Helpers.optionOf(
                          AppColors.errorRed,
                          Colors.white,
                        ),
                      ),
                      onTap: () async {
                        await PopupDialog.confirmation(
                          title: 'Sign out?',
                          description: 'You\'ll be logged out of Pexza',
                          postiveButtonText: 'YES',
                          onPositiveButtonPressed: () =>
                              context.read<AuthWatcherCubit>().signOut,
                        ).render(context);
                      },
                    ),
                  ),
                ),
                //
                VerticalSpace(height: App.longest * 0.1),
              ],
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: AutoSizeText(
              "${formatDate(DateTime.now(), [yyyy])} ${AppStrings.appName}",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
