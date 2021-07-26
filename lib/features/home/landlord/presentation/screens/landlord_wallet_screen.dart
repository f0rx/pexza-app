import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render LandlordWalletScreen.
class LandlordWalletScreen extends StatelessWidget with AutoRouteWrapper {
  const LandlordWalletScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordWithdrawalCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Wallet'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LimitedBox(
              maxHeight: 180,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Helpers.appPadding,
                ).copyWith(top: App.shortest * 0.04),
                child: CardWidget(),
              ),
            ),
            //
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
                vertical: Helpers.appPadding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SubtitledHeader(
                        text: 'Transaction History',
                        fontSize: 18.0,
                      ),
                    ],
                  ),
                  //
                  VerticalSpace(height: App.shortest * 0.2),
                  //
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "No Transaction History..",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  //
                  ...[],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
