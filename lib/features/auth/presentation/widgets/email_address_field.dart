import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';

class EmailAddressField extends StatelessWidget {
  final FocusNode focus;
  final FocusNode next;

  const EmailAddressField({
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
          initialValue: state.emailAddress?.getOrNull,
          cursorColor: Theme.of(context).accentColor,
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.none,
          focusNode: focus,
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
                    (f) => f.errors?.email?.firstOrNull,
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
