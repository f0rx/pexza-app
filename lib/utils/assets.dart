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
  static const String LOGO_IMAGES_DIR = "$IMAGES_DIR/logo";
  static const String LANDLORD_IMAGES_DIR = "$IMAGES_DIR/landlord";
  static const String ONBOARDING_MAIN_IMAGES_DIR =
      "$IMAGES_DIR/onboarding/main";
  static const String ONBOARDING_PROFILE_IMAGES_DIR =
      "$IMAGES_DIR/onboarding/profile";

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = "$SVG_DIR/auth";
  static const String LANDLORD_SVG_DIR = "$SVG_DIR/landlord";
  static const String ONBOARDING_SVG_DIR = "$SVG_DIR/onboarding";

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////

  static const String logo = "$LOGO_IMAGES_DIR/logo.png";

  static const String user = "$IMAGES_DIR/user.png";

  /////// APARTMENTS SAMPLE IMAGES ///////
  static const String apartment1 = "$LANDLORD_IMAGES_DIR/apartment-1.jpg";
  static const String apartment2 = "$LANDLORD_IMAGES_DIR/apartment-2.jpg";
  static const String apartment3 = "$LANDLORD_IMAGES_DIR/apartment-3.jpg";
  static const String apartment4 = "$LANDLORD_IMAGES_DIR/apartment-4.png";
  static const String apartment5 = "$LANDLORD_IMAGES_DIR/apartment-5.jpg";
  static const String apartment6 = "$LANDLORD_IMAGES_DIR/apartment-6.jpg";
  static const String apartment7 = "$LANDLORD_IMAGES_DIR/apartment-7.png";
  static const String apartment8 = "$LANDLORD_IMAGES_DIR/apartment-8.jpg";

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
    '$SVG_DIR/waving_hand.svg',
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
