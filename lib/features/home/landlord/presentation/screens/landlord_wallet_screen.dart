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
      create: (_) => getIt<LandlordWalletCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Wallet'),
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 0.27.sh,
                maxWidth: double.infinity,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Helpers.appPadding,
                ).copyWith(top: App.shortest * 0.04),
                child: CardWidget(),
              ),
            ),
            //
            Positioned.fill(
              top: App.height * 0.25,
              child: ClipRRect(
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.0),
                  topRight: Radius.circular(36.0),
                ),
                child: Material(
                  color: Helpers.optionOf(
                    Colors.white,
                    AppColors.secondaryColor.shade400,
                  ),
                  elevation: 3.0,
                  type: MaterialType.card,
                  child: Container(
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
                            //
                            InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(50.0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                  vertical: 7.0,
                                ),
                                child: SubtitledHeader(
                                  text: 'See all',
                                  fontSize: 15.0,
                                  color: AppColors.accentColor,
                                ),
                              ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
