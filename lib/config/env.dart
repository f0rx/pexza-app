import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:pexza/config/secrets.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

enum BuildFlavor { prod, dev }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment implements Secrets {
  final BuildFlavor flavor;
  final Duration splashDuration;
  final Uri baseUri;

  BuildEnvironment._init({
    this.flavor,
    this.splashDuration,
    this.baseUri,
  });

  /// Sets up the top-level [env] getter on the first call only.
  static Future<void> init({@required BuildFlavor flavor}) async {
    _env ??= BuildEnvironment._init(
      flavor: flavor,
      baseUri: Uri.https(EndPoints.APP_DOMAIN, EndPoints.API_ENDPOINT),
      splashDuration: flavor == BuildFlavor.dev
          ? const Duration(milliseconds: 600)
          : const Duration(milliseconds: 1500),
    );

    // Adapter registration happens in on_boarding_cubit.dart
    // Register Hive Boxes
    HiveBoxes.registerAdapters();

    switch (flavor) {
      case BuildFlavor.dev:
        await locator(Environment.dev);
        break;
      case BuildFlavor.prod:
        await locator(Environment.prod);
        break;
      default:
        await locator(Environment.prod);
    }
  }
}
