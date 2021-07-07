import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_size_text/auto_size_text.dart';

enum BottomAlertDialogPosition { top, bottom }

abstract class BottomAlertDialog {
  static Future<Flushbar> init(
    BuildContext context, {
    String message = "Oops! No response.",
    Duration duration,
    IconData icon,
    Color iconColor,
    Widget child,
    bool shouldIconPulse = true,
    bool callbackAfterClose = false,
    bool autoShow = true,
    BottomAlertDialogPosition position,
    Function(dynamic) callback,
  }) async {
    ArgumentError.checkNotNull(message, 'message');

    final _bar = Flushbar(
      duration: duration ?? const Duration(seconds: 15),
      icon: Icon(
        icon ?? Icons.error,
        color: iconColor ?? Colors.red,
      ),
      messageText: child ??
          AutoSizeText(
            message,
            style: Theme.of(context).textTheme.bodyText2,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
      borderRadius: 8.0,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      margin: const EdgeInsets.all(8),
      flushbarPosition: position?.fold(position) ??
          (MediaQuery.of(context).viewInsets.bottom == 0
              ? FlushbarPosition.BOTTOM
              : FlushbarPosition.TOP),
      shouldIconPulse: shouldIconPulse ?? true,
      backgroundColor: Theme.of(context).primaryColor,
    );

    if (autoShow) {
      if (callbackAfterClose) {
        await _bar?.show(context)?.then((_) => callback?.call(_));
      } else {
        callback?.call(null);
        await _bar?.show(context);
      }
    }

    return _bar;
  }

  static Future<void> show(
    BuildContext context,
    Flushbar bar, {
    Flushbar old,
    bool shouldDismissBeforeShow = false,
    bool callbackAfterClose = false,
    Function(dynamic) callback,
  }) async {
    if (old != null) if (old.isShowing() && shouldDismissBeforeShow)
      old?.dismiss();

    if (callbackAfterClose) {
      await bar?.show(context)?.then((_) => callback?.call(_));
    } else {
      callback?.call(null);
      await bar?.show(context);
    }
  }

  static Future<void> dismiss(Flushbar bar, dynamic result) =>
      bar.dismiss(result);
}

extension XBottomAlertDialogPosition on BottomAlertDialogPosition {
  FlushbarPosition fold(BottomAlertDialogPosition position) {
    switch (position) {
      case BottomAlertDialogPosition.top:
        return FlushbarPosition.TOP;
      case BottomAlertDialogPosition.bottom:
      default:
        return FlushbarPosition.BOTTOM;
    }
  }
}
