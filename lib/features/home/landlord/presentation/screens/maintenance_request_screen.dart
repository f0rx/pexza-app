import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/widgets/toolbar.dart';

class LandlordMaintenanceRequestScreen extends StatelessWidget
    with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Maintenance Request"),
      body: Center(
        child: Text(
          "Coming soon...requires a working Model",
        ),
      ),
    );
  }
}
