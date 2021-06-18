import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:pexza/config/secrets.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment implements Secrets {
  final BuildFlavor flavor;
  final Uri baseUri;

  BuildEnvironment._init({
    this.flavor,
    this.baseUri,
  });

  String get kWiredashProjectId => Platform.isIOS
      ? Secrets.WIREDASH_IOS_PROJECT_ID
      : Secrets.WIREDASH_ANDROID_PROJECT_ID;

  String get kWiredashSecret => Platform.isIOS
      ? Secrets.WIREDASH_IOS_PROJECT_SECRET
      : Secrets.WIREDASH_ANDROID_PROJECT_SECRET;

  String get paystackPublicKey => Secrets.PAYSTACK_TEST_KEY;

  Duration get splashDuration => flavor.fold(
        dev: () => const Duration(milliseconds: 600),
        prod: () => const Duration(milliseconds: 1500),
      );

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required BuildFlavor flavor}) async {
    _env ??= BuildEnvironment._init(
      flavor: flavor,
      baseUri: Uri.https(EndPoints.APP_DOMAIN, EndPoints.API_ENDPOINT),
    );

    // Adapter registration happens in on_boarding_cubit.dart
    // Register Hive Boxes
    HiveBoxes.registerAdapters();

    await flavor.fold(dev: () async {
      await locator(Environment.dev);
      getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(false);
    }, prod: () async {
      await locator(Environment.prod);
      getIt<FirebaseCrashlytics>().setCrashlyticsCollectionEnabled(true);
    });
  }
}

extension BuildFlavorX on BuildFlavor {
  T fold<T>({
    T Function() dev,
    T Function() prod,
  }) {
    switch (this) {
      case BuildFlavor.dev:
        return dev?.call();
      case BuildFlavor.prod:
      default:
        return prod?.call();
    }
  }
}
