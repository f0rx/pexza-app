import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/empty_landlord_props.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/property_listing.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordHomeScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  _LandlordHomeScreenState createState() => _LandlordHomeScreenState();
}

class _LandlordHomeScreenState extends State<LandlordHomeScreen> {
  bool isShowingEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isShowingEmpty,
        replacement: BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
          builder: (context, state) => HomeAppBar(
            text: "Hi ${state.user?.firstName?.getOrEmpty}",
            avatarText: "LL",
            onPressed: () => navigator.pushAccountScreen(),
          ),
        ),
        child: BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
          builder: (context, state) => EmptyLandlordProps(
            appBar: HomeAppBar(
              text: "Hi ${state.user?.firstName?.getOrEmpty}",
              avatarText: "LL",
              onPressed: () => navigator.pushAccountScreen(),
            ),
            title: "No Property Listed",
            description: "You have not listed a property yet. "
                "Click the button below to add properties.",
            buttonText: "Add Property",
            onPressed: () => navigator.pushLandlordAddPropertyScreen(),
          ),
        ),
      ),
    );
  }
}
