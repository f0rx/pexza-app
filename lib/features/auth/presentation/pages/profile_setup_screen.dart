import 'package:auto_size_text/auto_size_text.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pexza/utils/utils.dart';

class ProfileSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: AutoSizeText(
                      "Setup Profile",
                      textAlign: TextAlign.center,
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
                  SizedBox(height: App.height * 0.035),
                  //
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: App.width * 0.05),
                      child: AutoSizeText(
                        "Your landlord has created a profile for you within our platform. "
                        "Please, enter the Token sent to your mail below.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                        softWrap: true,
                        wrapWords: true,
                      ),
                    ),
                  ),
                  //
                  // PinCodeTextField(
                  //   length: 6,
                  //   obscureText: false,
                  //   animationType: AnimationType.fade,
                  //   pinTheme: PinTheme(
                  //     shape: PinCodeFieldShape.box,
                  //     borderRadius: BorderRadius.circular(5),
                  //     fieldHeight: 50,
                  //     fieldWidth: 40,
                  //     activeFillColor: Colors.white,
                  //   ),
                  //   animationDuration: Duration(milliseconds: 300),
                  //   backgroundColor: Colors.blue.shade50,
                  //   enableActiveFill: true,
                  //   // errorAnimationController: errorController,
                  //   // controller: textEditingController,
                  //   onCompleted: (v) {
                  //     print("Completed");
                  //   },
                  //   onChanged: (value) {
                  //     print(value);
                  //     // setState(() {
                  //     //   currentText = value;
                  //     // });
                  //   },
                  //   beforeTextPaste: (text) {
                  //     print("Allowing to paste $text");
                  //     //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //     //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  //     return true;
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
