import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/cupertino.dart';

class PinInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TokenVerificationCubit, TokenVerificationState>(
      builder: (context, state) => PinCodeTextField(
        appContext: context,
        length: 6,
        pinTheme: PinTheme(
          fieldHeight: App.width * 0.13,
          fieldWidth: App.width * 0.12,
          borderWidth: 1.0,
          borderRadius: BorderRadius.circular(12.0),
          shape: PinCodeFieldShape.box,
          activeColor: Colors.grey.shade300,
          inactiveColor: Colors.grey,
          activeFillColor: Colors.black12,
          inactiveFillColor: Colors.transparent,
          selectedColor: Theme.of(context).primaryColorDark,
          selectedFillColor: Colors.transparent,
        ),
        enableActiveFill: true,
        enabled: true,
        autoFocus: true,
        blinkWhenObscuring: true,
        textCapitalization: TextCapitalization.none,
        backgroundColor: Colors.transparent,
        animationType: AnimationType.scale,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        keyboardType: TextInputType.number,
        beforeTextPaste: (String clipboard) =>
            RegExp(onlyNumbersPattern).hasMatch(clipboard.trim()),
        onCompleted: context.read<TokenVerificationCubit>().onCompleted,
        onSubmitted: context.read<TokenVerificationCubit>().onSubmitted,
        onChanged: context.read<TokenVerificationCubit>().onChanged,
        validator: (string) {
          return null;
        },
      ),
    );
  }
}
