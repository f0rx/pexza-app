import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';

class FirstNameField extends StatelessWidget {
  final FocusNode focus;
  final FocusNode next;

  const FirstNameField({
    Key key,
    @required this.focus,
    this.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return TextFormField(
          maxLines: 1,
          enableSuggestions: true,
          autocorrect: false,
          initialValue: state.firstName?.getOrNull,
          cursorColor: Theme.of(context).accentColor,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.next,
          focusNode: focus,
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
          onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(next),
        );
      },
    );
  }
}
