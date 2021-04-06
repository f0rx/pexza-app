import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';

class HomeAppBar extends StatelessWidget {
  final Widget replacement;
  final String text;
  final Widget icon;
  final Color avatarBgColor;
  final VoidCallback onPressed;
  final String avatarText;
  final TextStyle style;

  HomeAppBar({
    Key key,
    this.replacement,
    @required this.text,
    Widget icon,
    Color avatarBgColor,
    @required this.onPressed,
    @required this.avatarText,
    this.style,
  })  : avatarBgColor = avatarBgColor ?? AppColors.accentColor.shade50,
        icon = icon ?? AppAssets.wavingHand,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: replacement ??
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AutoSizeText(
                    text,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  //
                  icon,
                ],
              ),
              CircleAvatar(
                maxRadius: 22.0,
                minRadius: 18.0,
                // backgroundImage: AssetImage("${AppAssets.owner}"),
                backgroundColor: Colors.transparent,
                child: Material(
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  color: avatarBgColor,
                  child: InkWell(
                    onTap: onPressed,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                          child: Text(
                        avatarText,
                        style: style,
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
