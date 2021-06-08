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
  final String tooltip;
  final Function() onPressed;
  final Function() onLongPressed;

  AppIconButton({
    Key key,
    this.backgroundColor = AppColors.accentColor,
    this.elevation = 2.0,
    this.clipBehavior = Clip.antiAlias,
    this.type = MaterialType.circle,
    this.padding,
    this.tooltip = "",
    this.borderRadius,
    this.onPressed,
    this.onLongPressed,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: backgroundColor,
        elevation: elevation,
        clipBehavior: clipBehavior,
        borderRadius: borderRadius,
        type: borderRadius == null ? type : MaterialType.canvas,
        child: InkWell(
          child: Padding(
            child: Center(child: child),
            padding: padding ?? EdgeInsets.all(App.shortest * 0.03),
          ),
          onTap: onPressed,
          onLongPress: onLongPressed,
        ),
      ),
    );
  }
}
