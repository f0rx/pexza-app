import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:kt_dart/kt.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';

class ViewAllApartmentScreen extends StatelessWidget with AutoRouteWrapper {
  final LandlordProperty landlordProperty;

  const ViewAllApartmentScreen({
    Key key,
    @required this.landlordProperty,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordApartmentCubit>()
        ..getApartmentsForProperty(property: landlordProperty),
      child: BlocListener<LandlordApartmentCubit, LandlordApartmentState>(
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
    return BlocBuilder<LandlordApartmentCubit, LandlordApartmentState>(
      builder: (c, s) => PortalEntry(
        visible: s.isLoading,
        portal: App.circularLoadingOverlay,
        child: Visibility(
          visible: !s.isLoading && !s.apartments.isEmpty(),
          replacement: EmptyLandlordProps(
            showAppbar: false,
            title: "No Apartments Listed",
            description:
                "You have not create an Apartment for ${landlordProperty?.name?.getOrEmpty}. "
                "Click the button below to add your apartments.",
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
                onPressed: () => navigator.pushLandlordAddApartmentScreen(
                  property: landlordProperty,
                ),
                heroTag: "${Constants.kAddApartmentToPropHeroTag}"
                    "-${landlordProperty?.id?.value}",
                tooltip: "Add a new Apartment",
              ),
            ),
          ),
          //
          child: Scaffold(
            appBar: Toolbar(
              title: "My Apartments at ${landlordProperty?.name?.getOrEmpty}",
              implyLeading: true,
              leadingCondition: false,
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              physics: Helpers.physics,
              padding: EdgeInsets.only(bottom: Helpers.appPadding),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (c, i) => Divider(height: 0),
                itemCount: s.apartments.size,
                itemBuilder: (c, i) => ListTile(
                  onTap: () {},
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: Helpers.appPadding,
                    vertical: 0,
                  ),
                  title: AutoSizeText(
                    "${s.apartments.getOrNull(i)?.name?.getOrEmpty}",
                  ),
                ),
              ),
            ),
            floatingActionButton: FABAddNew(
              onPressed: () async {
                await navigator.pushLandlordAddApartmentScreen(
                  property: landlordProperty,
                );

                await c
                    .read<LandlordApartmentCubit>()
                    .getApartmentsForProperty(property: landlordProperty);
              },
              heroTag: "${Constants.kAddApartmentToPropHeroTag}"
                  "-${landlordProperty?.id?.value}",
              tooltip: "Add a new Apartment",
            ),
          ),
        ),
      ),
    );
  }
}
