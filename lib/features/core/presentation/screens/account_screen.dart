import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
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
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.white,
                    child: BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                      builder: (context, state) => CachedNetworkImage(
                        fit: BoxFit.cover,
                        placeholderFadeInDuration: Duration(milliseconds: 300),
                        imageUrl: "${state.user?.photo}",
                        imageBuilder: (context, provider) => Ink.image(
                          image: provider,
                          fit: BoxFit.cover,
                          width: App.shortest * 0.16,
                          height: double.infinity,
                          child: InkWell(
                            splashColor: Colors.black12,
                            onTap: () => navigator.pushEditAccountScreen(),
                          ),
                        ),
                        placeholder: (_, url) => Center(
                          child: CircularProgressBar.adaptive(
                            width: App.width * 0.06,
                            height: App.width * 0.06,
                            strokeWidth: 2.5,
                          ),
                        ),
                        errorWidget: (context, url, error) => CircleAvatar(
                          backgroundImage: AssetImage('${AppAssets.owner}'),
                          backgroundColor: Theme.of(context).accentColor,
                          radius: 15.0,
                        ),
                      ),
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
