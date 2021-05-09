import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class AccountScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
      builder: (context, state) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Profile",
        actions: [
          AppIconButton(
            child: Icon(Icons.settings_outlined),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            onPressed: () => navigator.pushSettingsScreen(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.015),
        child: Column(
          children: [
            VerticalSpace(
              height: App.shortest * 0.16,
              child: Row(
                children: [
                  BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                    builder: (context, state) => ImageWidget(
                      url: "${state.user?.photo}",
                      radius: 25.0,
                      maxWidth: App.shortest * 0.16,
                      maxHeight: double.infinity,
                      splashColor: Colors.black12,
                      onPressed: () => navigator.pushEditAccountScreen(),
                    ),
                  ),
                  //
                  HorizontalSpace(width: App.shortest * 0.045),
                  //
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                                builder: (context, state) => AutoSizeText(
                                  "${state.user?.firstName?.getOrEmpty} "
                                  "${state.user?.lastName?.getOrEmpty}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                  maxLines: 1,
                                ),
                              ),
                              //
                              VerticalSpace(height: App.shortest * 0.01),
                              //
                              BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                                builder: (context, state) => AutoSizeText(
                                  "${state.user?.email?.getOrEmpty}",
                                  maxLines: 1,
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Chip(
                            label:
                                BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                              builder: (context, state) => AutoSizeText(
                                "${state.user?.role?.name?.capitalizeFirst()}",
                              ),
                            ),
                            padding: EdgeInsets.zero,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
