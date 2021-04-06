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
            /////////    FIRST NAME FIELD    ////////
            FirstNameField(
              focus: _firstNameFocus,
              next: _lastNameFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    LAST NAME FIELD    ////////
            LastNameField(
              focus: _lastNameFocus,
              next: _emailAddressFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    EMAIL ADDRESS FIELD    ////////
            EmailAddressField(
              focus: _emailAddressFocus,
              next: _phoneNumberFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    PHONE FIELD    ////////
            PhoneNumberField(
              focus: _phoneNumberFocus,
              next: _passwordFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    GENDER FIELD    ////////
            GenderField(focus: null),
            //
            VerticalSpace(height: inputSpacing),
            /////////    DATE of BIRTH FIELD    ////////
            DateOfBirthField(
              labelText: "Date of Birth",
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    PASSWORD FIELD    ////////
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
