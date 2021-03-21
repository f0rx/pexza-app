import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/vertical_spacer.dart';
import 'package:pexza/widgets/widgets.dart';

class RentDetailsScreen extends StatelessWidget with AutoRouteWrapper {
  final List<RentDetail> data = RentDetail.list;

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
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
                  "Rent Details",
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
              VerticalSpace(height: App.height * 0.02),
              //
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Helpers.descriptionPadding),
                  child: AutoSizeText(
                    "Your landlord has created a profile for you with the following rent details. "
                    "Please confirm and setup your account details.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      wordSpacing: 2.0,
                    ),
                    softWrap: true,
                    wrapWords: true,
                  ),
                ),
              ),
              //
              VerticalSpace(height: App.height * 0.06),
              //
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: data
                      .map(
                        (i) => Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: App.height * 0.025,
                                        horizontal: App.width * 0.045,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AutoSizeText(
                                            i.item,
                                            style: TextStyle(
                                              color: Helpers.computeLuminance(
                                                  Theme.of(context)
                                                      .backgroundColor),
                                              fontSize: 16.0,
                                            ),
                                            wrapWords: false,
                                            softWrap: false,
                                            maxLines: 1,
                                          ),
                                          //
                                          AutoSizeText(
                                            i.detail,
                                            style: TextStyle(
                                              color: App.theme.accentColor,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            wrapWords: false,
                                            softWrap: false,
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    //
                                    Divider(
                                      height: 0.0,
                                      indent: App.height * 0.02,
                                      endIndent: App.height * 0.02,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              //
              VerticalSpace(height: App.height * 0.08),
              //
              AppElevatedButton(
                onPressed: () => navigator.popAndPush(Routes.signupScreen),
                text: "Confirm Details",
                width: App.width,
                height: App.height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
