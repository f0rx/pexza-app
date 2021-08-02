import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pexza/widgets/widgets.dart';

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
              child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
                builder: (context, state) => Visibility(
                  visible: state.isConnected.isRight() == true,
                  child: SpinKitWave(
                    color: Theme.of(context).accentColor,
                    size: 30.0,
                    duration: Duration(milliseconds: 1200),
                    type: SpinKitWaveType.center,
                    itemCount: 7,
                  ),
                ),
              ),
            ),
          ],
        ),
        //
        bottomSheet: BlocConsumer<OnBoardingCubit, OnBoardingState>(
          listener: (context, state) {
            context.read<OnBoardingCubit>().state.isConnected.fold(
                  (_) => null,
                  (_) => context.read<OnBoardingCubit>().state.hasInternet.fold(
                        (_) => null,
                        (_) => BlocProvider.of<AuthWatcherCubit>(App.context)
                            .listenToAuthChanges(
                          (either) => either?.fold(
                            (failure) => failure?.foldCode(
                              orElse: null,
                              is1101: () => navigator.pushAndRemoveUntil(
                                Routes.verifyEmailScreen,
                                (route) => false,
                              ),
                            ),
                            (option) => option.fold(
                              () => navigator.pushAndRemoveUntil(
                                Routes.onBoardingScreen,
                                (route) => false,
                              ),
                              (user) => user?.role?.fold(
                                tenant: () => navigator.pushAndRemoveUntil(
                                  Routes.tenantHomeScreen,
                                  (route) => false,
                                ),
                                landlord: () => navigator.pushAndRemoveUntil(
                                  Routes.landlordHomeScreen,
                                  (route) => false,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                );
          },
          builder: (context, state) {
            return Visibility(
              visible: !state.isLoading,
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                  color: state.isConnected.fold(
                    (failure) => Helpers.optionOf(
                      Colors.grey,
                      Colors.grey.shade700,
                      context: context,
                    ),
                    (_) => state.hasInternet.fold(
                      (failure) => Helpers.optionOf(
                        Colors.grey,
                        Colors.grey.shade700,
                        context: context,
                      ),
                      (_) => AppColors.accentColor.shade400,
                    ),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      state.isConnected.fold(
                        (failure) => Icon(Icons.error,
                            size: 20.0, color: Colors.white54),
                        (_) => state.hasInternet.fold(
                          (failure) => Icon(
                            Icons.cloud_off_rounded,
                            size: 20.0,
                            color: Colors.white54,
                          ),
                          (_) => Icon(
                            Icons.cloud_done_rounded,
                            size: 20.0,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      //
                      HorizontalSpace(width: App.shortest * 0.01),
                      //
                      AutoSizeText(
                        state.isConnected.fold(
                          (failure) => failure.message,
                          (_) => state.hasInternet.fold(
                            (failure) => failure.message,
                            (_) => "Online",
                          ),
                        ),
                        minFontSize: 13.0,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
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
