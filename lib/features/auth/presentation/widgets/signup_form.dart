part of 'package:pexza/features/auth/presentation/screens/signup_screen.dart';

class _SignUpForm extends StatelessWidget {
  static double inputSpacing = App.longest * 0.015;

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
              focus: AuthState.firstNameFocus,
              next: AuthState.lastNameFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    LAST NAME FIELD    ////////
            LastNameField(
              focus: AuthState.lastNameFocus,
              next: AuthState.emailAddressFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    EMAIL ADDRESS FIELD    ////////
            EmailAddressField(
              focus: AuthState.emailAddressFocus,
              next: AuthState.phoneNumberFocus,
            ),
            //
            VerticalSpace(height: inputSpacing),
            /////////    PHONE FIELD    ////////
            PhoneNumberField(
              focus: AuthState.phoneNumberFocus,
              next: AuthState.passwordFocus,
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
            PasswordInputField(focus: AuthState.passwordFocus),
            //
            VerticalSpace(height: App.height * .04),
            //
            AppElevatedButton(
              onPressed: context.read<AuthCubit>().createAccount,
              text: "Create Your Account",
              width: App.width,
              height: App.shortest * 0.12,
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
                        ..onTap = () => navigator.replace(Routes.loginScreen),
                      style: TextStyle(
                        color: App.theme.accentColor,
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            VerticalSpace(height: App.height * .06),
          ],
        ),
      ),
    );
  }
}
