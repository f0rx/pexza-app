import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';

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
      create: (_) => getIt<LandlordPropertyCubit>()..get(property: property),
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
    return Scaffold(
      appBar: Toolbar(
        title: widget.property?.name?.getOrEmpty?.removeNewLines() ??
            widget.property?.name?.getOrEmpty?.removeNewLines(),
        actions: [
          BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
            builder: (c, s) => Hero(
              tag: Constants.kAddEditPropertyHeroTag,
              child: IconButton(
                onPressed: () => navigator.pushLandlordAddPropertyScreen(
                  property: s.property ?? widget.property,
                ),
                icon: Icon(Icons.edit_outlined),
                tooltip: "Update Property",
              ),
            ),
          ),
          //
          IconButton(
            // onPressed: () => context.read<LandlordPropertyCubit>().delete(
            //       property: property,
            //     ),
            onPressed: () {},
            icon: Icon(Icons.delete_outline_outlined),
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
    return ListView(
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
                    onTap: () => navigator.pushLandlordTenantsListingScreen(),
                    borderRadius: BorderRadius.circular(50.0),
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
            ],
          ),
        ),
        //
        ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.03),
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 5,
          separatorBuilder: (c, i) => Padding(
            padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.02),
            child: Divider(height: 5.0),
          ),
          itemBuilder: (c, index) => Container(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: App.longest * 0.075,
                    padding:
                        EdgeInsets.symmetric(horizontal: App.shortest * 0.03),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: App.longest * 0.055,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              AppAssets.tenant,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        //
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ListTile(
                                  dense: true,
                                  title: AutoSizeText(
                                    "Damilola Adebowale",
                                  ),
                                  subtitle: AutoSizeText(
                                    "Apartment 3",
                                  ),
                                ),
                              ),
                              //
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15.0,
                                color: Helpers.computeLuminance(
                                  Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
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
      builder: (context, state) => Column(
        children: [
          Hero(
            tag: state.property?.id?.value ?? property?.id?.value,
            child: Container(
              height: App.height * 0.17,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: Helpers.appPadding),
              child: Visibility(
                visible: !state.isLoading,
                replacement: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: RectangleShimmer(
                    width: double.infinity,
                    height: double.infinity,
                    boxColor: Colors.grey.shade400,
                    shimmerBaseColor: property.color.shade300,
                    shimmerHighlightColor: property.color.shade100,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: state.property?.color?.shade300,
                  ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  "15",
                                  softWrap: true,
                                  style: Theme.of(context)
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: Theme.of(context)
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
                          Spacer(),
                          //
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                AutoSizeText(
                                  "${state.apartments.size}",
                                  softWrap: true,
                                  style: Theme.of(context)
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        color: Theme.of(context)
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
          //
          VerticalSpace(height: App.shortest * 0.07),
          //
          Hero(
            tag:
                "${Constants.kAddApartmentToPropHeroTag}-${property?.id?.value}",
            child: Material(
              color: Colors.transparent,
              child: AppElevatedButton(
                onPressed: () => navigator.pushLandlordAddApartmentScreen(
                  property: property,
                ),
                width: App.shortest * 0.3,
                height: 20,
                text: "Add Apartment",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
