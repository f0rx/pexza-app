import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/core/domain/validator/validator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/cupertino.dart';

class PinInputWidget<Reactive extends Cubit<State>, State>
    extends StatelessWidget {
  final int length;
  final FocusNode focus;
  final bool validate;
  final bool autoFocus;
  final double height;
  final double width;
  final double borderWidth;
  final BorderRadius borderRadius;
  final TextInputType keyboardType;
  final void Function(String) onCompleted;
  final void Function(String) onSubmitted;
  final void Function(String) onChanged;
  final String Function(String, State) validator;
  State _state;

  PinInputWidget({
    Key key,
    this.length = 6,
    this.focus,
    this.validate = false,
    this.autoFocus = false,
    this.height,
    this.width,
    this.borderWidth = 1.0,
    this.borderRadius,
    this.keyboardType = TextInputType.number,
    this.onCompleted,
    this.onSubmitted,
    @required this.onChanged,
    this.validator,
  }) : super(key: key);

  set __state(State value) => _state = value;

  State get state => _state;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Reactive, State>(
      builder: (context, s) {
        __state = s;

        return PinCodeTextField(
          appContext: context,
          length: length,
          pinTheme: PinTheme(
            fieldHeight: height ?? App.width * 0.13,
            fieldWidth: width ?? App.width * 0.12,
            borderWidth: borderWidth,
            borderRadius: borderRadius ?? BorderRadius.circular(12.0),
            shape: PinCodeFieldShape.box,
            activeColor: Colors.grey.shade300,
            inactiveColor: Colors.grey,
            activeFillColor: Colors.black12,
            inactiveFillColor: Colors.transparent,
            selectedColor: Theme.of(context).primaryColorDark,
            selectedFillColor: Colors.transparent,
          ),
          enableActiveFill: true,
          enablePinAutofill: true,
          enabled: true,
          autoFocus: autoFocus,
          blinkWhenObscuring: true,
          textCapitalization: TextCapitalization.none,
          backgroundColor: Colors.transparent,
          animationType: AnimationType.scale,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          errorAnimationController: StreamController<ErrorAnimationType>(),
          focusNode: focus,
          errorTextSpace: 30,
          autovalidateMode:
              validate ? AutovalidateMode.always : AutovalidateMode.disabled,
          keyboardType: keyboardType,
          beforeTextPaste: (String clipboard) =>
              RegExp(onlyNumbersPattern).hasMatch(clipboard.trim()),
          onCompleted: onCompleted,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          validator: (_) => validator?.call(_, state),
        );
      },
    );
  }
}
