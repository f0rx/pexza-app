import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/manager/theme/theme.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

// ignore: non_constant_identifier_names
final App = Helpers.I;

final log = Helpers.logger;

ExtendedNavigatorState<RouterBase> get navigator => App.context.navigator;

ExtendedNavigatorState<RouterBase> inner(BuildContext context) =>
    ExtendedNavigator.of(context);

NavigationHistoryObserver get observer => NavigationHistoryObserver();

// ignore: avoid_positional_boolean_parameters
void throwIf(bool condition, Object error) {
  if (condition) throw error;
}

// ignore: avoid_positional_boolean_parameters
void throwIfNot(bool condition, Object error) {
  if (!condition) throw error;
}

class Helpers {
  static const Duration autoRetrievalTimeout = const Duration(seconds: 40);
  static const String currency = "₦";

  static Helpers get I => Helpers._();
  static double buttonRadius = 12.0;
  static double appPadding = App.shortest * 0.06;
  static double inputBorderRadius = 16.0;
  static double descriptionPadding = App.shortest * 0.035;
  static Future<Directory> get rootDir async =>
      await getExternalStorageDirectory();
  static Future<Directory> get cacheDir async => await getTemporaryDirectory();
  static Future<Directory> get documentsDir async =>
      await getApplicationDocumentsDirectory();
  static ScrollPhysics physics = const BouncingScrollPhysics();
  static Duration willPopTimeout = const Duration(seconds: 3);
  static Logger logger = Logger(
    filter: env.flavor == BuildFlavor.dev
        ? DevelopmentFilter()
        : ProductionFilter(),
    printer: HybridPrinter(PrettyPrinter(
      methodCount: 3, // number of method calls to be displayed
      errorMethodCount: 10, // number of method calls if stacktrace is provided
      lineLength: 100, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true,
      printTime: false,
    )),
  );

  static String writeNotNull(String other) {
    if (other.trim() != null || other.trim().isNotEmpty) {
      return other;
    }
    return '';
  }

  static DateTime getDate(DateTime d) =>
      DateTime(d.year, d.month, d.day, d.hour, d.minute, d.second);

  static void hideKeyboard([BuildContext context]) {
    FocusNode currentFocus = FocusScope.of(context ?? App.context);
    if (!currentFocus.hasPrimaryFocus &&
        !currentFocus.hasFocus &&
        currentFocus.children.isEmpty)
      FocusManager.instance.primaryFocus.unfocus();
  }

  static T optionOf<T>(dynamic _default, dynamic dark, {BuildContext context}) {
    // assert(_default != null);
    assert(dark != null);
    var isDarkMode =
        BlocProvider.of<ThemeCubit>(context ?? App.context).isDarkMode ||
            (MediaQuery.of(context ?? App.context).platformBrightness ==
                Brightness.dark);

    return isDarkMode ? dark : _default;
  }

  static Color computeLuminance(Color color) =>
      color.computeLuminance() > 0.5 ? Colors.black : Colors.white;

  static Future<void> precache(BuildContext context) async {
    context ??= App.context;
    await precacheImage(AssetImage(AppAssets.onBoarding1), context);
    await precacheImage(AssetImage(AppAssets.onBoarding2), context);
    await precacheImage(AssetImage(AppAssets.onBoarding3), context);
    await precacheImage(AssetImage(AppAssets.apartment1), context);
    await precacheImage(AssetImage(AppAssets.apartment2), context);
    await precacheImage(AssetImage(AppAssets.apartment3), context);
    await precacheImage(AssetImage(AppAssets.apartment4), context);
    await precacheImage(AssetImage(AppAssets.apartment5), context);
    await precacheImage(AssetImage(AppAssets.apartment6), context);
    await precacheImage(AssetImage(AppAssets.apartment7), context);
    await precacheImage(AssetImage(AppAssets.apartment8), context);
  }

  static String hhmmss([Duration duration = Duration.zero]) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${duration.inHours > 0 ? twoDigits(duration.inHours).pad(":") : ''}"
        "${twoDigitMinutes.pad(":")}"
        "$twoDigitSeconds";
  }

  static Future<void> platformPop({bool animated = true}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }

  final DateTime today = DateTime.now();

  Color get backgroundOverlayColor => App.theme.primaryColor.withOpacity(0.91);

  /// Current BuildContext
  BuildContext _ctx;

  Helpers._();

  Widget get waveLoadingBar => Container(
        color: App.theme.primaryColor.withOpacity(0.65),
        child: Center(
          child: SpinKitWave(
            color: Theme.of(context).accentColor,
            size: 30.0,
            duration: Duration(milliseconds: 1200),
            type: SpinKitWaveType.center,
            itemCount: 7,
          ),
        ),
      );

  Widget get circularLoadingOverlay => Container(
        color: App.theme.primaryColor.withOpacity(0.65),
        child: Center(
          child: CircularProgressBar.adaptive(
            width: width * 0.08,
            height: width * 0.08,
            strokeWidth: 3.5,
            radius: 14,
          ),
        ),
      );

  Widget positionedLoader(
    BuildContext context, [
    bool overlay = true,
    Widget loader,
  ]) {
    final bool _keyboardClosed = MediaQuery.of(context).viewInsets.bottom == 0;
    double _topHeight;
    try {
      _topHeight = Scaffold.of(context).appBarMaxHeight;
    } catch (e) {
      _topHeight = kToolbarHeight;
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: _topHeight),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              _keyboardClosed ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            loader ??
                CircularProgressBar.adaptive(
                  width: width * 0.08,
                  height: width * 0.08,
                  strokeWidth: 3.5,
                  radius: 14,
                ),
          ],
        ),
      ),
    );
  }

  GlobalKey<NavigatorState> addKey(GlobalKey<NavigatorState> newKey) {
    key = newKey;
    return key;
  }

  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Map<int, GlobalKey<NavigatorState>> _keys = {};

  // Helper method to open a Hive Box
  Box<E> box<E>(String name) => Hive.box(name);

  GlobalKey<NavigatorState> nestedKey(int key) {
    _keys.putIfAbsent(key, () => GlobalKey<NavigatorState>());
    return _keys[key];
  }

  GlobalKey<NavigatorState> global(int k) {
    if (k == null) {
      return key;
    }
    if (!_keys.containsKey(k)) {
      throw 'route id not found';
    }
    return _keys[k];
  }

  /// give access to currentContext
  BuildContext get context => _ctx ?? key.currentContext;

  /// Returns the current route path
  String get currentRoute => observer.top.settings.name;

  /// give access to current Overlay Context
  BuildContext get overlayContext => key.currentState.overlay.context;

  /// give access to Theme.of(context)
  ThemeData get theme => Theme.of(context);

  /// give access to TextTheme.of(context)
  TextTheme get textTheme => Theme.of(context).textTheme;

  /// give access to MediaQuery.of(context)
  MediaQueryData get mediaQuery => MediaQuery.of(context);

  WidgetsBinding get engine => WidgetsBinding.instance;

  /// give access to Theme.of(context).iconTheme.color
  Color get iconColor => Theme.of(context).iconTheme.color;

  /// give access to FocusScope.of(context)
  FocusNode get focusScope => FocusManager.instance.primaryFocus;

  /// give access to Immutable MediaQuery.of(context).size.height
  double get height => MediaQuery.of(context).size.height;

  /// give access to Immutable MediaQuery.of(context).size.width
  double get width => MediaQuery.of(context).size.width;

  /// give access to Immutable MediaQuery.of(context).size.shortestSide
  double get shortest => MediaQuery.of(context).size.shortestSide;

  /// give access to Immutable MediaQuery.of(context).size.shortestSide
  double get longest => MediaQuery.of(context).size.longestSide;

  /// Check if dark mode theme is enable on platform on android Q+
  bool get isPlatformDarkMode =>
      (mediaQuery.platformBrightness == Brightness.dark);

  /// Push the given [page], and then pop several [pages] in the stack until
  /// [predicate] returns true
  Future<T> offUntil<T>(Route<T> page, RoutePredicate predicate, {int id}) {
    // if (key.currentState.mounted) // add this if appear problems on future with route navigate
    // when widget don't mounted
    return global(id).currentState.pushAndRemoveUntil(page, predicate);
  }

  Future<T> offAllNamed<T>(String newRouteName,
      {RoutePredicate predicate, Object arguments, int id}) {
    var route = (Route<dynamic> rota) => false;

    return global(id).currentState.pushNamedAndRemoveUntil(
        newRouteName, predicate ?? route,
        arguments: arguments);
  }

  /// Push the given named [page], and then pop several pages in the stack
  /// until [predicate] returns true
  ///
  /// You can send any type of value to the other route in the [arguments].
  ///
  /// Note: Always put a slash on the route ('/page1'), to avoid unexpected errors
  Future<T> offNamedUntil<T>(
    String page,
    RoutePredicate predicate, {
    int id,
    Object arguments,
  }) {
    return global(id)
        .currentState
        .pushNamedAndRemoveUntil(page, predicate, arguments: arguments);
  }

  /// Pop the current named page and pushes a new [page] to the stack in its place
  ///
  /// You can send any type of value to the other route in the [arguments].
  /// It is very similar to `offNamed()` but use a different approach
  ///
  /// The `offNamed()` pop a page, and goes to the next. The `offAndToNamed()` goes
  /// to the next page, and removes the previous one. The route transition
  /// animation is different.
  Future<T> offAndToNamed<T>(String page,
      {Object arguments, int id, dynamic result}) {
    return global(id)
        .currentState
        .popAndPushNamed(page, arguments: arguments, result: result);
  }

  /// Remove a specific [route] from the stack
  ///
  /// [id] is for when you are using nested navigation,
  /// as explained in documentation
  void removeRoute(Route<dynamic> route, {int id}) {
    return global(id).currentState.removeRoute(route);
  }

  /// As a rule, Flutter knows which widget to update,
  /// so this command is rarely needed. We can mention situations
  /// where you use const so that widgets are not updated with setState,
  /// but you want it to be forcefully updated when an event like
  /// language change happens. using context to make the widget dirty
  /// for performRebuild() is a viable solution.
  /// However, in situations where this is not possible, or at least,
  /// is not desired by the developer, the only solution for updating
  /// widgets that Flutter does not want to update is to use reassemble
  /// to forcibly rebuild all widgets. Attention: calling this function will
  /// reconstruct the application from the sketch, use this with caution.
  /// Your entire application will be rebuilt, and touch events will not
  /// work until the end of rendering.
  Future<void> forceAppUpdate() async {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
    // await engine.reassembleApplication();
  }

  PageRoute<T> adaptivePageRoute<T>({
    String title,
    @required WidgetBuilder builder,
    RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            title: title,
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          )
        : MaterialPageRoute(
            builder: builder,
            settings: settings,
            maintainState: maintainState,
            fullscreenDialog: fullscreenDialog,
          );
  }

  Future<U> showAdaptiveDatePicker<U>(
    BuildContext context, {
    DateTime selectedDate,
    DateTime firstDate,
    DateTime lastDate,
    DatePickerMode initialDatePickerMode = DatePickerMode.year,
    String confirmText,
    String cancelText,
    String fieldHintText,
    String fieldLabelText,
    String helpText,
    Locale locale,
    DateTime currentDate,
    String errorFormatText,
    String errorInvalidText,
    Function(BuildContext, Widget) builder,
    bool Function(DateTime) selectableDayPredicate,
    @required void Function(DateTime) onChanged,
  }) async {
    final ThemeData theme = Theme.of(context);
    assert(theme.platform != null);

    // Set defaults
    firstDate ??= DateTime(1910);
    lastDate ??= App.today;
    selectedDate ??= lastDate ?? App.today;

    switch (theme.platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return showCupertinoDatePicker(
          context,
          selectedDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          helpText: helpText,
          locale: locale,
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          onChanged: onChanged,
        ) as U;
        break;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      default:
        final DateTime date = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          confirmText: confirmText,
          cancelText: cancelText,
          fieldHintText: fieldHintText,
          fieldLabelText: fieldLabelText,
          initialDatePickerMode: initialDatePickerMode,
          helpText: helpText,
          locale: locale,
          currentDate: currentDate,
          errorFormatText: errorFormatText,
          errorInvalidText: errorInvalidText,
          builder: builder,
          selectableDayPredicate: selectableDayPredicate,
        );
        // Fire callback after selection
        return onChanged(date) as U;
        break;
    }
  }

  Future<DateTime> showCupertinoDatePicker(
    BuildContext context, {
    DateTime selectedDate,
    DateTime firstDate,
    DateTime lastDate,
    String confirmText,
    String cancelText,
    String fieldHintText,
    String fieldLabelText,
    String helpText,
    Locale locale,
    DateTime currentDate,
    String errorFormatText,
    String errorInvalidText,
    Color backgroundColor,
    bool use24hFormat,
    Function(BuildContext, Widget) builder,
    @required void Function(DateTime) onChanged,
  }) async {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          color: Theme.of(context).primaryColor,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            backgroundColor: backgroundColor,
            onDateTimeChanged: onChanged,
            initialDateTime: selectedDate,
            minimumDate: firstDate,
            maximumDate: lastDate,
            use24hFormat: use24hFormat,
          ),
        );
      },
    );
  }

  Future<U> showAlertDialog<U>({
    BuildContext context,
    WidgetBuilder builder,
    bool barrierDismissible = true,
    Color barrierColor,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings routeSettings,
  }) async {
    if (Platform.isIOS)
      return showCupertinoDialog<U>(
        context: context ?? App.context,
        builder: builder,
        useRootNavigator: useRootNavigator ?? true,
        barrierDismissible: barrierDismissible ?? false,
        routeSettings: routeSettings,
      );
    return showDialog<U>(
      context: context ?? App.context,
      builder: builder,
      barrierDismissible: barrierDismissible ?? true,
      barrierColor: barrierColor,
      useSafeArea: useSafeArea ?? true,
      useRootNavigator: useRootNavigator ?? true,
      routeSettings: routeSettings,
    );
  }

  int calculateAge(DateTime birthDate) {
    DateTime currentDate = today;
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  Future<void> report<T>({
    @required T exception,
    @required StackTrace stack,
    bool printDetails = false,
    String reason = "Non-fatal Try/Catch Exception",
  }) async {
    if (getIt<FirebaseCrashlytics>().isCrashlyticsCollectionEnabled)
      getIt<FirebaseCrashlytics>().recordError(
        exception,
        stack,
        printDetails: printDetails,
        reason: reason,
      );
  }
}
