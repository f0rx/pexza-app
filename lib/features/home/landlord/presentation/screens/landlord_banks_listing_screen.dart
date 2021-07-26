import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render LandlordBanksListingScreen.
class LandlordBanksListingScreen extends StatelessWidget with AutoRouteWrapper {
  const LandlordBanksListingScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordWithdrawalCubit>()..fetchBankAccounts(),
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
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "My Bank Accounts"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.only(top: App.longest * 0.015),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<LandlordWithdrawalCubit, LandlordWithdrawalState>(
              builder: (c, s) => Visibility(
                visible: !s.isLoading,
                replacement: SizedBox.fromSize(
                  size: Size.fromHeight(30),
                  child: Center(
                    child: CircularProgressBar.adaptive(
                      width: 25.0,
                      height: 25.0,
                      strokeWidth: 2.5,
                      radius: 12,
                    ),
                  ),
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: s.bankAccounts.size,
                  separatorBuilder: (c, i) => Visibility(
                    visible: s.bankAccounts.getOrNull(i) != null &&
                        s.bankAccounts.getOrNull(i).accountNumber.isValid,
                    child: Divider(height: 3.0, thickness: 1.0),
                  ),
                  itemBuilder: (c, i) {
                    var account = s.bankAccounts.getOrNull(i);

                    return Visibility(
                      visible: account != null && account.accountNumber.isValid,
                      child: RadioListTile<BankAccountDetail>(
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        groupValue: s.accountDetail,
                        value: account,
                        onChanged: c
                            .read<LandlordWithdrawalCubit>()
                            .bankAccountChanged,
                        secondary: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 35,
                            maxWidth: 35,
                          ),
                          child: Tooltip(
                            message: 'Delete Bank Account?',
                            child: Visibility(
                              visible: false,
                              child: IconButton(
                                onPressed: () async {
                                  context
                                      .read<LandlordWithdrawalCubit>()
                                      .bankAccountChanged(account);

                                  await PopupDialog.confirmation(
                                    title: 'Delete this Account?',
                                    description:
                                        'This action is not reversible!',
                                    popupIcon: Icons.delete_outline_rounded,
                                    colorScheme:
                                        PopupAlertDialogColorScheme.danger,
                                    onPositiveButtonPressed: context
                                        .read<LandlordWithdrawalCubit>()
                                        .deleteAccount,
                                  ).render(c);
                                },
                                splashRadius: 25,
                                padding: EdgeInsets.zero,
                                icon: Icon(Icons.delete_outline_rounded),
                              ),
                            ),
                          ),
                        ),
                        selectedTileColor: Colors.red,
                        subtitle: AutoSizeText(
                          "${account.bank?.name?.getOrEmpty}".removeNewLines(),
                          maxLines: 2,
                          softWrap: true,
                          wrapWords: true,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(c).textTheme.subtitle2,
                        ),
                        title: AutoSizeText(
                          "${account.accountNumber?.getOrNull ?? 'Invalid Account Number'}",
                          maxLines: 1,
                          softWrap: true,
                          wrapWords: true,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(c).textTheme.headline6.merge(
                                TextStyle(
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.1),
            //
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () async {
                    final shouldRefresh =
                        await navigator.pushLandlordBankDetailsScreen();

                    if (shouldRefresh != null && shouldRefresh)
                      context
                          .read<LandlordWithdrawalCubit>()
                          .fetchBankAccounts();
                  },
                ),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.03),
            //
            AutoSizeText('Add new Bank Account'),
            //
            VerticalSpace(height: App.shortest * 0.1),
          ],
        ),
      ),
      floatingActionButton:
          BlocBuilder<LandlordWithdrawalCubit, LandlordWithdrawalState>(
        buildWhen: (p, c) => p.isLoading != c.isLoading,
        builder: (c, s) => Visibility(
          visible: s.accountDetail?.accountNumber?.getOrNull != null,
          child: IgnorePointer(
            ignoring: s.isLoading,
            child: FloatingActionButton(
              onPressed: () => navigator.pushLandlordWithdrawalScreen(
                account: c.read<LandlordWithdrawalCubit>().state.accountDetail,
              ),
              tooltip: 'Continue',
              autofocus: true,
              child: RotatedBox(
                quarterTurns: 2,
                child: Icon(Icons.keyboard_backspace_rounded),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
