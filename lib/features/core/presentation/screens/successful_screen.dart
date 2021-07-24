import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render SuccessfulScreen.
class SuccessfulScreen extends StatelessWidget with AutoRouteWrapper {
  final Widget image;
  final String title;
  final String description;
  final String button;
  final bool showButton;
  final void Function() onPressed;

  const SuccessfulScreen({
    Key key,
    @required this.image,
    @required this.title,
    this.description,
    this.button = 'Okay',
    this.showButton = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppAssets.freePick ?? SizedBox.shrink(),
            //
            VerticalSpace(height: App.shortest * 0.07),
            //
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
              child: AutoSizeText(
                "$title",
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentColor,
                    ),
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            //
            Visibility(
              visible: !description.isNullOrBlank,
              child: Column(
                children: [
                  VerticalSpace(height: App.shortest * 0.05),
                  //
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: Helpers.appPadding),
                    child: AutoSizeText(
                      "$description",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            fontSize: 20.0.sp,
                          ),
                      // maxLines: 3,
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            //
            Visibility(
              visible: showButton,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  VerticalSpace(height: App.shortest * 0.15),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Helpers.appPadding,
                    ),
                    child: AppElevatedButton(
                      onPressed: onPressed,
                      text: button,
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
