import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "${AppAssets.logo}",
                width: App.width * 0.3,
                height: App.width * 0.3,
                fit: BoxFit.contain,
              ),
            ),
          ),
          //
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: App.height * 0.05,
            child: SpinKitWave(
              color: Theme.of(context).accentColor,
              size: 30.0,
              duration: Duration(milliseconds: 1200),
              type: SpinKitWaveType.center,
              itemCount: 7,
            ),
          ),
        ],
      ),
    );
  }
}
