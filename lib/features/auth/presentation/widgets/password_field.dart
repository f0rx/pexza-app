import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';

class PasswordInputField extends StatelessWidget {
  final FocusNode focus;
  final FocusNode next;
  final bool hasLabel;
  final String hintText;
  final FIELD_VALIDATION mode;

  const PasswordInputField({
    Key key,
    @required this.focus,
    this.next,
    this.hasLabel = true,
    this.hintText = "secret",
    this.mode,
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
                labelText: hasLabel ? "Password" : null,
                hintText: hintText,
                contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0)
                    .copyWith(bottom: 30.0),
              ),
              onChanged: (value) =>
                  context.read<AuthCubit>().passwordChanged(value, mode: mode),
              validator: (value) =>
                  context.read<AuthCubit>().state.password.value.fold(
                        (error) => error.message,
                        (r) => context.read<AuthCubit>().state.authStatus.fold(
                              () => null,
                              (_) => _.fold(
                                (f) => !f.errors.isNull
                                    ? f.errors?.password?.firstOrNull
                                    : null,
                                (r) => null,
                              ),
                            ),
                      ),
              onFieldSubmitted: (_) => next == null
                  ? FocusScope.of(context).unfocus()
                  : FocusScope.of(context).requestFocus(next),
            ),
            //
            Positioned(
              top: 2,
              right: 0,
              bottom: context.read<AuthCubit>().state.password.value.fold(
                    (l) => context.read<AuthCubit>().state.validate ? 20 : 2,
                    (r) => context.read<AuthCubit>().state.authStatus.fold(
                          () => 2,
                          (_) => _.fold(
                            (f) => !f.errors.isNull &&
                                    !f.errors.password.isNull &&
                                    f.errors.password.isNotEmpty
                                ? 20
                                : 2,
                            (_) => 2,
                          ),
                        ),
                  ),
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
