import 'package:flutter/widgets.dart';
import 'package:pexza/utils/utils.dart';

class OnBoarding {
  final String title;
  final String description;
  final String asset;

  OnBoarding({
    @required this.title,
    @required this.description,
    @required this.asset,
  });

  static List<OnBoarding> get list => [
        OnBoarding(
          title: "Manage Tenants",
          description: "Pexza allows you effectively manage your tenants, "
              "their repair needs and house rent payment plans.",
          asset: AppAssets.onBoarding1,
        ),
        OnBoarding(
          title: "Pay Rents",
          description: "A Tenant? Pexza offers an integrated payment "
              "gateway to handle all your rent schedule and payment needs.",
          asset: AppAssets.onBoarding2,
        ),
        OnBoarding(
          title: "Request Maintenance",
          description:
              "Make complains or request repair and maintenance services directly within a few clicks.",
          asset: AppAssets.onBoarding3,
        ),
      ];
}
