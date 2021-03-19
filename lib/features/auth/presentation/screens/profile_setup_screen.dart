import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/auth/presentation/widgets/pin_input_widget.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class ProfileSetupScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TokenVerificationCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: AutoSizeText(
                  "Setup Profile",
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
              SizedBox(height: App.height * 0.035),
              //
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Helpers.descriptionPadding),
                  child: AutoSizeText(
                    "Your landlord has created a profile for you within our platform. "
                    "Please, enter the Token sent to your mail below.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                    softWrap: true,
                    wrapWords: true,
                  ),
                ),
              ),
              //
              SizedBox(height: App.height * .04),
              //
              PinInputWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: AppElevatedButton(
        onPressed: () => navigator.popAndPush(Routes.rentDetailsScreen),
        text: "Continue",
        width: App.width * 0.34,
        height: App.height * 0.05,
      ),
    );
  }
}
