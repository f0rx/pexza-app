import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';

class LandlordMaintenanceRequestScreen extends StatefulWidget
    with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordMaintenanceCubit>()..all(),
      child: BlocListener<LandlordMaintenanceCubit, LandlordMaintenanceState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.init(
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
  _LandlordMaintenanceRequestScreenState createState() =>
      _LandlordMaintenanceRequestScreenState();
}

class _LandlordMaintenanceRequestScreenState
    extends State<LandlordMaintenanceRequestScreen>
    with AutomaticKeepAliveClientMixin<LandlordMaintenanceRequestScreen> {
  final PanelController __panelController = PanelController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: Toolbar(title: "Maintenance Requests"),
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
        snapPoint: 0.5,
        maxHeight: App.longest * 0.65,
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
        panel: _MaintenancePanelBuilder(),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: BlocBuilder<LandlordMaintenanceCubit,
                  LandlordMaintenanceState>(
                builder: (c, s) => Visibility(
                  visible: s.isLoading,
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Center(
                      child: CircularProgressBar.adaptive(
                        width: 25.0,
                        height: 25.0,
                        strokeWidth: 2.5,
                        radius: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //
            _MaintenanceBodyBuilder(),
          ],
        ),
      ),
    );
  }
}

class _MaintenancePanelBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandlordMaintenanceCubit, LandlordMaintenanceState>(
      builder: (c, s) => ListView(
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
            child: SubtitledHeader(
              text: "${s?.maintenances?.size} Requests",
            ),
          ),
          //
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.03),
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: s.maintenances.size,
            separatorBuilder: (c, i) => Padding(
              padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.02),
              child: Divider(height: 5.0),
            ),
            itemBuilder: (c, index) => TenantListTile<Maintenance>(
              model: s.maintenances.getOrNull(index),
              onPressed: (value) async {
                final shouldRefresh =
                    await navigator.pushLandlordMaintenanceRequestDetailScreen(
                  maintenance: value,
                );
                if (shouldRefresh != null && shouldRefresh)
                  await c.read<LandlordMaintenanceCubit>().all();
              },
              padding: EdgeInsets.only(
                  bottom: index == s.maintenances.lastIndex ? 30.0 : 0.0),
              tenant: s.maintenances.getOrNull(index)?.assignment?.tenant,
              subtitleColor: UrgencyResolver(
                s.maintenances.getOrNull(index)?.urgency?.getOrEmpty,
              ).color,
              subtitle: UrgencyResolver(
                s.maintenances.getOrNull(index)?.urgency?.getOrEmpty,
              ).value,
            ),
          ),
        ],
      ),
    );
  }
}

class _MaintenanceBodyBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandlordMaintenanceCubit, LandlordMaintenanceState>(
      builder: (c, s) => Padding(
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.02),
        child: Stack(
          children: [
            Positioned(
              child: TextFormField(
                maxLines: 1,
                enableSuggestions: true,
                autocorrect: false,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.search,
                style: TextStyle(fontSize: 17.0),
                decoration: const InputDecoration(
                  hintText: "Search by tenant or apartment..",
                  contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    size: 20.0,
                  ),
                ),
                onChanged: (value) {},
                validator: (value) {},
                onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
