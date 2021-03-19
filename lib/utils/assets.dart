import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pexza/utils/utils.dart';

mixin AppAssets {
  static const ASSETS_DIR = "assets";
  static const SVG_DIR = "$ASSETS_DIR/svgs";
  static const IMAGES_DIR = "$ASSETS_DIR/images";
  // Sub-folders
  static const AUTH_SVG_DIR = "$SVG_DIR/auth";
  static const HOME_SVG_DIR = "$SVG_DIR/home";
  static const ONBOARDING_IMAGES_DIR = "$IMAGES_DIR/onboarding";
  static const ONBOARDING_SVG_DIR = "$SVG_DIR/onboarding";

  static const logo = "$IMAGES_DIR/logo.png";

  // On Boarding Assets
  static String onBoarding1 = '$ONBOARDING_IMAGES_DIR/onboarding_1.png';
  static String onBoarding2 = '$ONBOARDING_IMAGES_DIR/onboarding_2.png';
  static String onBoarding3 = '$ONBOARDING_IMAGES_DIR/onboarding_3.png';

  static SvgPicture mailTo = SvgPicture.asset(
    '$AUTH_SVG_DIR/mail_to.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture unlockPassword = SvgPicture.asset(
    '$AUTH_SVG_DIR/unlock_password.svg',
    height: App.height * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture emailSent = SvgPicture.asset(
    '$AUTH_SVG_DIR/letter.svg',
    height: App.height * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture upgrade = SvgPicture.asset(
    '$HOME_SVG_DIR/upgrade.svg',
    height: App.width * 0.38,
    width: App.width * 0.38,
    fit: BoxFit.contain,
  );

  static SvgPicture joyride = SvgPicture.asset(
    '$HOME_SVG_DIR/joyride.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture friendsOnline = SvgPicture.asset(
    '$HOME_SVG_DIR/friends_online.svg',
    height: App.width * 0.55,
    width: App.width * 0.55,
    fit: BoxFit.contain,
  );

  static SvgPicture notify = SvgPicture.asset(
    '$HOME_SVG_DIR/notify.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture newsLetter = SvgPicture.asset(
    '$HOME_SVG_DIR/newsletter.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture creditCard = SvgPicture.asset(
    '$HOME_SVG_DIR/credit_card.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture exit = SvgPicture.asset(
    '$HOME_SVG_DIR/exit.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture info = SvgPicture.asset(
    '$HOME_SVG_DIR/info.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture notification = SvgPicture.asset(
    '$HOME_SVG_DIR/notification.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture night = SvgPicture.asset(
    '$HOME_SVG_DIR/night.svg',
    height: 24,
    width: 24,
    fit: BoxFit.contain,
    color: App.theme.accentColor,
  );

  static SvgPicture user = SvgPicture.asset(
    '$HOME_SVG_DIR/user.svg',
    height: 22,
    width: 22,
    fit: BoxFit.contain,
  );

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook = SvgPicture.asset(
    '$AUTH_SVG_DIR/facebook.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture lock = SvgPicture.asset(
    '$AUTH_SVG_DIR/lock.svg',
    height: App.width * 0.35,
    width: App.width * 0.35,
    fit: BoxFit.contain,
  );

  static SvgPicture cardChip = SvgPicture.asset(
    '$HOME_SVG_DIR/card_chip.svg',
    clipBehavior: Clip.antiAlias,
    fit: BoxFit.contain,
    width: 50,
  );
}
