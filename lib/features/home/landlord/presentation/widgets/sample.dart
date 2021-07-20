import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

class SampleWallLayout extends StatefulWidget {
  SampleWallLayout({Key key, @required this.props}) : super(key: key);

  final KtList<LandlordProperty> props;

  @override
  _SampleWallLayoutState createState() => _SampleWallLayoutState();
}

class _SampleWallLayoutState extends State<SampleWallLayout>
    with TickerProviderStateMixin {
  AnimationController _controller;
  bool _reversed;
  Axis _direction;
  int _nbLayers;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _reversed = false;
    _direction = Axis.vertical;
    _nbLayers = 3;
    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return buildWallLayout();
  }

  Widget buildWallLayout() {
    return WallLayout(
      scrollDirection: _direction,
      stones: _buildStonesList(),
      reverse: _reversed,
      layersCount: _nbLayers,
    );
  }

  List<Stone> _buildStonesList() {
    final data = widget.props;
    return widget.props.map((d) {
      int width = 1 + math.Random().nextInt(2 - 1);
      int height = 1 + math.Random().nextInt(2 - 1);

      return Stone(
        id: data.indexOf(d),
        width: width,
        height: height,
        child: __buildStoneChild(
          background: d.color,
          text: "${width}x$height",
          surface: (width * height).toDouble(),
        ),
      );
    }).asList();
  }

  Widget __buildStoneChild({Color background, String text, double surface}) {
    return ScaleTransition(
      scale:
          CurveTween(curve: Interval(0.0, math.min(1.0, 0.25 + surface / 6.0)))
              .animate(_controller),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              background,
              Color.alphaBlend(background.withOpacity(0.6), Colors.black)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child:
            Text(text, style: TextStyle(color: Colors.white, fontSize: 32.0)),
      ),
    );
  }
}
