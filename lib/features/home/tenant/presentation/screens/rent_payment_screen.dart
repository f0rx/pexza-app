import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class TenantRentPaymentScreen extends StatelessWidget with AutoRouteWrapper {
  final Property property;

  const TenantRentPaymentScreen({Key key, this.property}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Pay Rent"),
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
              "Renewal Info",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
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
            VerticalSpace(height: App.longest * 0.04),
            //
            AutoSizeText(
              "Renewal Duration",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            Placeholder(
              fallbackHeight: 60,
              strokeWidth: 1.0,
            ),
            //
            VerticalSpace(height: App.longest * 0.04),
            //
            AppElevatedButton(
              onPressed: () {},
              text: "Pay Rent",
            ),
          ],
        ),
      ),
    );
  }
}
