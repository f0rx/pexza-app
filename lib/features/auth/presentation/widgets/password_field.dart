import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';

class PasswordInputField extends StatelessWidget {
  final FocusNode focus;
  final FocusNode next;

  const PasswordInputField({
    Key key,
    @required this.focus,
    this.next,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Stack(
          children: [
            TextFormField(
              maxLines: 1,
              enableSuggestions: false,
              autocorrect: false,
              cursorColor: Theme.of(context).accentColor,
              keyboardType: TextInputType.visiblePassword,
              obscureText: context.watch<AuthCubit>().state.passwordHidden,
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.next,
              focusNode: focus,
              autofillHints: [
                AutofillHints.newPassword,
              ],
              autovalidateMode: context.watch<AuthCubit>().state.validate
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "secret",
                contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0)
                    .copyWith(bottom: 30.0),
              ),
              onChanged: context.read<AuthCubit>().passwordChanged,
              validator: (value) => context
                  .read<AuthCubit>()
                  .state
                  .password
                  .value
                  .fold((error) => error.message, (r) => null),
              onFieldSubmitted: (_) =>
                  FocusScope.of(context).requestFocus(next),
            ),
            //
            Positioned(
              top: 2,
              right: 0,
              bottom: 2,
              child: Material(
                color: Colors.transparent,
                shape: CircleBorder(),
                clipBehavior: Clip.hardEdge,
                child: IconButton(
                  icon: Icon(
                    context.watch<AuthCubit>().state.passwordHidden
                        ? AppIcons.eyelash_closed
                        : AppIcons.eyelash_open,
                  ),
                  onPressed:
                      context.watch<AuthCubit>().togglePasswordVisibility,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
