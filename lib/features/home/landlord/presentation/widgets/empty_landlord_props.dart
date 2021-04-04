import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class EmptyLandlordProps extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final Widget appBar;
  final VoidCallback onPressed;

  const EmptyLandlordProps({
    Key key,
    @required this.title,
    this.description,
    @required this.buttonText,
    @required this.onPressed,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: ScrollController(),
      physics: Helpers.physics,
      padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
          .copyWith(top: App.longest * 0.02),
      child: VerticalSpace(
        height: App.longest,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: appBar,
            ),
            //
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(AppAssets.emptyProps),
                      fit: BoxFit.contain,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.05),
                    //
                    SubtitledHeader(
                      text: title,
                      color: Theme.of(context).accentColor,
                      fontSize: 20.0,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.02),
                    //
                    AutoSizeText(
                      description,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //
                    VerticalSpace(height: App.height * 0.04),
                    //
                    AppElevatedButton(
                      text: buttonText,
                      onPressed: onPressed,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
