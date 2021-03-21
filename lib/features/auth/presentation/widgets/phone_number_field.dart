import 'package:auto_size_text/auto_size_text.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/domain/entities/fields/fields.dart';
import 'package:pexza/utils/utils.dart';

class PhoneNumberField extends StatelessWidget {
  final FocusNode focus;

  PhoneNumberField({Key key, this.focus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            children: [
              // Flag Dropdown
              Flexible(
                flex: 2,
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: false,
                    layoutBehavior: ButtonBarLayoutBehavior.constrained,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                  enableSuggestions: true,
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.done,
                  focusNode: focus,
                  autofillHints: [
                    AutofillHints.telephoneNumberLocal,
                    AutofillHints.telephoneNumberNational,
                  ],
                  autovalidateMode: context.watch<AuthCubit>().state.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    hintText:
                        context.watch<AuthCubit>().state.phone.country.hintText,
                    isDense: true,
                    isCollapsed: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: App.height * 0.018),
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
                      context.read<AuthCubit>().phoneNumberChanged(value),
                  validator: (value) => context
                      .read<AuthCubit>()
                      .state
                      .phone
                      .value
                      .fold((error) => error.message, (r) => null),
                ),
              ),
              //
            ],
          ),
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
