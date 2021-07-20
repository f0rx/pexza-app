import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/auth/presentation/widgets/auth_widgets.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class ForgotPasswordScreen extends StatelessWidget with AutoRouteWrapper {
  final _emailFocus = FocusNode();

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
                  (_) => navigator.pop(),
                ),
              );
        },
        builder: (context, state) => PortalEntry(
          visible: context.watch<AuthCubit>().state.isLoading,
          portal: App.loadingOverlay(),
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(),
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
              //
              VerticalSpace(height: App.height * 0.02),
              //
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Helpers.descriptionPadding),
                  child: AutoSizeText(
                    "Forgot your password? No problem. Just let us know your email address and we "
                    "will email you a password reset link that will allow you to choose a new "
                    "one.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                    softWrap: true,
                    wrapWords: true,
                  ),
                ),
              ),
              //
              VerticalSpace(height: App.height * 0.04),
              //
              Form(
                child: AutofillGroup(
                  child: Column(
                    children: [
                      EmailAddressField(
                        focus: _emailFocus,
                      ),
                      //
                      VerticalSpace(height: App.longest * .04),
                    ],
                  ),
                ),
              ),
              //
              AppElevatedButton(
                // TODO: Replace with actual implementation
                onPressed: context.read<AuthCubit>().sendPasswordResetLink,
                text: "Email Password Reset Link",
                width: App.width,
                height: App.shortest * 0.12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
