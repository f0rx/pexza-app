import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pexza/utils/utils.dart';

mixin AppAssets {
  static const ASSETS_DIR = "assets";
  static const SVG_DIR = "$ASSETS_DIR/svgs";
  static const IMAGES_DIR = "$ASSETS_DIR/images";
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const LOGO_IMAGES_DIR = "$IMAGES_DIR/logo";
  static const LANDLORD_IMAGES_DIR = "$IMAGES_DIR/landlord";
  static const ONBOARDING_MAIN_IMAGES_DIR = "$IMAGES_DIR/onboarding/main";
  static const ONBOARDING_PROFILE_IMAGES_DIR = "$IMAGES_DIR/onboarding/profile";

  /////////////  SVGS /////////////
  static const AUTH_SVG_DIR = "$SVG_DIR/auth";
  static const LANDLORD_SVG_DIR = "$SVG_DIR/landlord";
  static const ONBOARDING_SVG_DIR = "$SVG_DIR/onboarding";

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static const logo = "$LOGO_IMAGES_DIR/logo.png";

  // On Boarding Assets
  static const String onBoarding1 = '$ONBOARDING_MAIN_IMAGES_DIR/1.png';
  static const String onBoarding2 = '$ONBOARDING_MAIN_IMAGES_DIR/2.png';
  static const String onBoarding3 = '$ONBOARDING_MAIN_IMAGES_DIR/3.png';

  // Profile Select Assets
  static const String owner = '$ONBOARDING_PROFILE_IMAGES_DIR/owner.png';
  static const String tenant = '$ONBOARDING_PROFILE_IMAGES_DIR/tenant.png';

  // Landlord Assets
  static const String emptyProps = '$LANDLORD_IMAGES_DIR/empty_props.png';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static SvgPicture wavingHand = SvgPicture.asset(
    '$SVG_DIR/waving-hand.svg',
    height: 18,
    width: 18,
    color: Colors.amberAccent,
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
}
