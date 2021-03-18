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
      create: (_) => getIt<OnBoardingCubit>(),
      child: BlocListener<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
          state.status.fold(
            (l) => print(l),
            (r) => print("You are connected"),
          );
        },
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
                  child: Image.asset(
                    "${AppAssets.logo}",
                    width: App.width * 0.3,
                    height: App.width * 0.3,
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
        ),
      ),
    );
  }
}
