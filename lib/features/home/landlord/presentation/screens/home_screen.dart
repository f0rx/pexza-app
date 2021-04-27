import 'package:auto_size_text/auto_size_text.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/empty_landlord_props.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/properties_widget.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordHomeScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()..fetchAll(),
      child: BlocListener<LandlordPropertyCubit, LandlordPropertyState>(
        listener: (c, s) {
          c.read<LandlordPropertyCubit>().state.optionOfFailure.fold(
                () => null,
                (failure) => Flushbar(
                  duration: const Duration(seconds: 10),
                  icon: const Icon(Icons.error, color: Colors.red),
                  messageText: AutoSizeText(
                    !failure.message.isNullOrBlank
                        ? failure.message
                        : failure.error,
                  ),
                  borderRadius: 8,
                  dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                  margin: const EdgeInsets.all(8),
                  flushbarPosition:
                      MediaQuery.of(context).viewInsets.bottom == 0
                          ? FlushbarPosition.BOTTOM
                          : FlushbarPosition.TOP,
                  shouldIconPulse: true,
                  backgroundColor: Theme.of(context).primaryColor,
                ).show(context),
              );
        },
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
        // buildWhen: (p, c) => c.isLoading,
        builder: (c, state) => PortalEntry(
          visible: !c.watch<LandlordPropertyCubit>().state.isLoading &&
              c.watch<LandlordPropertyCubit>().state.properties.isEmpty(),
          portal: EmptyLandlordProps(
            appBar: HomeAppBar(
              onPressed: () => navigator.pushAccountScreen(),
            ),
            title: "No Property Listed",
            description: "You have not listed a property yet. "
                "Click the button below to add properties.",
            buttonText: "Add Property",
            onPressed: () => navigator.pushLandlordAddPropertyScreen(),
          ),
          child: LandlordProperties(
            appBar: HomeAppBar(
              onPressed: () => navigator.pushAccountScreen(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigator.pushLandlordAddPropertyScreen(),
        tooltip: "Add a new Property",
        heroTag: "add-new-property",
        child: Icon(
          Icons.add_business,
          color: Helpers.computeLuminance(AppColors.accentColor),
        ),
      ),
    );
  }
}
