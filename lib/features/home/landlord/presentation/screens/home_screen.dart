import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/empty_landlord_props.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/property_listing.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordHomeScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()..fetchAll(),
      child: this,
    );
  }

  @override
  _LandlordHomeScreenState createState() => _LandlordHomeScreenState();
}

class _LandlordHomeScreenState extends State<LandlordHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
        // buildWhen: (p, c) => c.isLoading,
        builder: (context, state) => Visibility(
          visible: !state.properties.isEmpty(),
          replacement: PortalEntry(
            visible: !state.isLoading,
            portal: App.waveLoadingBar,
            child: EmptyLandlordProps(
              appBar: HomeAppBar(
                onPressed: () => navigator.pushAccountScreen(),
              ),
              title: "No Property Listed",
              description: "You have not listed a property yet. "
                  "Click the button below to add properties.",
              buttonText: "Add Property",
              onPressed: () => navigator.pushLandlordAddPropertyScreen(),
            ),
          ),
          child: LandlordPropertyListing(
            appBar: HomeAppBar(
              onPressed: () => navigator.pushAccountScreen(),
            ),
          ),
        ),
      ),
    );
  }
}
