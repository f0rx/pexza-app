import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/core/presentation/widgets/index.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render LandlordWithdrawalScreen.
class LandlordWithdrawalScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode _amountFocus = FocusNode();
  final FocusNode _accountNumberFoxus = FocusNode();

  LandlordWithdrawalScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Withdraw Funds'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.015),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Form(
              // autovalidateMode: s.validate
              //     ? AutovalidateMode.always
              //     : AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: TextFormField(
                      maxLines: 1,
                      enableSuggestions: true,
                      autocorrect: false,
                      cursorColor: Theme.of(context).accentColor,
                      keyboardType: TextInputType.number,
                      textCapitalization: TextCapitalization.none,
                      textInputAction: TextInputAction.next,
                      focusNode: _amountFocus,
                      decoration: const InputDecoration(labelText: "Amount"),
                      onChanged: (val) {},
                      validator: (value) => null,
                      onFieldSubmitted: (_) => FocusScope.of(context)
                          .requestFocus(_accountNumberFoxus),
                    ),
                  ),
                  //
                  VerticalSpace(height: App.shortest * 0.04),
                  //
                  DropdownFieldWidget(
                    hint: "-- Select Bank --",
                    items: [
                      'Guarantee Trust Bank',
                      'Access Bank (Diamond)',
                      'Kuda Microfinance Bank',
                      'Wema Bank',
                      'First Bank',
                    ]
                        .map<DropdownMenuItem<String>>(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: AutoSizeText(
                              "$item",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        )
                        .toList(),
                    selected: 'Guarantee Trust Bank',
                    onChanged: (val) {},
                  ),
                  //
                  VerticalSpace(height: App.shortest * 0.04),
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
                      focusNode: _accountNumberFoxus,
                      decoration:
                          const InputDecoration(labelText: "Account Number"),
                      onChanged: (val) {},
                      validator: (value) => null,
                      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                    ),
                  ),
                  //
                  VerticalSpace(height: App.shortest * 0.15),
                  //
                  AppElevatedButton(
                    onPressed: () => navigator.push(
                      Routes.successfulScreen,
                      arguments: SuccessfulScreenArguments(
                        image: AppAssets.posWithdrawal,
                        title: 'Withdrawal Successful',
                        description: "Your withdrawal is successful. "
                            "\nPlease check your email for "
                            "confirmation and receipt.",
                        onPressed: () => navigator.pop(),
                      ),
                    ),
                    text: 'Withdraw',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
