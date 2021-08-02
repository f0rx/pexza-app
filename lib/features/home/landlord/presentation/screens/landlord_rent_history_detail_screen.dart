import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/core/presentation/widgets/index.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render LandlordRentHistoryDetailScreen.
class LandlordRentHistoryDetailScreen extends StatelessWidget
    with AutoRouteWrapper {
  final PropertyRentHistory history;

  const LandlordRentHistoryDetailScreen({
    Key key,
    @required this.history,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Payment / Renewal Details'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.shortest * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubtitledHeader(text: "About Property"),
            //
            VerticalSpace(height: App.shortest * 0.03),
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
                    leading: "Property Name",
                    trailing: "${history?.property?.name?.getOrEmpty}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Property Address",
                    trailing: "${history?.property?.street?.getOrEmpty}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Apartment Name",
                    trailing: "${history?.apartment?.name?.getOrEmpty}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Tenant's Name",
                    trailing: "${history?.tenant?.fullName}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Apartment Price",
                    trailing: "${history?.amount?.getOrEmpty}"
                        .asCurrency(symbol: true),
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Apartment Status",
                    trailing: "${history?.status?.name}".capitalizeFirst(),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.07),
            //
            SubtitledHeader(text: "Recent Payment Info"),
            //
            VerticalSpace(height: App.shortest * 0.03),
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
                    leading: "Payment Plan",
                    trailing: "${history?.plan?.name}".capitalizeFirst(),
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Invoice Number",
                    trailing: "${history?.recentPayment?.invoiceNo?.value}",
                    onTrailingPressed: () {
                      print("Copied invoice number successfully!");
                    },
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Amount paid for apartment",
                    maxLeadingLines: 2,
                    trailing: "${history?.recentPayment?.amount?.getOrEmpty}"
                        .asCurrency(symbol: true),
                  ),

                  //
                  PropertyInfoWidget(
                    leading: "Charges Incurred",
                    trailing: "${history?.recentPayment?.charges?.getOrEmpty}"
                        .asCurrency(symbol: true, decimal: true),
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Total paid by "
                        "${history?.tenant?.firstName?.getOrEmpty}",
                    maxLeadingLines: 2,
                    trailing:
                        "${history?.recentPayment?.totalCharged?.getOrEmpty}"
                            .asCurrency(symbol: true, decimal: true),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.07),
            //
            SubtitledHeader(text: "Rent Renewal / Expiration Info"),
            //
            VerticalSpace(height: App.shortest * 0.03),
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
                    leading: "Rent expires on",
                    trailing:
                        "${WithdrawalHistory.custom(history?.expiresOn, year: true)}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading: "Rent duration",
                    trailing: "${history?.recentPayment?.duration?.getOrEmpty} "
                            "${history?.plan?.fold(yearly: (_) => 'year', monthly: (_) => 'month')}"
                        .pluralize(
                      history?.recentPayment?.duration?.getOrEmpty ?? 0,
                    ),
                  ),
                  //
                  PropertyInfoWidget(
                    leading:
                        "${history?.tenant?.firstName?.getOrEmpty}'s rent is effective from ",
                    maxLeadingLines: 2,
                    trailing: "${WithdrawalHistory.custom(
                      history?.recentPayment?.effectiveFrom,
                      year: true,
                    )}",
                  ),
                  //
                  PropertyInfoWidget(
                    leading:
                        "${history?.tenant?.firstName?.getOrEmpty} can renew this rent",
                    maxLeadingLines: 2,
                    trailing: "${history.canRenew ? 'Yes' : 'No'}",
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.1),
          ],
        ),
      ),
    );
  }
}
