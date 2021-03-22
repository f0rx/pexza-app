import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';

class PasswordConfirmationField extends StatelessWidget {
  final FocusNode focus;
  final FocusNode next;
  final bool hasLabel;

  const PasswordConfirmationField({
    Key key,
    @required this.focus,
    this.next,
    this.hasLabel = true,
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
              textInputAction:
                  next == null ? TextInputAction.done : TextInputAction.next,
              focusNode: focus,
              autofillHints: [
                AutofillHints.newPassword,
              ],
              autovalidateMode: context.watch<AuthCubit>().state.validate
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              decoration: InputDecoration(
                labelText: hasLabel ? "Password Confirmation" : null,
                hintText: "Confirm New Password",
                contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0)
                    .copyWith(bottom: 30.0),
              ),
              onChanged: context.read<AuthCubit>().passwordConfirmationChanged,
              validator: (value) => context
                  .read<AuthCubit>()
                  .state
                  .passwordConfirmation
                  .value
                  .fold((error) => error.message, (r) => null),
              onFieldSubmitted: (_) => next == null
                  ? FocusScope.of(context).unfocus()
                  : FocusScope.of(context).requestFocus(next),
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
