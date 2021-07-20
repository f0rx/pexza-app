import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:pexza/features/onboarding/domain/entities/on_boarding_model.dart';
import 'package:pexza/utils/utils.dart';

class OnBoardingScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocConsumer<AdminUtilsCubit, AdminUtilsState>(
      listenWhen: (p, c) =>
          p.response.getOrElse(() => null) != c.response.getOrElse(() => null),
      listener: (c, s) => s.response.fold(
        () => null,
        (either) => either.fold(
          (f) => BottomAlertDialog.init(
            context,
            message: f?.message ?? f?.details,
          ),
          (r) => BottomAlertDialog.init(
            context,
            duration: const Duration(seconds: 4),
            message: r?.message ?? r?.details ?? r.status,
            position: BottomAlertDialogPosition.top,
            icon: Icons.check_circle,
            iconColor: AppColors.successGreen,
            shouldIconPulse: false,
          ),
        ),
      ),
      builder: (context, state) => PortalEntry(
        visible: context.watch<AdminUtilsCubit>().state.isLoading,
        portal: App.waveLoadingBar,
        child: this,
      ),
    );
  }
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnBoarding> _list = OnBoarding.list;

  final PageController controller =
      PageController(keepPage: true, initialPage: 0);

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      if (controller.page.round() != currentIndex) {
        setState(() => currentIndex = controller.page.round());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: PageView.builder(
              itemCount: _list.length,
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) =>
                  _onBoardingScreens(_list.elementAt(i), controller),
            ),
          ),
          //
          Positioned(
            left: App.height * 0.02,
            right: App.height * 0.02,
            bottom: App.height * 0.02,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: _list.length,
                  effect: ExpandingDotsEffect(
                    expansionFactor: 3.5,
                    activeDotColor: App.theme.accentColor,
                    radius: 100.0,
                    spacing: 6.0,
                    dotHeight: App.height * 0.006,
                    dotWidth: 8.0,
                    dotColor: AppColors.accentColor.shade100,
                  ),
                ),
                //
                Visibility(
                  visible: currentIndex != _list.length - 1,
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Material(
                    color: AppColors.accentColor,
                    elevation: 2.0,
                    clipBehavior: Clip.antiAlias,
                    type: MaterialType.circle,
                    child: InkWell(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Icon(
                          Icons.navigate_next_rounded,
                          color: Colors.white,
                          size: 28.0,
                        ),
                      ),
                      onTap: () => controller.nextPage(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Visibility(
        visible: env.flavor.fold(
          dev: () => true,
          prod: () => Helpers.checkIsBrendan(context),
        ),
        child: FloatingActionButton(
          backgroundColor: AppColors.errorRed,
          child: Icon(Icons.auto_delete_rounded, color: Colors.white),
          onPressed: () => runDatabaseCleanup(context),
        ),
      ),
    );
  }

  Widget _onBoardingScreens(OnBoarding item, PageController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image(
              image: AssetImage(item.asset),
              fit: BoxFit.contain,
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: AutoSizeText(
                    "${item.title}",
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: App.theme.accentColor,
                    ),
                    softWrap: true,
                    wrapWords: true,
                  ),
                ),
                //
                VerticalSpace(height: App.height * 0.035),
                //
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Helpers.descriptionPadding),
                    child: AutoSizeText(
                      "${item.description}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                      softWrap: true,
                      wrapWords: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          Flexible(
            child: Visibility(
              visible: _list.indexOf(item) == _list.length - 1,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: AppElevatedButton(
                onPressed: () =>
                    navigator.popAndPush(Routes.profileSelectScreen),
                text: "Get Started!",
                width: App.width * 0.28,
                height: App.height * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
