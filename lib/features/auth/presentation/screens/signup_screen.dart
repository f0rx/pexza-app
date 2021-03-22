import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/auth/presentation/widgets/password_field.dart';
import 'package:pexza/features/auth/presentation/widgets/phone_number_field.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/vertical_spacer.dart';
import 'package:pexza/widgets/widgets.dart';

class SignupScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: this,
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
                    "Sign Up",
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
                      "Please, enter your details to onboard yourself into our property management platform.",
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
                Flexible(child: _SignUpForm()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SignUpForm extends StatelessWidget {
  static double inputSpacing = App.longest * 0.015;
  final _displayNameFocus = FocusNode();
  final _emailAddressFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _phoneNumberFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: AutofillGroup(
        child: Column(
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return TextFormField(
                  maxLines: 1,
                  enableSuggestions: true,
                  autocorrect: false,
                  cursorColor: Theme.of(context).accentColor,
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  focusNode: _displayNameFocus,
                  decoration: const InputDecoration(
                    labelText: "Your Full Name",
                    hintText: "John Doe Jnr.",
                  ),
                  autofillHints: [
                    AutofillHints.name,
                    AutofillHints.givenName,
                    AutofillHints.middleName,
                    AutofillHints.nickname,
                    AutofillHints.familyName,
                  ],
                  autovalidateMode: context.watch<AuthCubit>().state.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  onChanged: context.read<AuthCubit>().displayNameChanged,
                  validator: (value) => context
                      .read<AuthCubit>()
                      .state
                      .displayName
                      .value
                      .fold((error) => error.message, (r) => null),
                  onFieldSubmitted: (_) =>
                      FocusScope.of(context).requestFocus(_emailAddressFocus),
                );
              },
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return TextFormField(
                  maxLines: 1,
                  enableSuggestions: true,
                  autocorrect: false,
                  cursorColor: Theme.of(context).accentColor,
                  keyboardType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.none,
                  focusNode: _emailAddressFocus,
                  textInputAction: TextInputAction.next,
                  autofillHints: [
                    AutofillHints.email,
                  ],
                  autovalidateMode: context.watch<AuthCubit>().state.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  decoration: const InputDecoration(
                    labelText: "Email address",
                    hintText: "janedoe@email.com",
                  ),
                  onChanged: context.read<AuthCubit>().emailAddressChanged,
                  validator: (value) => context
                      .read<AuthCubit>()
                      .state
                      .emailAddress
                      .value
                      .fold((error) => error.message, (r) => null),
                  onFieldSubmitted: (_) =>
                      FocusScope.of(context).requestFocus(_passwordFocus),
                );
              },
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            PasswordInputField(
              focus: _passwordFocus,
              next: _phoneNumberFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            PhoneNumberField(focus: _phoneNumberFocus),
            //
            VerticalSpace(height: App.height * .04),
            //
            AppElevatedButton(
              // TODO: Replace with actual implementation
              onPressed: () => navigator.pushAndRemoveUntil(
                Routes.tenantHomeScreen,
                (route) => false,
              ),
              text: "Create Your Account",
              width: App.width,
              height: App.height * 0.05,
            ),
            //
            VerticalSpace(height: App.height * .04),
            //
            AutoSizeText.rich(
              TextSpan(
                text: "Already have an account?",
                children: [
                  TextSpan(
                    text: " Login.",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => navigator.pushLoginScreen(),
                    style: TextStyle(
                      color: App.theme.accentColor,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
