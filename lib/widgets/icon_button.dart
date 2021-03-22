import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';

class AppIconButton extends StatelessWidget {
  final Color backgroundColor;
  final double elevation;
  final Clip clipBehavior;
  final MaterialType type;
  final EdgeInsets padding;
  final BorderRadiusGeometry borderRadius;
  final Widget child;
  final Function() onPressed;
  final Function() onLongPressed;

  const AppIconButton({
    Key key,
    this.backgroundColor = AppColors.accentColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
    this.borderRadius,
    this.onPressed,
    this.onLongPressed,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      elevation: elevation,
      clipBehavior: clipBehavior,
      borderRadius: borderRadius,
      type: type,
      child: InkWell(
        child: Padding(
          padding: padding,
          child: child,
        ),
        onTap: onPressed,
        onLongPress: onLongPressed,
      ),
    );
  }
}
