part of 'package:pexza/features/auth/presentation/screens/signup_screen.dart';

class _SignUpForm extends StatelessWidget {
  static double inputSpacing = App.longest * 0.015;
  final _firstNameFocus = FocusNode();
  final _lastNameFocus = FocusNode();
  final _emailAddressFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _phoneNumberFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: AutofillGroup(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  focusNode: _firstNameFocus,
                  decoration: const InputDecoration(
                    labelText: "Your First Name",
                    hintText: "John",
                  ),
                  autofillHints: [
                    AutofillHints.givenName,
                    AutofillHints.middleName,
                    AutofillHints.nickname,
                  ],
                  autovalidateMode: context.watch<AuthCubit>().state.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  onChanged: context.read<AuthCubit>().firstNameChanged,
                  validator: (value) => state.firstName.value.fold(
                    (error) => error.message,
                    (_) => context.read<AuthCubit>().state.authStatus.fold(
                          () => null,
                          (_) => _.fold(
                            (f) => f.errors.firstName.firstOrNull,
                            (_) => null,
                          ),
                        ),
                  ),
                  onFieldSubmitted: (_) =>
                      FocusScope.of(context).requestFocus(_lastNameFocus),
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
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  focusNode: _lastNameFocus,
                  decoration: const InputDecoration(
                    labelText: "Your Last Name",
                    hintText: "Doe",
                  ),
                  autofillHints: [
                    AutofillHints.familyName,
                  ],
                  autovalidateMode: context.watch<AuthCubit>().state.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  onChanged: context.read<AuthCubit>().lastNameChanged,
                  validator: (value) => state.lastName.value.fold(
                    (error) => error.message,
                    (_) => context.read<AuthCubit>().state.authStatus.fold(
                          () => null,
                          (_) => _.fold(
                            (f) => f.errors.lastName.firstOrNull,
                            (_) => null,
                          ),
                        ),
                  ),
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
                  validator: (value) => state.emailAddress.value.fold(
                    (error) => error.message,
                    (_) => context.read<AuthCubit>().state.authStatus.fold(
                          () => null,
                          (_) => _.fold(
                            (f) => f.errors.email.firstOrNull,
                            (_) => null,
                          ),
                        ),
                  ),
                  onFieldSubmitted: (_) =>
                      FocusScope.of(context).requestFocus(_phoneNumberFocus),
                );
              },
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            PhoneNumberField(focus: _phoneNumberFocus, next: _passwordFocus),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    layoutBehavior: ButtonBarLayoutBehavior.constrained,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                );
              },
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AbsorbPointer(
                            absorbing: !context
                                .read<AuthCubit>()
                                .state
                                .dateOfBirth
                                .isValid,
                            child: InputDatePickerFormField(
                              fieldLabelText: "Date of Birth",
                              fieldHintText: "mm/dd/yyyy",
                              firstDate: AuthState.firstYear,
                              lastDate: App.today,
                              errorFormatText: "Invalid Date of Birth",
                              errorInvalidText: "That's in the Future",
                              onDateSubmitted:
                                  context.read<AuthCubit>().dateOfBirthChanged,
                              initialDate: context
                                  .read<AuthCubit>()
                                  .state
                                  .dateOfBirth
                                  .value
                                  .getOrElse(() => null),
                            ),
                          ),
                          //
                          Visibility(
                            visible: state.dateOfBirth.value.fold(
                              (l) => state.validate ? true : false,
                              (_) => false,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, left: 12.0),
                              child: AutoSizeText(
                                state.dateOfBirth.value.fold(
                                  (l) => l.message,
                                  (_) => "",
                                ),
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.errorRed,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    HorizontalSpace(width: App.shortest * 0.04),
                    //
                    Flexible(
                      child: Container(
                        margin: state.phone.value.fold(
                          (_) => state.validate
                              ? const EdgeInsets.only(bottom: 18.0)
                              : EdgeInsets.zero,
                          (_) => EdgeInsets.zero,
                        ),
                        child: AppIconButton(
                          child: Icon(
                            Icons.perm_contact_calendar,
                            color: Colors.white,
                          ),
                          onPressed: () => App.showAdaptiveDatePicker(
                            context,
                            firstDate: AuthState.firstYear,
                            currentDate:
                                state.dateOfBirth.value.getOrElse(() => null),
                            helpText: "Choose Date of Birth",
                            fieldLabelText: "Date of Birth",
                            fieldHintText: "mm/dd/yyyy",
                            errorFormatText: "Invalid Date of Birth",
                            errorInvalidText: "That's in the Future",
                            selectedDate:
                                state.dateOfBirth.value.getOrElse(() => null),
                            onChanged:
                                context.read<AuthCubit>().dateOfBirthChanged,
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
            PasswordInputField(focus: _passwordFocus),
            //
            VerticalSpace(height: App.height * .04),
            //
            AppElevatedButton(
              onPressed: context.read<AuthCubit>().createAccount,
              text: "Create Your Account",
              width: App.width,
              height: App.height * 0.05,
            ),
            //
            VerticalSpace(height: App.height * .04),
            //
            Align(
              alignment: Alignment.center,
              child: AutoSizeText.rich(
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
            ),
          ],
        ),
      ),
    );
  }
}
