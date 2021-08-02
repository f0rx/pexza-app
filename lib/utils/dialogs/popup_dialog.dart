library popup_dialog.dart;

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/core/presentation/managers/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/manager/theme/manager/theme_cubit.dart';
import 'package:pexza/utils/utils.dart';
import 'package:sweetsheet/sweetsheet.dart';

part 'predefined.part.dart';

enum _PopupAlertDialogType { confirmation, input, bottomSheet, none }

enum PopupAlertDialogColorScheme {
  kdefault,
  success,
  warning,
  danger,
  nice,
}

class PopupDialog {
  final String title;
  final String description;
  final IconData popupIcon;
  final Color popupIconColor;
  final String postiveButtonText;
  final String negativeButtonText;
  final bool negativeButtonVisible;
  final bool positiveButtonVisible;
  final Color positiveButtonColor;
  final Color negativeButtonColor;
  final IconData positiveButtonIcon;
  final IconData negativeButtonIcon;
  final VoidCallback onPositiveButtonPressed;
  final VoidCallback onNegativeButtonPressed;
  final bool cancelable;
  final bool autoDismiss;
  final _PopupAlertDialogType _type;
  final PopupAlertDialogColorScheme colorScheme;
  final SweetSheet _sheet;

  PopupDialog.confirmation({
    @required this.title,
    @required this.description,
    this.popupIcon,
    this.popupIconColor,
    this.postiveButtonText = 'OK',
    this.negativeButtonText = 'Cancel',
    this.negativeButtonVisible,
    this.positiveButtonVisible,
    this.positiveButtonColor = Colors.white,
    this.negativeButtonColor = Colors.white,
    this.positiveButtonIcon,
    this.negativeButtonIcon,
    @required this.onPositiveButtonPressed,
    this.onNegativeButtonPressed,
    this.cancelable = true,
    this.autoDismiss = true,
    this.colorScheme = PopupAlertDialogColorScheme.kdefault,
  })  : _type = _PopupAlertDialogType.confirmation,
        _sheet = getIt<SweetSheet>();

  Future<T> render<T>(BuildContext context) async {
    return await Theme.of(context).platform.fold(
          material: () => _type.fold(
            confirmation: _sheet.show(
              context: context,
              title: Text("$title"),
              description: Text("$description"),
              icon: popupIcon,
              color: colorScheme.fold(
                kdefault: _SheetColor(
                  main: BlocProvider.of<ThemeCubit>(context).isDarkMode
                      ? AppColors.accentColor.shade700
                      : AppColors.accentColor,
                  accent: BlocProvider.of<ThemeCubit>(context).isDarkMode
                      ? AppColors.accentColor.shade800
                      : AppColors.accentColor.shade700,
                  icon: popupIconColor ??
                      Helpers.computeLuminance(
                          Theme.of(context).iconTheme?.color),
                ),
                success: SweetSheetColor.SUCCESS,
                warning: SweetSheetColor.WARNING,
                danger: SweetSheetColor.DANGER,
                nice: SweetSheetColor.NICE,
              ),
              positive: SweetSheetAction(
                title: postiveButtonText,
                onPressed: () {
                  onPositiveButtonPressed?.call();
                  if (autoDismiss) Navigator.pop(context);
                },
                color: positiveButtonColor ??
                    Helpers.computeLuminance(
                        Theme.of(context).iconTheme?.color),
                icon: positiveButtonIcon,
              ),
              negative: SweetSheetAction(
                title: negativeButtonText,
                onPressed: () {
                  onNegativeButtonPressed?.call();
                  if (autoDismiss) Navigator.pop(context);
                },
                color: negativeButtonColor ??
                    Helpers.computeLuminance(
                        Theme.of(context).iconTheme?.color),
                icon: negativeButtonIcon,
              ),
            ),
          ),
          // cupertino: () => _type.fold(
          //   confirmation: showAnimatedDialog(
          //     context: context,
          //     builder: null,
          //   ),
          // ),
        );
  }
}

class _SheetColor extends CustomSheetColor {
  final Color main;
  final Color accent;
  final Color icon;

  _SheetColor({
    this.main,
    this.accent,
    this.icon,
  }) : super(main: main, accent: accent, icon: icon);
}

extension X_PopupAlertDialogType on _PopupAlertDialogType {
  T fold<T>({
    T confirmation,
    T input,
    T bottomSheet,
  }) {
    switch (this) {
      case _PopupAlertDialogType.confirmation:
        return confirmation;
      case _PopupAlertDialogType.input:
        return input;
      case _PopupAlertDialogType.bottomSheet:
        return bottomSheet;
      default:
        return null;
    }
  }
}

extension XPopupAlertDialogColorScheme on PopupAlertDialogColorScheme {
  T fold<T>({
    T kdefault,
    T success,
    T warning,
    T danger,
    T nice,
  }) {
    switch (this) {
      case PopupAlertDialogColorScheme.success:
        return success;
      case PopupAlertDialogColorScheme.warning:
        return warning;
      case PopupAlertDialogColorScheme.danger:
        return danger;
      case PopupAlertDialogColorScheme.nice:
        return nice;
      case PopupAlertDialogColorScheme.kdefault:
      default:
        return kdefault;
    }
  }
}
