import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/auth/presentation/widgets/auth_widgets.dart';
import 'package:pexza/features/auth/presentation/widgets/confirm_password_field.dart';
import 'package:pexza/features/auth/presentation/widgets/password_field.dart';
import 'package:pexza/features/auth/presentation/widgets/phone_number_field.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class EditAccountScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    final User user = BlocProvider.of<AuthWatcherCubit>(context).state.user;

    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(user),
      child: BlocListener<AuthCubit, AuthState>(
        listenWhen: (p, c) {
          final pOrNull = p.authStatus.getOrElse(() => null);
          final cOrNull = c.authStatus.getOrElse(() => null);
          final pResponse = pOrNull?.swap()?.getOrElse(() => null);
          final cResponse = pOrNull?.swap()?.getOrElse(() => null);
          return pOrNull != cOrNull || pResponse?.uuid != cResponse?.uuid;
        },
        listener: (c, s) => s.authStatus.fold(
          () => null,
          (option) => option.fold(
            (r) => BottomAlertDialog.init(
              context,
              message: !r.message.isNullOrBlank ? r.message : r.error,
            ),
            (_) => BottomAlertDialog.init(
              context,
              message: "Profile successfully updated!",
              icon: Icons.check_circle_rounded,
              iconColor: AppColors.successGreen,
            ),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Edit Profile"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.015),
        child: Column(
          children: [
            VerticalSpace(
              height: App.shortest * 0.16,
              child: Row(
                children: [
                  BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                    builder: (context, state) => ImageWidget(
                      url: "${state.user?.photo ?? AppAssets.anonymous}",
                      radius: 25.0,
                      maxWidth: App.shortest * 0.16,
                      maxHeight: double.infinity,
                      splashColor: Colors.black12,
                      onPressed: () {},
                    ),
                  ),
                  //
                  HorizontalSpace(width: App.shortest * 0.04),
                  //
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(100.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AutoSizeText(
                              "Change Photo",
                              style: TextStyle(color: App.theme.accentColor),
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.longest * 0.012),
            //
            Divider(
              thickness: 1.1,
              indent: 12.0,
              endIndent: 12.0,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            _EditAccountForm(),
          ],
        ),
      ),
    );
  }
}

class _EditAccountForm extends StatelessWidget {
  static double inputSpacing = App.longest * 0.015;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: AutofillGroup(
        child: Column(
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "First Name: ",
                      style: TextStyle(fontSize: 16.5),
                      maxLines: 1,
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.015),
                    //
                    FirstNameField(
                      showLabel: false,
                      focus: AuthState.firstNameFocus,
                      next: AuthState.lastNameFocus,
                    ),
                  ],
                );
              },
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Last Name: ",
                      style: TextStyle(fontSize: 16.5),
                      maxLines: 1,
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.015),
                    //
                    LastNameField(
                      showLabel: false,
                      focus: AuthState.lastNameFocus,
                      next: AuthState.phoneNumberFocus,
                    ),
                  ],
                );
              },
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Phone Number: ",
                  style: TextStyle(fontSize: 16.5),
                  maxLines: 1,
                ),
                //
                VerticalSpace(height: App.shortest * 0.015),
                //
                PhoneNumberField(
                  focus: AuthState.phoneNumberFocus,
                  // next: AuthState.passwordFocus,
                ),
              ],
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Gender: ",
                    style: TextStyle(fontSize: 16.5),
                    maxLines: 1,
                  ),
                  //
                  VerticalSpace(height: App.shortest * 0.015),
                  //
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GenderField(focus: null),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    DATE of BIRTH FIELD    ////////
            DateOfBirthField(
              labelText: "Date of Birth",
            ),
            //
            Visibility(
              visible: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  VerticalSpace(height: inputSpacing),
                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Password: ",
                        style: TextStyle(fontSize: 16.5),
                        maxLines: 1,
                      ),
                      //
                      VerticalSpace(height: App.shortest * 0.015),
                      //
                      PasswordInputField(
                        focus: AuthState.passwordFocus,
                        next: AuthState.confirmPasswordFocus,
                        hasLabel: false,
                        hintText: "New Password",
                      ),
                    ],
                  ),
                  //
                  VerticalSpace(height: inputSpacing),
                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Confirm Password: ",
                        style: TextStyle(fontSize: 16.5),
                        maxLines: 1,
                      ),
                      //
                      VerticalSpace(height: App.shortest * 0.015),
                      //
                      PasswordConfirmationField(
                        focus: AuthState.confirmPasswordFocus,
                        hasLabel: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: App.height * .04),
            //
            AppElevatedButton(
              onPressed: context.read<AuthCubit>().updateProfile,
              text: "Update Profile",
              width: App.width,
              height: App.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
