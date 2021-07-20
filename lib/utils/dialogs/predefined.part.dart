part of popup_dialog.dart;

Future<void> enableInternetConnectionDialog(BuildContext context) async {
  return PopupDialog.confirmation(
    title: 'Attention',
    description:
        'Your app is not connected to internet actually, please turn on Wifi/Celullar data.',
    onPositiveButtonPressed: () => AppSettings.openWIFISettings(),
    popupIcon: Theme.of(context).platform.fold(
          material: () => Icons.portable_wifi_off,
          cupertino: () => CupertinoIcons.wifi_exclamationmark,
        ),
    postiveButtonText: 'Open Settings',
    negativeButtonText: 'Cancel',
  ).render(context);
}

Future<void> runDatabaseCleanup(BuildContext context) async {
  PopupDialog.confirmation(
    title: "Reset Database?",
    colorScheme: PopupAlertDialogColorScheme.danger,
    popupIcon: Icons.auto_delete_rounded,
    postiveButtonText: 'Proceed',
    negativeButtonText: 'Nope',
    description: "Warning!! You're about to wipe the entire database. "
        "\n\nThis will clear all user data, re-initialize database & re-migrate all tables. "
        "Please note that this action is not reversible. \n\nAre you sure you want to proceed?",
    onPositiveButtonPressed: () =>
        context.read<AdminUtilsCubit>().wipeDatabase(),
  ).render(context);
}
