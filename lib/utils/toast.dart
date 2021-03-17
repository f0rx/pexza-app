import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

// Position
enum ToastGravity { top, center, bottom }

typedef ToastBuilder = Widget Function(BuildContext context);

class Toast {
  static void show({
    @required BuildContext context,
    Widget child,
    String message,
    Duration duration = const Duration(seconds: 15),
    ToastGravity gravity = ToastGravity.bottom,
  }) {
    _ToastView.dismiss();
    assert(context != null);

    if (message == null) assert(child != null);

    final _child = child ?? DecoratedToast(child: AutoSizeText(message));

    _ToastView._createToastView(
      context: context,
      child: _child,
      duration: duration,
      gravity: gravity,
    );
  }

  static void cancel() => _ToastView.dismiss();
}

class DecoratedToast extends StatelessWidget {
  final Widget child;
  final Widget icon;
  final Color backgroundColor;
  final Border border;
  final double spacing;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Function onTap;

  DecoratedToast({
    Key key,
    @required this.child,
    this.icon = const SizedBox.shrink(),
    Color backgroundColor,
    this.border = const Border(),
    this.spacing = 12.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 20.0),
    this.padding = const EdgeInsets.fromLTRB(16, 10, 16, 10),
    this.borderRadius = const BorderRadius.all(Radius.circular(20.0)),
    this.onTap,
  })  : backgroundColor = backgroundColor ?? Helpers.optionOf(Colors.white, Colors.black87),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _ToastView.dismiss();
        if (onTap != null) onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: this.borderRadius,
              border: this.border,
            ),
            margin: margin,
            padding: padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                icon,
                HorizontalSpace(width: spacing),
                Flexible(
                  child: VerticalSpace(
                    height: null,
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Singleton class - view
class _ToastView {
  static final _ToastView _singleton = _ToastView._internal();
  static OverlayState overlayState;
  static OverlayEntry _overlayEntry;
  static bool _isVisible = false;

  factory _ToastView() => _singleton;

  bool get isOverlayVisible => _overlayEntry != null;

  _ToastView._internal();

  static void _createToastView({
    BuildContext context,
    Widget child,
    Duration duration,
    ToastGravity gravity,
  }) async {
    overlayState = Overlay.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) => _ToastWidget(
        child: child,
        gravity: gravity,
      ),
    );
    _isVisible = true;

    WidgetsBinding.instance.addPostFrameCallback((_) => overlayState?.insert(_overlayEntry));

    // Wait for duration, then close Toast
    await Future.delayed(duration, () => dismiss());
  }

  static void dismiss() async {
    if (!_isVisible) return;

    _isVisible = false;
    _overlayEntry?.remove();
  }

  void syncWidgetAndOverlay() {
    if (isOverlayVisible) {
      dismiss();
    }
    // else if (!isOverlayVisible && widget.showOverlay) {
    //   _createToastView();
    // }
  }
}

class _ToastWidget extends StatelessWidget {
  final Widget child;
  final ToastGravity gravity;

  const _ToastWidget({
    Key key,
    @required this.gravity,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: gravity == ToastGravity.top ? MediaQuery.of(context).viewInsets.top + 50 : null,
      bottom: gravity == ToastGravity.bottom ? MediaQuery.of(context).viewInsets.bottom + 50 : null,
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
