import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:pexza/features/onboarding/domain/entities/on_boarding_model.dart';
import 'package:pexza/utils/utils.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
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
        setState(() {
          currentIndex = controller.page.round();
        });
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
    );
  }

  Widget _onBoardingScreens(OnBoarding item, PageController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(
              item.asset,
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
                SizedBox(height: App.height * 0.035),
                //
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.width * 0.05),
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
              child: ElevatedButton(
                onPressed: () => navigator.pushProfileSetupScreen(),
                child: AutoSizeText(
                  "GET STARTED!",
                  style: TextStyle(fontSize: 16.0),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                    (states) => AppColors.accentColor.shade600,
                  ),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(color: Colors.white),
                  ),
                  elevation: MaterialStateProperty.all(1.0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
