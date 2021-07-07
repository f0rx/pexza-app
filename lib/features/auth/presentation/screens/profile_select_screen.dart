import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class ProfileSelectScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocBuilder<RoleCubit, RoleState>(
      builder: (context, state) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final _cubit = context.watch<RoleCubit>();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          physics: Helpers.physics,
          padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: AutoSizeText(
                  "Select a Profile",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: App.theme.accentColor,
                  ),
                  softWrap: true,
                  wrapWords: true,
                ),
              ),
              //
              VerticalSpace(height: App.height * 0.035),
              //
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Helpers.descriptionPadding),
                  child: AutoSizeText(
                    "Are you a Property Owner or a Tenant? "
                    "Choose your profile to login and gain access to your management portal.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                    softWrap: true,
                    wrapWords: true,
                  ),
                ),
              ),
              //
              VerticalSpace(height: App.height * .04),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: _builder(
                      context,
                      _cubit,
                      onPressed: () => _cubit.onChanged(Role.landlord),
                      title: "Landlord",
                      description: "Select this if you are a property owner.",
                      asset: "${AppAssets.owner}",
                    ),
                  ),
                  //
                  HorizontalSpace(width: App.width * 0.05),
                  //
                  Flexible(
                    child: _builder(
                      context,
                      _cubit,
                      onPressed: () => _cubit.onChanged(Role.tenant),
                      title: "Tenant",
                      description:
                          "You should select this if you are a tenant.",
                      asset: "${AppAssets.tenant}",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _builder(
    BuildContext context,
    RoleCubit cubit, {
    @required VoidCallback onPressed,
    String title,
    String description,
    String asset,
  }) {
    return InkWell(
      splashColor: Colors.black12,
      onTap: () {
        onPressed?.call();
        navigator.pushSignupScreen();
      },
      child: DottedBorder(
        dashPattern: [6, 3, 2, 3],
        borderType: BorderType.Rect,
        padding: EdgeInsets.all(12.0),
        radius: Radius.circular(16.0),
        color:
            Helpers.computeLuminance(Theme.of(context).scaffoldBackgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 2,
              child: Image(
                image: AssetImage("$asset"),
                fit: BoxFit.contain,
              ),
            ),
            //
            VerticalSpace(height: 16.0),
            //
            Flexible(
              child: AutoSizeText(
                title,
                style: TextStyle(
                  fontSize: 19.0,
                  color: App.theme.accentColor,
                ),
              ),
            ),
            //
            VerticalSpace(height: 5.0),
            //
            Flexible(
              child: AutoSizeText(
                description,
                style: TextStyle(fontSize: 15.0),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
