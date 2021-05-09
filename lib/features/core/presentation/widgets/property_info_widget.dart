import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class PropertyInfoWidget extends StatelessWidget {
  final String leading;
  final String trailing;
  final bool showDivider;
  final bool isLargeText;

  const PropertyInfoWidget({
    Key key,
    this.leading,
    this.trailing,
    this.showDivider = true,
    this.isLargeText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: App.height * 0.02,
                    horizontal: App.width * 0.04,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              leading,
                              style: TextStyle(
                                color: Helpers.computeLuminance(
                                  Theme.of(context).backgroundColor,
                                ),
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.start,
                              wrapWords: false,
                              softWrap: false,
                              maxLines: 1,
                            ),
                          ),
                          //
                          Flexible(
                            child: Visibility(
                              visible: !isLargeText,
                              child: AutoSizeText(
                                trailing,
                                style: TextStyle(
                                  color: App.theme.accentColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                wrapWords: true,
                                textAlign: TextAlign.end,
                                softWrap: true,
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //
                      if (isLargeText) ...[
                        VerticalSpace(height: App.shortest * 0.04),
                        //
                        AutoSizeText(
                          trailing,
                          softWrap: true,
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ]
                    ],
                  ),
                ),
                //
                Visibility(
                  visible: showDivider,
                  child: Divider(
                    height: 0.0,
                    indent: App.height * 0.02,
                    endIndent: App.height * 0.02,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
