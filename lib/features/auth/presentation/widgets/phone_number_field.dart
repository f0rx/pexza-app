import 'package:auto_size_text/auto_size_text.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/vertical_spacer.dart';

class PhoneNumberField extends StatelessWidget {
  final FocusNode focus;
  final FocusNode next;

  PhoneNumberField({Key key, this.focus, this.next}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: context.read<AuthCubit>().state.phone.value.fold(
                        (l) => context.read<AuthCubit>().state.validate
                            ? AppColors.errorRed
                            : Colors.grey,
                        (r) => Colors.grey),
                  ),
                ),
                child: Row(
                  children: [
                    // Flag Dropdown
                    Flexible(
                      flex: 2,
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          layoutBehavior: ButtonBarLayoutBehavior.constrained,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          child: DropdownButton<Country>(
                            value: context.watch<AuthCubit>().state.region,
                            items: _flagBuilder,
                            icon: null,
                            iconSize: 0.0,
                            elevation: 0,
                            isDense: true,
                            isExpanded: true,
                            onChanged: context.read<AuthCubit>().countryChanged,
                          ),
                        ),
                      ),
                    ),
                    // Divider
                    Container(
                      height: 24.0,
                      width: 0.67,
                      color: Colors.grey.shade400,
                      margin: const EdgeInsets.only(right: 6.0),
                    ),
                    // Phone Number
                    Flexible(
                      flex: 7,
                      child: TextFormField(
                        maxLines: 1,
                        autocorrect: false,
                        enableSuggestions: true,
                        keyboardType: TextInputType.phone,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: next == null
                            ? TextInputAction.done
                            : TextInputAction.next,
                        focusNode: focus,
                        autofillHints: [
                          AutofillHints.telephoneNumberLocal,
                          AutofillHints.telephoneNumberNational,
                        ],
                        decoration: InputDecoration(
                          hintText: context
                              .watch<AuthCubit>()
                              .state
                              .phone
                              .country
                              .hintText,
                          isDense: true,
                          isCollapsed: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: App.shortest * 0.036),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (value) =>
                            context.read<AuthCubit>().phoneNumberChanged(
                                  value,
                                  mode: FIELD_VALIDATION.BASIC,
                                ),
                        validator: (value) =>
                            context.read<AuthCubit>().state.phone.value.fold(
                                  (error) => error.message,
                                  (r) => context
                                      .read<AuthCubit>()
                                      .state
                                      .authStatus
                                      .fold(
                                        () => null,
                                        (_) => _.fold(
                                          (f) => f.errors.phone.firstOrNull,
                                          (r) => null,
                                        ),
                                      ),
                                ),
                        onFieldSubmitted: (_) => next == null
                            ? FocusScope.of(context).unfocus()
                            : FocusScope.of(context).requestFocus(next),
                      ),
                    ),
                    //
                  ],
                ),
              ),
            ),
            //
            Visibility(
              visible: context.read<AuthCubit>().state.phone.value.fold(
                    (l) =>
                        context.read<AuthCubit>().state.validate ? true : false,
                    (r) => false,
                  ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                child: AutoSizeText(
                  context.read<AuthCubit>().state.phone.value.fold(
                        (l) => l.message,
                        (r) => "",
                      ),
                  style: TextStyle(
                    fontSize: 12.0,
                    color: AppColors.errorRed,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  List<DropdownMenuItem<Country>> get _flagBuilder {
    return AuthState.countries.iter
        .map<DropdownMenuItem<Country>>(
          (item) => DropdownMenuItem<Country>(
            value: item,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Flags.getFlag(
                    country: item.codeName,
                    height: 22.0,
                    width: 22.0,
                    fit: BoxFit.contain,
                  ),
                ),
                //
                VerticalSpace(height: App.shortest * 0.05),
                //
                Flexible(
                  child: AutoSizeText(
                    item.dialCode,
                    maxLines: 1,
                    maxFontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        )
        .toList();
  }
}
