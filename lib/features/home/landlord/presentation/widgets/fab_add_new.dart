import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';

class FABAddNew extends StatelessWidget {
  final String heroTag;
  final String tooltip;
  final VoidCallback onPressed;
  final Widget child;

  const FABAddNew({
    Key key,
    this.heroTag,
    this.tooltip = "Add New",
    @required this.onPressed,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: tooltip,
      heroTag: heroTag,
      child: child ??
          Icon(
            Icons.add_business,
            color: Helpers.computeLuminance(AppColors.accentColor),
          ),
    );
  }
}
