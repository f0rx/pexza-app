import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnBoardingCubit>()..init(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage("${AppAssets.logo}"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: App.height * 0.05,
              child: SpinKitWave(
                color: Theme.of(context).accentColor,
                size: 30.0,
                duration: Duration(milliseconds: 1200),
                type: SpinKitWaveType.center,
                itemCount: 7,
              ),
            ),
          ],
        ),
        //
        bottomSheet: BlocConsumer<OnBoardingCubit, OnBoardingState>(
          listenWhen: (p, c) => c.status.isRight(),
          listener: (context, state) => context
              .read<OnBoardingCubit>()
              .state
              .status
              .fold(
                (_) => null,
                (conn) =>
                    conn ? navigator.popAndPush(Routes.onBoardingScreen) : null,
              ),
          builder: (context, state) {
            return Visibility(
              visible: !state.isLoading,
              child: Container(
                height: 23,
                decoration: BoxDecoration(
                  color: state.status.fold(
                    (failure) => Colors.grey,
                    (_) => AppColors.successGreen,
                  ),
                ),
                child: Center(
                  child: AutoSizeText(
                    state.status.fold(
                      (failure) => failure.message,
                      (_) => "Back online",
                    ),
                    minFontSize: 13.0,
                    maxLines: 1,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
