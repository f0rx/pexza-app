import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordPropertyDetailScreen extends StatelessWidget
    with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Property Name",
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: App.height * 0.2,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: Helpers.appPadding),
              decoration: BoxDecoration(
                color: Colors.teal.shade200,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //
                ],
              ),
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              child: Material(
                color: Colors.white,
                elevation: 2.0,
                type: MaterialType.card,
                child: Container(
                  height: App.height * 0.5,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: Helpers.appPadding,
                  ).copyWith(top: App.shortest * 0.04),
                  child: Column(
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SubtitledHeader(text: "Tenants"),
                            Flexible(
                              child: InkWell(
                                onTap: () => navigator
                                    .pushLandlordTenantsListingScreen(),
                                borderRadius: BorderRadius.circular(50.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 7.0),
                                  child: AutoSizeText(
                                    "See all",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: App.theme.accentColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: AppIconButton(
        onPressed: () => navigator.pushLandlordAddTenantScreen(),
        child: Icon(
          Icons.person_add,
          color: Helpers.computeLuminance(AppColors.accentColor),
        ),
      ),
    );
  }
}
