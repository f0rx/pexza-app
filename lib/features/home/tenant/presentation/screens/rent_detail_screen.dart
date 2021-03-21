import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/home/tenant/presentation/widgets/property_info_widget.dart';
import 'package:pexza/utils/helpers.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';

class TenantRentDetailScreen extends StatelessWidget with AutoRouteWrapper {
  final Property property;

  TenantRentDetailScreen({Key key, this.property}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
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
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.height * 0.015),
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
                    leading: "Property Owner",
                    trailing: property.owner.getOrEmpty,
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Property Type",
                    trailing: property.type.getOrEmpty,
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Property Location",
                    trailing: property.location.getOrEmpty,
                  ),
                  PropertyInfoWidget(
                    leading: "Rent Duration",
                    trailing: property.plan.duration,
                  ),
                  PropertyInfoWidget(
                    leading: "Currency",
                    trailing: property.rentAmount.getOrEmpty,
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
                        property.dueDate, [dd, ' - ', mm, ' - ', yyyy]),
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Currency",
                    trailing: property.renewalAmount.getOrEmpty,
                    showDivider: false,
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.height * 0.04),
            //
            AppElevatedButton(
              onPressed: () =>
                  navigator.pushTenantRentPaymentScreen(property: property),
              text: "Renew Now",
            ),
          ],
        ),
      ),
    );
  }
}
