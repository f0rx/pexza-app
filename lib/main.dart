import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pexza/app.dart';
import 'package:pexza/config/env.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init(flavor: BuildFlavor.prod);
  assert(env != null);

  // Add Google Fonts Licensing
  LicenseRegistry.addLicense(() async* {
    final license =
        await rootBundle.loadString('assets/fonts/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  // epicazo@athenaworks.io

  // Pass all uncaught errors from the framework to Crashlytics.
  FlutterError.onError = getIt<FirebaseCrashlytics>().recordFlutterError;

  try {
    // Initializes Hive with a valid directory in your app files.
    await Hive.initFlutter();
  } catch (e, trace) {
    log.e("Error initializing Hive", e, trace);
  }

  try {
    // Initialize Hydrated storage
    HydratedBloc.storage = await HydratedStorage.build();
  } catch (e, trace) {
    log.e("Error initializing HydratedStorage", e, trace);
  }

  runApp(DevicePreview(
    enabled: env.flavor.fold(
      prod: () => !kReleaseMode,
      dev: () => true,
    ),
    style: DevicePreviewStyle(
      background: BoxDecoration(color: Colors.transparent),
      toolBar: DevicePreviewToolBarStyle.light(),
    ),
    builder: (context) => const Pexza(),
  ));
}
