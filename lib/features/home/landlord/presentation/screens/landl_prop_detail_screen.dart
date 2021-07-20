import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';

class LandlordPropertyDetailScreen extends StatefulWidget
    with AutoRouteWrapper {
  final LandlordProperty property;

  const LandlordPropertyDetailScreen({
    Key key,
    @required this.property,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()
        ..init(prop: property)
        ..fetchTenants(property: property),
      child: BlocListener<LandlordPropertyCubit, LandlordPropertyState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) async => await BottomAlertDialog.init(
            context,
            message: either.fold(
              (f) => f?.message ?? f?.error,
              (r) => r?.message ?? r?.details,
            ),
            icon: either.fold((_) => null, (r) => Icons.check_circle_rounded),
            iconColor: either.fold((_) => null, (r) => AppColors.successGreen),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (r) => r.popRoute ? (_) => navigator.pop() : null,
            ),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  _LandlordPropertyDetailScreenState createState() =>
      _LandlordPropertyDetailScreenState();
}

class _LandlordPropertyDetailScreenState
    extends State<LandlordPropertyDetailScreen>
    with AutomaticKeepAliveClientMixin<LandlordPropertyDetailScreen> {
  final PanelController __panelController = PanelController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: Toolbar(
        // title: widget,
        headline: BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
          builder: (c, s) {
            final _state = s.property?.name?.getOrEmpty?.removeNewLines();
            final _const = widget.property?.name?.getOrEmpty?.removeNewLines();
            return AutoSizeText(
              "${_state ?? _const}",
              wrapWords: false,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            );
          },
        ),
        actions: [
          BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
            builder: (c, s) => Hero(
              tag: Constants.kAddEditPropertyHeroTag,
              child: AppIconButton(
                child: Icon(Icons.edit_outlined),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                tooltip: "Update Property",
                onPressed: () async {
                  // Await navigate to edit screen
                  await navigator.pushLandlordAddPropertyScreen(
                    property: s.property ?? widget.property,
                  );
                  // Update property on pop()
                  await c.read<LandlordPropertyCubit>().get(
                        property: widget.property,
                      );
                },
              ),
            ),
          ),
          //
          AppIconButton(
            // onPressed: () => context.read<LandlordPropertyCubit>().delete(
            //       property: widget.property,
            //     ),
            onPressed: () {},
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            child: Icon(Icons.delete_outline_outlined),
            tooltip: "Delete Property",
          ),
        ],
      ),
      body: SlidingUpPanel(
        panelSnapping: false,
        backdropTapClosesPanel: true,
        backdropEnabled: true,
        backdropOpacity: 0.0,
        controller: __panelController,
        color: Helpers.optionOf(
          Colors.white,
          AppColors.secondaryColor.shade600,
        ),
        snapPoint: 0.7,
        defaultPanelState: PanelState.OPEN,
        padding: EdgeInsets.only(top: App.shortest * 0.04),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        header: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: double.infinity,
            minWidth: App.width,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: App.height * 0.007,
              width: App.width * 0.35,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ),
        panel: _PanelBuilder(),
        body: Stack(
          children: [
            _PropertyDetailBody(property: widget.property),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigator.pushLandlordAddTenantScreen(
          property: widget.property,
        ),
        tooltip: "Assign apartment to a Tenant",
        heroTag:
            "${Constants.kAssignTenantToPropHeroTag}-${widget.property?.id?.value}",
        child: Icon(
          Icons.person_add,
          color: Helpers.computeLuminance(AppColors.accentColor),
        ),
      ),
    );
  }
}

class _PanelBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: ListView(
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Helpers.appPadding,
              vertical: App.shortest * 0.04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SubtitledHeader(text: "Tenants"),
                //
                Flexible(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        final state =
                            context.read<LandlordPropertyCubit>().state;

                        return navigator.pushLandlordTenantsListingScreen(
                          property: state.property,
                          tenants: state.tenants,
                        );
                      },
                      borderRadius: BorderRadius.circular(50.0),
                      child: BlocBuilder<LandlordPropertyCubit,
                          LandlordPropertyState>(
                        builder: (c, s) => Visibility(
                          visible: !s.tenants.isEmpty(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                              vertical: 7.0,
                            ),
                            child: AutoSizeText(
                              "See all",
                              style: TextStyle(
                                fontSize: 14.5,
                                color: App.theme.accentColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
            builder: (c, s) {
              final int _count =
                  ((App.longest * 0.5) / (App.longest * 0.09)).ceil();

              final KtList<User> tenants = s.tenants.take(_count);

              return PortalEntry(
                visible: s.isLoading,
                portal: App.circularLoadingOverlay,
                child: Visibility(
                  visible: !tenants.isEmpty(),
                  replacement: Center(
                    child: SizedBox(
                      height: App.shortest * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            "No Tenant found on this property!",
                            maxLines: 1,
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding:
                        EdgeInsets.symmetric(horizontal: App.shortest * 0.03),
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: tenants.size,
                    separatorBuilder: (c, i) => Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: App.shortest * 0.02),
                      child: Divider(height: 5.0),
                    ),
                    itemBuilder: (c, i) => TenantListTile<User>(
                      model: tenants.getOrNull(i),
                      padding: EdgeInsets.only(
                          bottom: i == tenants.lastIndex ? 30.0 : 0.0),
                      onPressed: (value) async {},
                      tenant: tenants.getOrNull(i),
                      subtitle:
                          tenants.getOrNull(i)?.apartment?.name?.getOrEmpty,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _PropertyDetailBody extends StatelessWidget {
  final LandlordProperty property;

  const _PropertyDetailBody({
    Key key,
    this.property,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
      builder: (c, s) {
        final _s = s.property;

        // Assign number of apartments
        final numberOfApartments = _s?.numberOfApartments?.getOrNull ??
            property.numberOfApartments?.getOrNull ??
            0;
        // Assign number rented
        final numberRented = _s?.numberOfRentedApartment?.getOrNull ??
            property.numberOfRentedApartment?.getOrNull ??
            0;

        return Column(
          children: [
            Hero(
              tag: s.property?.id?.value ?? property?.id?.value,
              child: Container(
                height: App.height * 0.17,
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                  horizontal: Helpers.appPadding,
                ).copyWith(top: Helpers.appPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Material(
                    color: s.property?.color?.shade300,
                    elevation: 2.0,
                    type: MaterialType.card,
                    child: InkWell(
                      onTap: () => !s.properties.isEmpty()
                          ? navigator.pushViewAllApartmentScreen(
                              landlordProperty: s.property,
                            )
                          : null,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: App.shortest * 0.05,
                          // vertical: App.shortest * 0.05,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        "$numberRented",
                                        softWrap: true,
                                        style: Theme.of(c)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                              color: AppColors.accentColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        maxLines: 1,
                                      ),
                                      AutoSizeText(
                                        "Rented out",
                                        softWrap: true,
                                        style: Theme.of(c)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                              color: Theme.of(c)
                                                  .textTheme
                                                  .subtitle1
                                                  .color
                                                  .withOpacity(0.6),
                                            ),
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                // Spacer(),
                                //
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      AutoSizeText(
                                        "$numberOfApartments",
                                        softWrap: true,
                                        style: Theme.of(c)
                                            .textTheme
                                            .headline5
                                            .copyWith(
                                              color: AppColors.accentColor,
                                              fontWeight: FontWeight.w600,
                                            ),
                                        maxLines: 1,
                                      ),
                                      AutoSizeText(
                                        "Total Apartments",
                                        softWrap: true,
                                        style: Theme.of(c)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                              color: Theme.of(c)
                                                  .textTheme
                                                  .subtitle1
                                                  .color
                                                  .withOpacity(0.6),
                                            ),
                                        maxLines: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //
                            LinearProgressIndicator(
                              value: 0.45,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.07),
            //
            Hero(
              tag:
                  "${Constants.kAddApartmentToPropHeroTag}-${property?.id?.value}",
              child: Material(
                color: Colors.transparent,
                child: AppElevatedButton(
                  onPressed: () async {
                    // Await navigate to edit screen
                    await navigator.pushLandlordAddApartmentScreen(
                      property: property,
                    );
                    // Update property on pop()
                    await c
                        .read<LandlordPropertyCubit>()
                        .get(property: s.property);
                  },
                  disabled: s.isLoading,
                  width: App.shortest * 0.3,
                  height: 20,
                  text: "Add Apartment",
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
