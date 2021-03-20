import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flag/flag.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/core.dart';
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
            physics: BouncingScrollPhysics(),
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
  static double inputSpacing = App.height * 0.015;
  final List<Country> _countries = Country.list;
  final TapGestureRecognizer recognizer = GestureRecognizer();
  final _displayNameFocus = FocusNode();
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
                onChanged: context.read<AuthCubit>().displayNameChanged,
                validator: (value) => context
                    .read<AuthCubit>()
                    .state
                    .emailAddress
                    .value
                    .fold((error) => error.message, (r) => null),
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_emailAddressFocus),
              ),
              //
              VerticalSpace(height: inputSpacing),
              //
              TextFormField(
                maxLines: 1,
                enableSuggestions: false,
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
                    textInputAction: TextInputAction.next,
                    focusNode: _passwordFocus,
                    autofillHints: [
                      AutofillHints.newPassword,
                    ],
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "secret",
                      contentPadding:
                          const EdgeInsets.only(left: 12.0, right: 45.0)
                              .copyWith(bottom: 30.0),
                    ),
                    onChanged: context.read<AuthCubit>().emailAddressChanged,
                    validator: (value) => context
                        .read<AuthCubit>()
                        .state
                        .password
                        .value
                        .fold((error) => error.message, (r) => null),
                    // onFieldSubmitted: (_) =>
                    //     FocusScope.of(context).requestFocus(_childNameFieldFocus),
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
              VerticalSpace(height: inputSpacing),

              //
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Helpers.inputBorderRadius),
                  border: Border.all(color: App.theme.accentColor, width: 1.5),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          padding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: DropdownButton<Country>(
                            value: _countries.firstWhere(
                                (country) => country.codeName == "US"),
                            items: _flagBuilder(),
                            hint: Text(
                              "+00",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w300),
                            ),
                            icon: null,
                            iconSize: 0.0,
                            elevation: 0,
                            isDense: true,
                            isExpanded: true,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 24.0,
                      width: 0.67,
                      color: Colors.grey.shade400,
                      margin: const EdgeInsets.only(right: 6.0),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(right: 8.0),
//                        child: AutoSizeText("${_country.dialCode}"),
                        child: AutoSizeText("+234"),
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: TextFormField(
                        maxLines: 1,
                        enableSuggestions: true,
                        keyboardType: TextInputType.phone,
                        textCapitalization: TextCapitalization.none,
                        decoration: InputDecoration(
                          isDense: true,
                          isCollapsed: true,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: App.height * 0.02),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (value) {},
                        validator: (value) => null,
                      ),
                    ),
                    //
                  ],
                ),
              ),
              //
              VerticalSpace(height: App.height * .04),
              //
              AppElevatedButton(
                onPressed: () => navigator.popAndPush(Routes.signupScreen),
                text: "Login",
                width: App.width,
                height: App.height * 0.05,
              ),
              //
              VerticalSpace(height: App.height * .04),
              //
              AutoSizeText.rich(TextSpan(
                text: "Already have an account?",
                children: [
                  TextSpan(
                    text: " Sign in.",
                    // recognizer: ,
                    style: TextStyle(
                      color: App.theme.accentColor,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<Country>> _flagBuilder() {
    return _countries
        .map<DropdownMenuItem<Country>>((country) => DropdownMenuItem(
              value: country,
              child: Flag(country.codeName, height: 16.0, fit: BoxFit.contain),
            ))
        .toList();
  }
}
