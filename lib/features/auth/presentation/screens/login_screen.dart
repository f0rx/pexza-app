import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/auth/domain/entities/auth_provider_type.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/auth/presentation/widgets/password_field.dart';
import 'package:pexza/features/auth/presentation/widgets/phone_number_field.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/vertical_spacer.dart';
import 'package:pexza/widgets/widgets.dart';

class LoginScreen extends StatelessWidget with AutoRouteWrapper {
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
                    duration: failure.is401
                        ? const Duration(seconds: 15)
                        : const Duration(seconds: 5),
                    icon: failure.is401
                        ? const Icon(Icons.warning, color: Colors.amber)
                        : const Icon(Icons.error, color: Colors.red),
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
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            physics: Helpers.physics,
            padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: AutoSizeText(
                    "Login",
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
                //
                VerticalSpace(height: App.height * 0.05),
                //
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Helpers.descriptionPadding),
                    child: AutoSizeText(
                      "Please, enter your email and password to log in to your dashboard.",
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
                Flexible(child: _LoginForm()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  static double inputSpacing = App.height * 0.015;

  final _phoneNumberFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: AutofillGroup(
        child: Column(
          children: [
            PhoneNumberField(focus: _phoneNumberFocus, next: _passwordFocus),
            //
            VerticalSpace(height: inputSpacing),
            //
            PasswordInputField(
              focus: _passwordFocus,
              mode: FIELD_VALIDATION.BASIC,
            ),
            //
            VerticalSpace(height: App.height * .01),
            //
            Align(
              alignment: Alignment.centerRight,
              child: AutoSizeText(
                "Forgot Password?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16.0,
                  color: AppColors.accentColor,
                ),
              ),
            ),
            //
            VerticalSpace(height: App.height * .04),
            //
            AppElevatedButton(
              // TODO: Replace with actual implementation
              onPressed: context.read<AuthCubit>().login,
              text: "Login",
              width: App.width,
              height: App.height * 0.05,
            ),
            //
            VerticalSpace(height: App.height * .04),
            //
            AutoSizeText.rich(
              TextSpan(
                text: "Dont have an account?",
                children: [
                  TextSpan(
                    text: " Sign up.",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => navigator.pop(),
                    style: TextStyle(
                      color: App.theme.accentColor,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
