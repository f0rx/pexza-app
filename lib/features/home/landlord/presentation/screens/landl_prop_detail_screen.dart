library landl_prop_detail_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';

part '../widgets/landlord_prop_details.part.dart';

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
            onPressed: () {
              PopupDialog.confirmation(
                title: 'Delete Property',
                description: 'Are you sure you want to delete '
                    '${widget.property?.name?.getOrEmpty}?\n\nThis action is not reversible!',
                popupIcon: Icons.delete_forever,
                colorScheme: PopupAlertDialogColorScheme.danger,
                onPositiveButtonPressed: () => context
                    .read<LandlordPropertyCubit>()
                    .delete(property: widget.property),
              ).render(context);
            },
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
        minHeight: 70,
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
        panel: _PanelBuilder(__panelController),
        body: _PropertyDetailBody(
          property: widget.property,
          controller: __panelController,
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
  final PanelController _controller;

  const _PanelBuilder([this._controller]);

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: ScrollController(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Helpers.appPadding,
            vertical: App.shortest * 0.04,
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubtitledHeader(text: "Tenants"),
                  //
                  Flexible(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () async => await _controller.close(),
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
                                  fontSize: 17.sp,
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
              //
              Positioned(
                top: 0,
                right: 0,
                child:
                    BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
                  buildWhen: (p, c) => !c.isLoadingNextPage,
                  builder: (c, s) => Visibility(
                    visible: s.isLoading,
                    child: Helpers.circularLoader(
                      height: 20,
                      width: 20,
                      stroke: 2,
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

            return Visibility(
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
              child: _ListViewBuilder(tenants: tenants.reversed()),
            );
          },
        ),
      ],
    );
  }
}
