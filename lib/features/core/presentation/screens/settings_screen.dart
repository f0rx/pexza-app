import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
      builder: (context, state) => PortalEntry(
        visible: state.isLoading,
        portal: App.waveLoadingBar,
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "App Settings"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.015),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SubtitledHeader(
                  text: "Notifications",
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
                SubtitledHeader(
                  text: "Help",
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
                VerticalSpace(height: App.longest * 0.07),
                //
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Material(
                    color: Helpers.optionOf(
                        Colors.white, AppColors.secondaryColor),
                    child: ListTile(
                      title: AutoSizeText(
                        "Log Out",
                        style: TextStyle(color: AppColors.accentColor),
                      ),
                      trailing: Icon(Icons.exit_to_app),
                      onTap: () => context.read<AuthWatcherCubit>().signOut,
                    ),
                  ),
                ),
              ],
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
      ),
    );
  }
}
