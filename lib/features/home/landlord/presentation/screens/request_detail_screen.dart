import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:intl/intl.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';

class LandlordMaintenanceRequestDetailScreen extends StatelessWidget
    with AutoRouteWrapper {
  final Maintenance maintenance;

  const LandlordMaintenanceRequestDetailScreen({
    Key key,
    this.maintenance,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordMaintenanceCubit>()..init(maintenance),
      child: BlocConsumer<LandlordMaintenanceCubit, LandlordMaintenanceState>(
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
              (r) => (_) => navigator.pop(true),
            ),
          ),
        ),
        buildWhen: (p, c) =>
            p.maintenances.isEmpty() && !c.maintenances.isEmpty(),
        builder: (c, s) => PortalEntry(
          visible: c.watch<LandlordMaintenanceCubit>().state.isLoading,
          portal: App.circularLoadingOverlay,
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        bottomSheetTheme: Theme.of(context).bottomSheetTheme.copyWith(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
      ),
      child: Scaffold(
        appBar: Toolbar(title: "Request Details"),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          physics: Helpers.physics,
          padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
              .copyWith(top: App.shortest * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitledHeader(
                text: "Request Info",
              ),
              //
              VerticalSpace(height: App.shortest * 0.04),
              //
              Container(
                decoration: BoxDecoration(
                  color:
                      Helpers.optionOf(Colors.white, AppColors.secondaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PropertyInfoWidget(
                      leading: "Service Requested",
                      trailing: "${maintenance?.service?.name?.getOrEmpty}"
                          .capitalizeFirst(),
                    ),
                    //
                    PropertyInfoWidget(
                      leading: "Urgency",
                      trailing: UrgencyResolver(
                        maintenance?.urgency?.getOrEmpty,
                      ).value,
                    ),
                    //
                    PropertyInfoWidget(
                      leading: "Request Status",
                      trailing:
                          "${maintenance?.status?.name}"?.capitalizeFirst(),
                    ),
                    //
                    PropertyInfoWidget(
                      leading: "Comment",
                      trailing: "${maintenance?.comment?.getOrEmpty}",
                      isLargeText: true,
                      showDivider: false,
                    ),
                  ],
                ),
              ),
              //
              VerticalSpace(height: App.shortest * 0.1),
              //
              SubtitledHeader(
                text: "Renewal Info",
              ),
              //
              VerticalSpace(height: App.shortest * 0.04),
              //
              Container(
                decoration: BoxDecoration(
                  color:
                      Helpers.optionOf(Colors.white, AppColors.secondaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PropertyInfoWidget(
                      leading: "Due Date",
                      trailing: DateFormat.yMMMd()
                          .format(maintenance?.assignment?.expiresOn),
                    ),
                    //
                    PropertyInfoWidget(
                      leading: "Amount",
                      showDivider: false,
                      trailing:
                          "${maintenance?.assignment?.country?.currency?.type?.name} "
                          "${maintenance?.assignment?.amount?.getOrEmpty}",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet:
            BlocBuilder<LandlordMaintenanceCubit, LandlordMaintenanceState>(
          builder: (c, s) => Container(
            height: App.height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _StatusAction(
                  disabled: s.isLoading ||
                      s.status.fold(
                        pending: () => true,
                        orElse: () => false,
                      ),
                  opacity: s.status.fold(pending: () => 0.3),
                  icon: Icons.warning,
                  color: AppColors.yellow,
                  tooltip: "Mark as pending",
                  onPressed: () =>
                      context.read<LandlordMaintenanceCubit>().update(
                            status: MaintenanceStatus.pending,
                            id: maintenance?.id,
                          ),
                ),
                //
                _StatusAction(
                  disabled: s.isLoading ||
                      s.status.fold(
                        fixed: () => true,
                        orElse: () => false,
                      ),
                  opacity: s.status.fold(fixed: () => 0.3),
                  icon: Icons.check_circle,
                  color: AppColors.successGreen,
                  tooltip: "Mark as done",
                  onPressed: () =>
                      context.read<LandlordMaintenanceCubit>().update(
                            status: MaintenanceStatus.fixed,
                            id: maintenance?.id,
                          ),
                ),
                //
                _StatusAction(
                  disabled: s.isLoading ||
                      s.status.fold(
                        unfixed: () => true,
                        orElse: () => false,
                      ),
                  opacity: s.status.fold(unfixed: () => 0.3),
                  icon: Icons.error,
                  color: AppColors.errorRed,
                  tooltip: "Mark as unfixed",
                  onPressed: () =>
                      context.read<LandlordMaintenanceCubit>().update(
                            status: MaintenanceStatus.unfixed,
                            id: maintenance?.id,
                          ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StatusAction extends StatelessWidget {
  final String tooltip;
  final bool disabled;
  final Color color;
  final double opacity;
  final IconData icon;
  final void Function() onPressed;

  const _StatusAction({
    Key key,
    this.tooltip,
    this.disabled = false,
    this.color = Colors.transparent,
    this.opacity = 1.0,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: AnimatedOpacity(
        opacity: opacity ?? 1.0,
        duration: Duration(milliseconds: 800),
        child: AppIconButton(
          onPressed: onPressed,
          tooltip: tooltip ?? '',
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
