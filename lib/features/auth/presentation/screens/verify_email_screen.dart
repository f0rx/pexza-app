import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/auth/presentation/widgets/auth_widgets.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class VerifyEmailScreen extends StatelessWidget with AutoRouteWrapper {
  const VerifyEmailScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(),
      child: BlocListener<AuthCubit, AuthState>(
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
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        implyLeading: false,
        leadingCondition: false,
      ),
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
                    "Verify E-mail",
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
              VerticalSpace(height: App.height * 0.05),
              //
              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Helpers.descriptionPadding),
                  child: BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) => AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(text: "Thanks for signing up! \n\n"),
                        TextSpan(
                          text:
                              "Before getting started, could you verify your email "
                              "address by clicking on the link we just emailed to ",
                        ),
                        TextSpan(
                          text: state.emailAddress.getOrEmpty,
                          style: TextStyle(color: AppColors.accentColor),
                        ),
                        TextSpan(
                          text: "? If you didn't "
                              "receive the email, we will gladly send you another.",
                        ),
                      ]),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                      softWrap: true,
                      wrapWords: true,
                    ),
                  ),
                ),
              ),
              //
              VerticalSpace(height: App.height * 0.05),
              //
              PinInputWidget<AuthCubit, AuthState>(
                length: 5,
                validate: context.watch<AuthCubit>().state.validate,
                keyboardType: TextInputType.text,
                onChanged: context.read<AuthCubit>().onTokenChanged,
                onCompleted: context.read<AuthCubit>().onTokenSubmitted,
                validator: (string, _) =>
                    context.read<AuthCubit>().state.emailToken.value.fold(
                          (e) => e.message,
                          (_) =>
                              context.read<AuthCubit>().state.authStatus.fold(
                                    () => null,
                                    (_) => _.fold(
                                      (f) => f.errors?.token?.firstOrNull,
                                      (_) => null,
                                    ),
                                  ),
                        ),
              ),
              //
              VerticalSpace(height: App.height * 0.05),
              //
              BlocBuilder<AuthCubit, AuthState>(
                builder: (c, s) => Visibility(
                  visible: !s.isLoading,
                  replacement: SizedBox(
                    height: App.shortest * 0.12,
                    width: double.infinity,
                    child: Center(
                      child: CircularProgressBar.adaptive(
                        width: App.width * 0.07,
                        height: App.width * 0.07,
                        strokeWidth: 2.5,
                        radius: 13,
                      ),
                    ),
                  ),
                  child: AppElevatedButton(
                    onPressed: context.read<AuthCubit>().verify,
                    text: "Verify",
                    width: App.width,
                    height: App.shortest * 0.12,
                  ),
                ),
              ),
              //
              VerticalSpace(height: App.height * 0.05),
              //
              AutoSizeText.rich(
                TextSpan(
                  text: "Didn't get the code?",
                  children: [
                    TextSpan(
                      text: " Resend it.",
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            context.read<AuthCubit>().resendVerificationEmail,
                      style: TextStyle(
                        color: App.theme.accentColor,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ),
              //
              VerticalSpace(height: App.height * .03),
              //
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) => AutoSizeText.rich(
                  TextSpan(
                    text: "Not ${state.emailAddress.getOrEmpty}?",
                    children: [
                      TextSpan(
                        text: "\nLog Out!",
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => context.read<AuthWatcherCubit>().signOut,
                        style: TextStyle(
                          color: App.theme.accentColor,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //
              VerticalSpace(height: App.height * .07),
            ],
          ),
        ),
      ),
    );
  }
}
