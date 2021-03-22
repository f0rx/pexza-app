import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';

class PropertyInfoWidget extends StatelessWidget {
  final String leading;
  final String trailing;
  final bool showDivider;

  const PropertyInfoWidget({
    Key key,
    this.leading,
    this.trailing,
    this.showDivider = true,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          leading,
                          style: TextStyle(
                            color: Helpers.computeLuminance(
                                Theme.of(context).backgroundColor),
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
