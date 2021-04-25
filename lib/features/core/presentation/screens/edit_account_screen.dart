import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      child: this,
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
                  Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    color: Colors.white,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      placeholderFadeInDuration: Duration(milliseconds: 300),
                      imageUrl:
                          context.read<AuthWatcherCubit>().state.user?.photo,
                      imageBuilder: (context, provider) => Ink.image(
                        image: provider,
                        fit: BoxFit.cover,
                        width: App.shortest * 0.16,
                        height: double.infinity,
                        child: InkWell(
                          splashColor: Colors.black12,
                          onTap: () {},
                        ),
                      ),
                      placeholder: (_, url) => Center(
                        child: CircularProgressBar.adaptive(
                          width: App.width * 0.06,
                          height: App.width * 0.06,
                          strokeWidth: 2.5,
                        ),
                      ),
                      errorWidget: (context, url, error) => CircleAvatar(
                        backgroundImage: AssetImage('${AppAssets.owner}'),
                        backgroundColor: Theme.of(context).accentColor,
                        radius: 15.0,
                      ),
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
  final _firstNameFocus = FocusNode();
  final _lastNameFocus = FocusNode();
  final _emailAddressFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _phoneNumberFocus = FocusNode();
  final _confirmPasswordFocus = FocusNode();

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
                      focus: _firstNameFocus,
                      next: _lastNameFocus,
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
                      focus: _lastNameFocus,
                      next: _emailAddressFocus,
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
                      "Email Address: ",
                      style: TextStyle(fontSize: 16.5),
                      maxLines: 1,
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.015),
                    //
                    EmailAddressField(
                      focus: _emailAddressFocus,
                      next: _phoneNumberFocus,
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
                  focus: _phoneNumberFocus,
                  next: _passwordFocus,
                ),
              ],
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
                      "Gender: ",
                      style: TextStyle(fontSize: 16.5),
                      maxLines: 1,
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.015),
                    //
                    Align(
                      alignment: Alignment.centerLeft,
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          layoutBehavior: ButtonBarLayoutBehavior.constrained,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: DropdownButton<GenderType>(
                            items: GenderType.items
                                .toList()
                                .map<DropdownMenuItem<GenderType>>(
                                  (item) => DropdownMenuItem<GenderType>(
                                    value: item,
                                    child: Text(
                                      item.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                    ),
                                  ),
                                )
                                .toList(),
                            hint: Text("-- Select Gender --"),
                            value: context
                                .watch<AuthCubit>()
                                .state
                                .gender
                                .value
                                .getOrElse(() => GenderType.Male),
                            isExpanded: false,
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconSize: 19.0,
                            onChanged: context.read<AuthCubit>().genderChanged,
                          ),
                        ),
                      ),
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
                  "Password: ",
                  style: TextStyle(fontSize: 16.5),
                  maxLines: 1,
                ),
                //
                VerticalSpace(height: App.shortest * 0.015),
                //

                PasswordInputField(
                  focus: _passwordFocus,
                  next: _confirmPasswordFocus,
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
                  focus: _confirmPasswordFocus,
                  hasLabel: false,
                ),
              ],
            ),
            //
            VerticalSpace(height: App.height * .04),
            //
            AppElevatedButton(
              // TODO: Replace with actual implementation
              onPressed: () {},
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
