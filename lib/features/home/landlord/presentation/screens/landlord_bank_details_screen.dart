import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/core/presentation/widgets/index.dart';
import 'package:pexza/features/home/landlord/domain/entities/withdrawal/index.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/assets.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render LandlordBankDetailsScreen.
class LandlordBankDetailsScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode _accountNumberFocus = FocusNode();

  LandlordBankDetailsScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordWithdrawalCubit>()..fetchBanks(),
      child: BlocListener<LandlordWithdrawalCubit, LandlordWithdrawalState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.init(
            c,
            duration: either.fold(
              (l) => null,
              (r) => r.fold(info: (_) => Duration(seconds: 2)),
            ),
            message: either.fold(
              (f) => f?.message ?? f?.error,
              (r) => r?.message ?? r?.details,
            ),
            icon: either.fold(
              (_) => null,
              (r) => r.fold(
                info: (_) => Icons.info,
                success: (_) => Icons.check_circle_rounded,
              ),
            ),
            iconColor: either.fold(
              (_) => null,
              (r) => r.fold(
                info: (_) => Colors.blueAccent,
                success: (_) => AppColors.successGreen,
              ),
            ),
            position: either.fold((l) => null, (r) => r.position),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (r) => r.fold(
                success: (s) => s.popRoute == true
                    ? (_) =>
                        navigator.popAndPush(Routes.landlordWithdrawalScreen)
                    : null,
              ),
            ),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          padding: EdgeInsets.symmetric(
            horizontal: Helpers.appPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AppAssets.freePick,
              //
              VerticalSpace(height: 0.08.sh),
              //
              BlocBuilder<LandlordWithdrawalCubit, LandlordWithdrawalState>(
                builder: (c, s) => Form(
                  autovalidateMode: s.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: AutofillGroup(
                    onDisposeAction: AutofillContextAction.commit,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: DropdownFieldWidget(
                            hint: "-- Select Bank --",
                            disabled: s.isLoading,
                            disabledHint: "Fetching banks within your region..",
                            items: s.banks
                                .asList()
                                .map<DropdownMenuItem<Bank>>(
                                  (item) => DropdownMenuItem<Bank>(
                                    value: item,
                                    child: AutoSizeText(
                                      "${item.name?.getOrEmpty}",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                    ),
                                  ),
                                )
                                .toList(),
                            selected: s.accountDetail.bank,
                            validate: s.validate,
                            error: s.accountDetail.bank == null
                                ? 'Please select a bank!'
                                : s.response.fold(
                                    () => null,
                                    (either) => either.fold(
                                      (f) => f.message,
                                      (_) => null,
                                    ),
                                  ),
                            onChanged:
                                c.read<LandlordWithdrawalCubit>().bankChanged,
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.03.sh),
                        //
                        Flexible(
                          child: TextFormField(
                            maxLines: 1,
                            enableSuggestions: true,
                            autocorrect: false,
                            cursorColor: Theme.of(context).accentColor,
                            keyboardType: TextInputType.number,
                            textCapitalization: TextCapitalization.none,
                            textInputAction: TextInputAction.done,
                            focusNode: _accountNumberFocus,
                            enabled: !s.isLoading,
                            decoration: InputDecoration(
                              labelText: "Account Number",
                              enabled: !s.isLoading,
                            ),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(
                                LandlordWithdrawalState.ACCOUNT_NUMBER_LENMGTH,
                              ),
                            ],
                            onChanged: c
                                .read<LandlordWithdrawalCubit>()
                                .accountNumberChanged,
                            validator: (_) =>
                                s.accountDetail.accountNumber.value.fold(
                              (f) => f.message,
                              (_) => s.response.fold(
                                () => null,
                                (either) => either.fold(
                                  (f) => f.message,
                                  (_) => null,
                                ),
                              ),
                            ),
                            onFieldSubmitted: (_) =>
                                FocusScope.of(context).unfocus(),
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.03.sh),
                        //
                        Flexible(
                          child: TextFormField(
                            maxLines: 1,
                            enableSuggestions: false,
                            autocorrect: false,
                            controller: TextEditingController.fromValue(
                              TextEditingValue(
                                text:
                                    "${s.accountDetail?.accountName?.getOrEmpty ?? ''}",
                              ),
                            ),
                            cursorColor: Theme.of(context).accentColor,
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            readOnly: true,
                            enabled: false,
                            decoration: InputDecoration(
                              labelText: "Your Account Name",
                              enabled: false,
                            ),
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.03.sh),
                        //
                        Flexible(
                          child: Visibility(
                            visible: s.isLoading && s.banks.isEmpty(),
                            child: AppElevatedButton(
                              text: "Save",
                              disabled: true,
                              onPressed: null,
                            ),
                          ),
                        ),
                        //
                        if (!s.banks.isEmpty())
                          Flexible(
                            child: Visibility(
                              visible: !s.isLoading,
                              replacement: SizedBox(
                                height: 45.0,
                                child: Center(
                                  child: CircularProgressIndicator.adaptive(
                                    semanticsLabel: "Loading..",
                                    strokeWidth: 2.5,
                                  ),
                                ),
                              ),
                              child: AppElevatedButton(
                                text: "Save",
                                onPressed: c
                                    .read<LandlordWithdrawalCubit>()
                                    .storeAccount,
                              ),
                            ),
                          ),
                        //
                        VerticalSpace(height: 0.07.sh),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
