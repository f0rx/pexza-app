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

  const DateOfBirthField({
    Key key,
    @required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: context.read<AuthCubit>().toggleGlow,
                    child: AbsorbPointer(
                      absorbing:
                          !context.read<AuthCubit>().state.dateOfBirth.isValid,
                      child: InputDatePickerFormField(
                        fieldLabelText: "$labelText",
                        fieldHintText: "mm/dd/yyyy",
                        firstDate: AuthState.firstYear,
                        lastDate: AuthState.lastYear,
                        errorFormatText: "Invalid $labelText",
                        errorInvalidText: "That's in the Future",
                        onDateSubmitted:
                            context.read<AuthCubit>().dateOfBirthChanged,
                        initialDate: context
                            .read<AuthCubit>()
                            .state
                            .dateOfBirth
                            .value
                            .getOrElse(() => null),
                      ),
                    ),
                  ),
                  //
                  Visibility(
                    visible: state.dateOfBirth.value.fold(
                      (l) => state.validate ? true : false,
                      (_) => state.authStatus.fold(
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
                        state.dateOfBirth.value.fold(
                          (l) => l.message,
                          (r) => state.authStatus.fold(
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
                margin: state.dateOfBirth.value.fold(
                  (_) => state.validate
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
                          currentDate:
                              state.dateOfBirth.value.getOrElse(() => null),
                          helpText: "Choose $labelText",
                          fieldLabelText: "$labelText",
                          fieldHintText: "mm/dd/yyyy",
                          errorFormatText: "Invalid $labelText",
                          errorInvalidText: "That's in the Future",
                          selectedDate:
                              state.dateOfBirth.value.getOrElse(() => null),
                          onChanged:
                              context.read<AuthCubit>().dateOfBirthChanged,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
