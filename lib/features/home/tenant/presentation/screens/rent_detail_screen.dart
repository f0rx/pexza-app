import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/tenant/presentation/managers/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/helpers.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class TenantRentDetailScreen extends StatelessWidget with AutoRouteWrapper {
  final Assignment assignment;

  TenantRentDetailScreen({Key key, this.assignment}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TenantAssignmentCubit>(),
      child: BlocConsumer<TenantAssignmentCubit, TenantAssignmentState>(
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
              (r) => r.popRoute ? (_) => navigator.pop(true) : null,
            ),
          ),
        ),
        builder: (c, s) => PortalEntry(
          visible: c.watch<TenantAssignmentCubit>().state.isLoading,
          portal: App.circularLoadingOverlay,
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Rent Details",
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.015),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              "Rent Info",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.height * 0.02),
            //
            Container(
              decoration: BoxDecoration(
                color: Helpers.optionOf(Colors.white, AppColors.secondaryColor),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PropertyInfoWidget(
                    leading: "Apartment",
                    trailing: "${assignment.apartment?.name?.getOrEmpty}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Property Owner",
                    trailing: "${assignment.landlord.fullName}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Property Type",
                    trailing:
                        "${assignment.landlordApartment?.property?.houseType?.getOrEmpty}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Property Location",
                    trailing:
                        "${assignment.apartment.property?.street?.getOrEmpty}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Payment Plan",
                    trailing: "${assignment.plan.name}".capitalizeFirst(),
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Rent Duration",
                    trailing: !assignment.expired
                        ? "< ${assignment.rentDuration}"
                        : "Expired!",
                    textColor: assignment.expired ? AppColors.errorRed : null,
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Rent Amount",
                    trailing: "${assignment?.country?.currency?.name}",
                    showDivider: false,
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.height * 0.04),
            //
            AutoSizeText(
              "Renewal Info",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.height * 0.02),
            //
            Container(
              decoration: BoxDecoration(
                color: Helpers.optionOf(Colors.white, AppColors.secondaryColor),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PropertyInfoWidget(
                    leading: "Due Date",
                    trailing: formatDate(
                        assignment.expiresOn, [dd, ' - ', mm, ' - ', yyyy]),
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Renewal Amount",
                    trailing:
                        "${assignment?.country?.currency?.type} ${assignment.amount.getOrEmpty}",
                    showDivider: false,
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.height * 0.04),
            //
            AppElevatedButton(
              onPressed: () => navigator.pushTenantRentPaymentScreen(
                assignment: assignment,
              ),
              text: "Renew Now",
            ),
          ],
        ),
      ),
    );
  }
}
