import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class DateOfBirthField extends StatelessWidget {
  final String labelText;
  static final custom = AuthState.firstYear.add(
    const Duration(days: 1000),
  );

  const DateOfBirthField({
    Key key,
    @required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.read<AuthCubit>().state.dateOfBirth?.getOrNull != null &&
        !context.read<AuthCubit>().state.dateOfBirth.isValidDateOfBirth)
      context.read<AuthCubit>().dateOfBirthChanged(custom);

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (c, s) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: c.read<AuthCubit>().toggleGlow,
                  child: AbsorbPointer(
                    absorbing: !s.dateOfBirth.isValid,
                    child: InputDatePickerFormField(
                      fieldLabelText: "$labelText",
                      fieldHintText: "mm/dd/yyyy",
                      firstDate: AuthState.firstYear,
                      lastDate: AuthState.lastYear,
                      errorFormatText: "Invalid $labelText",
                      errorInvalidText: "That's in the Future",
                      onDateSubmitted:
                          context.read<AuthCubit>().dateOfBirthChanged,
                      initialDate: s.dateOfBirth?.getOrNull == null
                          ? null
                          : s.dateOfBirth.isValidDateOfBirth
                              ? s.dateOfBirth.value.getOrElse(() => null)
                              : custom,
                    ),
                  ),
                ),
                //
                Visibility(
                  visible: s.dateOfBirth.value.fold(
                    (l) => s.validate ? true : false,
                    (_) => s.authStatus.fold(
                      () => false,
                      (_) => _.fold(
                        (f) => !f.errors.age.isNull && f.errors.age.isNotEmpty
                            ? true
                            : false,
                        (_) => false,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                    child: AutoSizeText(
                      s.dateOfBirth.value.fold(
                        (l) => l.message,
                        (r) => s.authStatus.fold(
                          () => "",
                          (_) => _.fold(
                            (f) => f.errors.age.firstOrEmpty,
                            (_) => "",
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 12.0,
                        color: AppColors.errorRed,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //
          HorizontalSpace(width: App.shortest * 0.03),
          //
          Flexible(
            child: Container(
              margin: s.dateOfBirth.value.fold(
                (_) => s.validate
                    ? const EdgeInsets.only(bottom: 18.0)
                    : EdgeInsets.zero,
                (_) => context.read<AuthCubit>().state.authStatus.fold(
                      () => EdgeInsets.zero,
                      (_) => _.fold(
                        (f) => !f.errors.age.isNull && f.errors.age.isNotEmpty
                            ? const EdgeInsets.only(bottom: 18.0)
                            : EdgeInsets.zero,
                        (_) => EdgeInsets.zero,
                      ),
                    ),
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: App.shortest * 0.12,
                ),
                child: Portal(
                  child: PortalEntry(
                    // visible: context.watch<AuthCubit>().state.shouldGlow,
                    visible: false,
                    portal: Text("Tap here"),
                    portalAnchor: Alignment.center,
                    childAnchor: Alignment.bottomCenter,
                    child: AppIconButton(
                      child: Icon(
                        Icons.perm_contact_calendar,
                        color: Colors.white,
                        size: App.shortest * 0.06,
                      ),
                      onPressed: () => App.showAdaptiveDatePicker(
                        context,
                        firstDate: AuthState.firstYear,
                        lastDate: AuthState.lastYear,
                        currentDate: s.dateOfBirth.value.getOrElse(() => null),
                        helpText: "Choose $labelText",
                        fieldLabelText: "$labelText",
                        fieldHintText: "mm/dd/yyyy",
                        errorFormatText: "Invalid $labelText",
                        errorInvalidText: "That's in the Future",
                        selectedDate: s.dateOfBirth.value.getOrElse(() => null),
                        onChanged: context.read<AuthCubit>().dateOfBirthChanged,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
