import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/core/data/kconsts.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/property_listing.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordPropertiesWidget extends StatelessWidget {
  final Widget appBar;
  final Widget fab;
  final VoidCallback addPropertyOnPressed;

  LandlordPropertiesWidget({
    Key key,
    this.appBar,
    this.addPropertyOnPressed,
    this.fab = const SizedBox(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.02),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar,
            //
            VerticalSpace(height: App.longest * 0.03),
            //
            Flexible(
              child: TextFormField(
                maxLines: 1,
                enableSuggestions: true,
                autocorrect: false,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.search,
                style: TextStyle(fontSize: 17.0),
                decoration: const InputDecoration(
                  hintText: "What do you want to do?",
                  contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    size: 20.0,
                  ),
                ),
                onChanged: (value) {},
                validator: (value) {},
                onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              ),
            ),
            //
            VerticalSpace(height: App.longest * 0.03),
            //
            Flexible(child: LandlordPropertyListing()),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            Flexible(
              child: Center(
                child: InkWell(
                  onTap: () => navigator.pushViewAllPropertiesScreen(),
                  borderRadius: BorderRadius.circular(50.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 7.0,
                    ),
                    child: AutoSizeText(
                      "See all",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontSize: 14.5,
                            color: App.theme.accentColor,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: App.longest * 0.03),
            //
            const SubtitledHeader(
              text: "Tools",
              fontSize: 17.0,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Material(
                      color: Helpers.optionOf(
                        Colors.white,
                        AppColors.secondaryColor.shade400,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      child: InkWell(
                        onTap: () =>
                            navigator.pushLandlordMaintenanceRequestScreen(),
                        splashColor: Colors.black26,
                        borderRadius: BorderRadius.circular(8.0),
                        child: SizedBox(
                          height: App.longest * 0.21,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: AutoSizeText(
                                    "Maintenance Requests",
                                    softWrap: true,
                                    wrapWords: true,
                                    style: TextStyle(
                                      color: App.theme.accentColor,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                //
                                Flexible(
                                  child: AutoSizeText(
                                    "Attend to requests, repairs and maintenance services.",
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Helpers.optionOf(
                                        Colors.grey.shade600,
                                        Colors.white70,
                                      ),
                                      fontSize: 14.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  HorizontalSpace(width: Helpers.appPadding),
                  //
                  Expanded(
                    child: Hero(
                      tag: Constants.kAddEditPropertyHeroTag,
                      child: Material(
                        color: Helpers.optionOf(
                          Colors.white,
                          AppColors.secondaryColor.shade400,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                        child: InkWell(
                          onTap: addPropertyOnPressed,
                          splashColor: Colors.black26,
                          borderRadius: BorderRadius.circular(8.0),
                          child: SizedBox(
                            height: App.longest * 0.21,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: AutoSizeText(
                                      "Add Property",
                                      softWrap: true,
                                      wrapWords: true,
                                      style: TextStyle(
                                        color: App.theme.accentColor,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: AutoSizeText(
                                      "Click here to Add your new property.",
                                      softWrap: true,
                                      wrapWords: true,
                                      style: TextStyle(
                                        color: Helpers.optionOf(
                                          Colors.grey.shade600,
                                          Colors.white70,
                                        ),
                                        fontSize: 14.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: Helpers.appPadding),
          ],
        ),
      ),
      floatingActionButton: fab,
    );
  }
}
