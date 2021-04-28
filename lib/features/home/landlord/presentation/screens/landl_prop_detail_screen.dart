import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

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
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: context
                .watch<LandlordPropertyCubit>()
                .state
                .property
                ?.name
                ?.getOrEmpty
                ?.removeNewLines() ??
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
        panelSnapping: true,
        backdropTapClosesPanel: true,
        backdropEnabled: true,
        backdropOpacity: 0.0,
        color: Theme.of(context).primaryColor,
        snapPoint: 0.7,
        defaultPanelState: PanelState.OPEN,
        padding: EdgeInsets.symmetric(
          horizontal: Helpers.appPadding,
        ).copyWith(top: App.shortest * 0.04),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        header: Text("Header"),
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        body: Stack(
          children: [
            _PropertyDetailBody(property: widget.property),
          ],
        ),
      ),
      floatingActionButton:
          BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
        builder: (context, state) => FloatingActionButton(
          onPressed: () => navigator.pushLandlordAddTenantScreen(),
          tooltip: "Assign apartment to a Tenant",
          heroTag:
              "assign-${state.property?.id?.value ?? widget.property?.id?.value}",
          child: Icon(
            Icons.person_add,
            color: Helpers.computeLuminance(AppColors.accentColor),
          ),
        ),
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
      builder: (context, state) => Hero(
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
    );
  }
}
