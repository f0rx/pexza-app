import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
      elevation: 6.0,
      animationDuration: Duration(milliseconds: 1200),
      borderRadius: BorderRadius.circular(Helpers.buttonRadius),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: AppAssets.eclipse1,
          ),
          //
          Positioned(
            right: 45,
            bottom: 0,
            child: AppAssets.eclipse2,
          ),
          //
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(App.shortest * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpace(height: App.shortest * 0.05),
                  //
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: AutoSizeText(
                            'Wallet Balance',
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 16.0.sp,
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                        //
                        Flexible(
                          child: AutoSizeText.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text:
                                      '${context.read<AuthWatcherCubit>().state.user.accountBalance.getOrEmpty}'
                                          .asCurrency(symbol: true)),
                            ]),
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  Flexible(
                    child: SizedBox(
                      width: App.shortest * 0.3,
                      child: TextButton(
                        onPressed: () =>
                            navigator.pushLandlordBanksListingScreen(),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.white,
                        ),
                        child: AutoSizeText(
                          'Withdraw',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: AppColors.accentColor,
                                fontSize: 15.5.sp,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
