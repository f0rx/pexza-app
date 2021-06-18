import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/home/tenant/presentation/managers/debit_card/debit_card_cubit.dart';

/// A stateless widget to render AddNewCardScreen.
class AddNewCardScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode _cardNumberFocus = FocusNode();
  final FocusNode _cardNameFocus = FocusNode();
  final FocusNode _cardDateFocus = FocusNode();
  final FocusNode _cardCVVFocus = FocusNode();
  final FocusNode _cardDescriptionFocus = FocusNode();

  AddNewCardScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DebitCardCubit>(),
      child: BlocListener<DebitCardCubit, DebitCardState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.init(
            context,
            position: either.fold((_) => null, (r) => r?.position),
            message: either.fold(
              (f) => f.message ?? f.error,
              (r) => r.message ?? r.details,
            ),
            icon: either.fold(
              (_) => null,
              (r) => r.fold(
                info: (_) => Icons.info_outline_rounded,
                success: (_) => Icons.check_circle_rounded,
              ),
            ),
            iconColor: either.fold(
              (_) => null,
              (r) => r.fold(
                info: (_) => AppColors.assessmentBlue,
                success: (_) => AppColors.successGreen,
              ),
            ),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (r) => r.fold(
                success: (val) => val.popRoute
                    ? (_) async {
                        do {
                          navigator.pop(
                            c.read<DebitCardCubit>().state.currentDebitCard,
                          );
                        } while (
                            Helpers.I.currentRoute == Routes.addNewCardScreen);
                      }
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
      appBar: Toolbar(title: "Add New Card"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.015),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<DebitCardCubit, DebitCardState>(
              builder: (c, s) => Form(
                autovalidateMode: s.validate
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: TextFormField(
                        maxLines: 1,
                        enableSuggestions: true,
                        autocorrect: false,
                        enabled: !s.isLoading,
                        // initialValue: "${s.cardName.getOrEmpty}",
                        cursorColor: Theme.of(c).accentColor,
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        focusNode: _cardNameFocus,
                        decoration: const InputDecoration(
                          labelText: "Full Name on the Card",
                          prefixIcon: const Icon(Icons.person_outline_rounded),
                        ),
                        autofillHints: [
                          AutofillHints.creditCardName,
                          AutofillHints.creditCardGivenName,
                          AutofillHints.creditCardMiddleName,
                          AutofillHints.creditCardFamilyName,
                        ],
                        onChanged: c.read<DebitCardCubit>().cardNameChanged,
                        validator: (value) =>
                            c.read<DebitCardCubit>().state.cardName.value.fold(
                                  (error) => error.message,
                                  (r) => null,
                                ),
                        onFieldSubmitted: (_) => FocusScope.of(context)
                            .requestFocus(_cardNumberFocus),
                      ),
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.05),
                    //
                    Flexible(
                      child: TextFormField(
                        maxLines: 1,
                        enableSuggestions: true,
                        autocorrect: false,
                        enabled: !s.isLoading,
                        // initialValue: "${s.cardNumber.getOrEmpty}", // 5399 8347 3237 2214
                        cursorColor: Theme.of(c).accentColor,
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        focusNode: _cardNumberFocus,
                        decoration: const InputDecoration(
                          labelText: "16 digits Card Number",
                          hintText: 'XXXX XXXX XXXX XXXX',
                          prefixIcon: const Icon(Icons.credit_card_rounded),
                        ),
                        // autofillHints: [AutofillHints.creditCardNumber],
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(23),
                          MaskedTextInputFormatter(
                            mask: 'xxxx xxxx xxxx xxxx xxx',
                            separator: ' ',
                          ),
                        ],
                        onChanged: c.read<DebitCardCubit>().cardNumberChanged,
                        validator: (value) => c
                            .read<DebitCardCubit>()
                            .state
                            .cardNumber
                            .value
                            .fold(
                              (error) => error.message,
                              (r) => null,
                            ),
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).requestFocus(_cardDateFocus),
                      ),
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.05),
                    //
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: TextFormField(
                              maxLines: 1,
                              enableSuggestions: true,
                              autocorrect: false,
                              enabled: !s.isLoading,
                              // initialValue: "${s.expiryDate.getOrEmpty}",
                              cursorColor: Theme.of(c).accentColor,
                              keyboardType: TextInputType.number,
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.next,
                              focusNode: _cardDateFocus,
                              decoration: const InputDecoration(
                                labelText: "Expiry Date",
                                hintText: 'MM/YY',
                                prefixIcon:
                                    const Icon(Icons.calendar_today_outlined),
                              ),
                              // autofillHints: [AutofillHints.creditCardExpirationDate],
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(5),
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]\/*'),
                                ),
                                MaskedTextInputFormatter(
                                  mask: 'xx/xx',
                                  separator: '/',
                                ),
                              ],
                              onChanged: c
                                  .read<DebitCardCubit>()
                                  .cardExpiryDateChanged,
                              validator: (value) => c
                                  .read<DebitCardCubit>()
                                  .state
                                  .expiryDate
                                  .value
                                  .fold(
                                    (error) => error.message,
                                    (r) => null,
                                  ),
                              onFieldSubmitted: (_) => FocusScope.of(context)
                                  .requestFocus(_cardCVVFocus),
                            ),
                          ),
                          //
                          HorizontalSpace(width: App.shortest * 0.05),
                          //
                          Flexible(
                            child: TextFormField(
                              maxLines: 1,
                              enableSuggestions: true,
                              autocorrect: false,
                              enabled: !s.isLoading,
                              // initialValue: "${s.cardCVV.getOrEmpty}",
                              cursorColor: Theme.of(c).accentColor,
                              keyboardType: TextInputType.number,
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.next,
                              focusNode: _cardCVVFocus,
                              decoration: const InputDecoration(
                                labelText: "CVV",
                                hintText: '***',
                                suffixIcon: const Tooltip(
                                  message: 'We need this infomation '
                                      'to process payment',
                                  child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(
                                      Icons.info,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                              autofillHints: [
                                AutofillHints.creditCardSecurityCode
                              ],
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(4),
                                FilteringTextInputFormatter.deny(' '),
                                FilteringTextInputFormatter.digitsOnly,
                              ],

                              onChanged:
                                  c.read<DebitCardCubit>().cardCVVChanged,
                              validator: (value) => c
                                  .read<DebitCardCubit>()
                                  .state
                                  .cardCVV
                                  .value
                                  .fold(
                                    (error) => error.message,
                                    (r) => null,
                                  ),
                              onFieldSubmitted: (_) => FocusScope.of(context)
                                  .requestFocus(_cardDescriptionFocus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    VerticalSpace(height: App.shortest * 0.07),
                    //
                    Flexible(
                      child: TextFormField(
                        maxLines: 4,
                        enableSuggestions: true,
                        autocorrect: true,
                        enabled: !s.isLoading,
                        initialValue: "${s.description.getOrNull}",
                        cursorColor: Theme.of(c).accentColor,
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.sentences,
                        textInputAction: TextInputAction.newline,
                        focusNode: _cardDescriptionFocus,
                        decoration: const InputDecoration(
                          labelText: "Some description",
                        ),
                        onChanged:
                            c.read<DebitCardCubit>().cardDescriptionChanged,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).unfocus(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.12),
            //
            BlocBuilder<DebitCardCubit, DebitCardState>(
              buildWhen: (p, c) => p.isLoading != c.isLoading,
              builder: (c, s) => Visibility(
                visible: !s.isLoading,
                replacement: SizedBox(
                  height: 45.0,
                  child: Center(
                    child: CircularProgressBar.adaptive(
                      width: 40,
                      height: 40,
                      strokeWidth: 3.5,
                      radius: 14,
                    ),
                  ),
                ),
                child: AppElevatedButton(
                  onPressed: () => context.read<DebitCardCubit>().addNewCard(),
                  disabled: s.isLoading,
                  text: "Continue to Payment",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
