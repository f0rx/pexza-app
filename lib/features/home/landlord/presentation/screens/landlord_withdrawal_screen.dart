import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render LandlordWithdrawalScreen.
class LandlordWithdrawalScreen extends StatefulWidget with AutoRouteWrapper {
  final BankAccountDetail account;

  LandlordWithdrawalScreen({Key key, @required this.account}) : super(key: key);

  @override
  _LandlordWithdrawalScreenState createState() =>
      _LandlordWithdrawalScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordWithdrawalCubit>()..init(account),
      child: BlocListener<LandlordWithdrawalCubit, LandlordWithdrawalState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => either.fold(
            (f) => BottomAlertDialog.init(c, message: f?.message),
            (r) => BottomAlertDialog.init(
              c,
              message: r?.message,
              callback: either.fold(
                (_) => null,
                (r) => r.fold(
                  success: (s) => s.popRoute == true
                      ? (_) => navigator.replace(
                            Routes.successfulScreen,
                            arguments: SuccessfulScreenArguments(
                              image: AppAssets.posWithdrawal,
                              title: 'Withdrawal Successful!',
                              description: "${s.message} "
                                  "\n\nPlease check your e-mail for "
                                  "confirmation and receipt.",
                              button: 'Great!',
                              onPressed: () =>
                                  navigator.popUntilPath(Routes.accountScreen),
                            ),
                          )
                      : null,
                ),
              ),
            ),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _LandlordWithdrawalScreenState extends State<LandlordWithdrawalScreen>
    with AutomaticKeepAliveClientMixin<LandlordWithdrawalScreen> {
  User user;

  @override
  void initState() {
    super.initState();
    user = BlocProvider.of<AuthWatcherCubit>(context).state.user;
    BlocProvider.of<LandlordWithdrawalCubit>(context)
        .walletBalanceChanged(user.accountBalance.getOrNull);
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

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
            BlocBuilder<LandlordWithdrawalCubit, LandlordWithdrawalState>(
              builder: (c, s) => Form(
                autovalidateMode: s.validate
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: AutofillGroup(
                  onDisposeAction: AutofillContextAction.commit,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: AutoSizeText.rich(
                          TextSpan(children: [
                            TextSpan(text: "Wallet balance = "),
                            //
                            TextSpan(
                              text: "${s.landlordWallet.balance?.getOrEmpty}"
                                  .asCurrency(symbol: true),
                            ),
                          ]),
                        ),
                      ),
                      //
                      Flexible(
                        child: TextFormField(
                          maxLines: 1,
                          enableSuggestions: true,
                          autocorrect: false,
                          autofocus: true,
                          cursorColor: Theme.of(context).accentColor,
                          keyboardType: TextInputType.number,
                          textCapitalization: TextCapitalization.none,
                          textInputAction: TextInputAction.done,
                          focusNode: LandlordWithdrawalState.amountFocus,
                          controller: s.amountController,
                          decoration:
                              const InputDecoration(labelText: "Amount"),
                          onChanged:
                              c.read<LandlordWithdrawalCubit>().amountChanged,
                          validator: (_) => s.amount.value.fold(
                            (f) => f.message,
                            (_) => s.response.fold(
                              () => null,
                              (some) => some.fold(
                                (f) => f.errors.amount.firstOrNil,
                                (_) => null,
                              ),
                            ),
                          ),
                          onFieldSubmitted: (_) =>
                              FocusScope.of(context).unfocus(),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.shortest * 0.04),
                      //
                      Flexible(
                        child: TextFormField(
                          maxLines: 1,
                          enabled: false,
                          initialValue: s.accountDetail?.bank?.name?.getOrNull,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(enabled: false),
                        ),
                      ),
                      //
                      VerticalSpace(height: App.shortest * 0.04),
                      //
                      Flexible(
                        child: TextFormField(
                          maxLines: 1,
                          enabled: false,
                          initialValue:
                              s.accountDetail?.accountNumber?.getOrNull,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(enabled: false),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(
                              LandlordWithdrawalState.ACCOUNT_NUMBER_LENMGTH,
                            ),
                          ],
                        ),
                      ),
                      //
                      VerticalSpace(height: App.shortest * 0.15),
                      //
                      Visibility(
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
                          onPressed: c.read<LandlordWithdrawalCubit>().withdraw,
                          text: 'Withdraw',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
