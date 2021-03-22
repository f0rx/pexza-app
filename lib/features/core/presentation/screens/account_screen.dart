import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/icon_button.dart';
import 'package:pexza/widgets/widgets.dart';

class AccountScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
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
              height: App.shortest * 0.18,
              child: Row(
                children: [
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.white,
                    child: Ink.image(
                      image: AssetImage('${AppAssets.owner}'),
                      fit: BoxFit.cover,
                      width: App.shortest * 0.18,
                      height: double.infinity,
                      child: InkWell(
                        onTap: () => navigator.pushEditAccountScreen(),
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
                              AutoSizeText(
                                "Brendan Ejike",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600),
                                maxLines: 1,
                              ),
                              //
                              VerticalSpace(height: App.shortest * 0.01),
                              //
                              AutoSizeText(
                                "ejike.br@gmail.com",
                                maxLines: 1,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Chip(
                            label: AutoSizeText("Tenant"),
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
