import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

class ForgotPasswordScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (_) => getIt<AuthCubit>(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listenWhen: (p, c) => p.isLoading && !c.isLoading,
        listener: (context, state) {
          context.read<AuthCubit>().state.authStatus.fold(
                () => null,
                (option) => option.fold(
                  (failure) => Flushbar(
                    duration: const Duration(seconds: 10),
                    icon: const Icon(Icons.error, color: Colors.red),
                    messageText: AutoSizeText(
                      !failure.message.isNullOrBlank
                          ? failure.message
                          : failure.error,
                    ),
                    borderRadius: 8,
                    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                    margin: const EdgeInsets.all(8),
                    flushbarPosition:
                        MediaQuery.of(context).viewInsets.bottom == 0
                            ? FlushbarPosition.BOTTOM
                            : FlushbarPosition.TOP,
                    shouldIconPulse: true,
                    backgroundColor: Theme.of(context).primaryColor,
                  ).show(context),
                  (_) => null,
                ),
              );
        },
        builder: (context, state) => PortalEntry(
          visible: context.watch<AuthCubit>().state.isLoading,
          portal: App.waveLoadingBar,
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            controller: ScrollController(),
            physics: Helpers.physics,
            padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SafeArea(
                    child: AutoSizeText(
                      "Forgot Password",
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: App.theme.accentColor,
                      ),
                      softWrap: true,
                      wrapWords: true,
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
