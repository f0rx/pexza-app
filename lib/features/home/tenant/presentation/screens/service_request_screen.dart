import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class ServiceRequestScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Request Service"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: Helpers.appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Placeholder(
              fallbackHeight: 60,
              strokeWidth: 1.0,
            ),
            //
            VerticalSpace(height: App.longest * 0.04),
            //
            AutoSizeText(
              "Level of Urgency",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            Theme(
              data: ThemeData(
                sliderTheme: SliderThemeData(
                  trackShape: CustomTrackShape(),
                ),
              ),
              child: Slider.adaptive(
                value: 0.34,
                onChanged: (value) {},
              ),
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  "Minor",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                ),
                AutoSizeText(
                  "Very Urgent",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.accentColor,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            //
            VerticalSpace(height: App.longest * 0.04),
            //
            AutoSizeText(
              "Any Extra Comment?",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            ConstrainedBox(
              constraints: BoxConstraints.loose(
                  Size(double.infinity, App.longest * 0.3)),
              child: TextFormField(
                maxLines: 100,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                textCapitalization: TextCapitalization.sentences,
                cursorColor: Theme.of(context).accentColor,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: "The leak is at the kitchen and its a major "
                      "problem as I have not been able to cook efficiently.",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
