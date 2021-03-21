import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/vertical_spacer.dart';
import 'package:pexza/widgets/widgets.dart';

class LoginScreen extends StatelessWidget with AutoRouteWrapper {
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
            physics: BouncingScrollPhysics(),
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

  final _emailAddressFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) => Form(
        autovalidateMode: context.watch<AuthCubit>().state.validate
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: AutofillGroup(
          child: Column(
            children: [
              TextFormField(
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
              ),
              //
              VerticalSpace(height: inputSpacing),
              //
              Stack(
                children: [
                  TextFormField(
                    maxLines: 1,
                    enableSuggestions: false,
                    autocorrect: false,
                    cursorColor: Theme.of(context).accentColor,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText:
                        context.watch<AuthCubit>().state.passwordHidden,
                    textCapitalization: TextCapitalization.none,
                    textInputAction: TextInputAction.done,
                    focusNode: _passwordFocus,
                    autofillHints: [
                      AutofillHints.password,
                    ],
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "secret",
                      contentPadding:
                          const EdgeInsets.only(left: 12.0, right: 45.0)
                              .copyWith(bottom: 30.0),
                    ),
                    onChanged: context.read<AuthCubit>().passwordChanged,
                    validator: (value) => context
                        .read<AuthCubit>()
                        .state
                        .password
                        .value
                        .fold((error) => error.message, (r) => null),
                  ),
                  //
                  Positioned(
                    top: 2,
                    right: 0,
                    bottom: 2,
                    child: Material(
                      color: Colors.transparent,
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      child: IconButton(
                        icon: Icon(
                          context.watch<AuthCubit>().state.passwordHidden
                              ? AppIcons.eyelash_closed
                              : AppIcons.eyelash_open,
                        ),
                        onPressed:
                            context.watch<AuthCubit>().togglePasswordVisibility,
                      ),
                    ),
                  ),
                ],
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
                onPressed: () => navigator.pushAndRemoveUntil(
                  Routes.tenantHomeScreen,
                  (route) => false,
                ),
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
      ),
    );
  }
}
