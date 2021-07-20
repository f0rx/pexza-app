import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/core/presentation/widgets/index.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render ProfileVerificationScreen.
class ProfileVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  const ProfileVerificationScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              controller: ScrollController(),
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: App.longest * 0.015),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        'Upload Identification',
                        softWrap: true,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Helpers.optionOf(
                                AppColors.accentColor,
                                AppColors.accentColor.shade200,
                              ),
                              fontSize: 27.0,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(
                      child: AutoSizeText(
                        'Please select a means of Identification and upload a matching ID.',
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              // color: Colors.grey.shade700,
                              fontSize: 16.0,
                              // letterSpacing: Helpers.letterSpacing,
                            ),
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // TextFormInputLabel(text: 'Country'),
                          //
                          Flexible(
                            child: DropdownFieldWidget<String>(
                              hint: '-- Select ID to Upload --',
                              items: [
                                'Driver\'s License',
                                'Voter\'s Card',
                                'International Passport',
                                'National Identity Card',
                              ]
                                  .map<DropdownMenuItem<String>>(
                                    (item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: AutoSizeText(
                                        '$item',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                      ),
                                    ),
                                  )
                                  .toList(),
                              selected: 'Driver\'s License',
                              onChanged: (_) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Flexible(child: VerticalSpace(height: App.shortest * 0.04)),
                    //
                    DottedBorder(
                      dashPattern: [6, 3, 2, 3],
                      borderType: BorderType.RRect,
                      padding: EdgeInsets.all(5.0),
                      radius: Radius.circular(Helpers.buttonRadius),
                      color: Helpers.computeLuminance(
                          Theme.of(context).scaffoldBackgroundColor),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: App.shortest * 0.5,
                          maxWidth: double.infinity,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Helpers.buttonRadius),
                            color: Helpers.optionOf(
                              AppColors.primaryColor.shade600,
                              AppColors.secondaryColor.shade400,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Theme.of(context).platform.fold(
                                    material: () => Icons.photo_camera,
                                    cupertino: () => CupertinoIcons.camera,
                                  ),
                              color: Colors.grey,
                              size: 45.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: App.shortest * 0.1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
              child: AppElevatedButton(
                onPressed: () {},
                text: 'Verify ID & Continue',
                textColor: Colors.white,
                backgroundColor: AppColors.accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
