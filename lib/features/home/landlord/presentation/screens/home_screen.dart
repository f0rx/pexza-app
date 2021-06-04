import 'package:avatar_glow/avatar_glow.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordHomeScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()..fetchAll(),
      child: BlocListener<LandlordPropertyCubit, LandlordPropertyState>(
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.show(
            context,
            message: either.fold(
              (f) => f.message ?? f.error,
              (r) => r.message ?? r.details,
            ),
            icon: either.fold((_) => null, (r) => Icons.check_circle_rounded),
            iconColor: either.fold((_) => null, (r) => AppColors.successGreen),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (r) => (_) => navigator.pop(),
            ),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
      builder: (c, state) => Visibility(
        visible: !c.watch<LandlordPropertyCubit>().state.isLoading &&
            c.watch<LandlordPropertyCubit>().state.properties.isEmpty(),
        //////// Replace with Properties screen if NOT EMPTY ///////
        replacement: LandlordProperties(
          appBar: HomeAppBar(
            onPressed: () => navigator.pushAccountScreen(),
          ),
          addPropertyOnPressed: () async {
            final shouldRefresh =
                await navigator.pushLandlordAddPropertyScreen();

            if (shouldRefresh != null && shouldRefresh)
              c.read<LandlordPropertyCubit>().fetchAll();
          },
          fab: Visibility(
            visible: !c.watch<LandlordPropertyCubit>().state.isLoading,
            child: FABAddNew(
              onPressed: () async {
                final shouldRefresh =
                    await navigator.pushLandlordAddPropertyScreen();

                if (shouldRefresh != null && shouldRefresh)
                  c.read<LandlordPropertyCubit>().fetchAll();
              },
              heroTag: Constants.kAddEditPropertyHeroTag,
              tooltip: "Add new Property",
            ),
          ),
        ),
        /////// Empty property screen ////////
        child: EmptyLandlordProps(
          appBar: HomeAppBar(
            onPressed: () => navigator.pushAccountScreen(),
          ),
          title: "No Property Listed",
          description: "You have not listed a property yet. "
              "Click the button below to add properties.",
          fab: AvatarGlow(
            animate: true,
            glowColor: Helpers.computeLuminance(
              Theme.of(context).backgroundColor,
            ),
            endRadius: App.shortest * 0.11,
            duration: const Duration(milliseconds: 1500),
            repeatPauseDuration: const Duration(milliseconds: 100),
            repeat: true,
            showTwoGlows: false,
            curve: Curves.easeInOutCubic,
            child: FABAddNew(
              onPressed: () async {
                final shouldRefresh =
                    await navigator.pushLandlordAddPropertyScreen();

                if (shouldRefresh != null && shouldRefresh)
                  c.read<LandlordPropertyCubit>().fetchAll();
              },
              heroTag: Constants.kAddEditPropertyHeroTag,
              tooltip: "Add new Property",
            ),
          ),
        ),
      ),
    );
  }
}
