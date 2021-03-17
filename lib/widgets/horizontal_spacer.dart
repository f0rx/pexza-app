import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const HorizontalSpace({
    Key key,
    @required this.width,
    this.height,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => FractionallySizedBox(
        child: SizedBox(
          width: width,
          height: height,
          child: child,
        ),
      );
}
