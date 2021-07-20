import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/presentation/managers/debit_card/debit_card_cubit.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render SavedCardScreen.
class SavedCardScreen extends StatelessWidget with AutoRouteWrapper {
  const SavedCardScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DebitCardCubit>()..allDebitCards(),
      child: BlocListener<DebitCardCubit, DebitCardState>(
        listenWhen: (p, c) {
          final pOrNull = p.response.getOrElse(() => null);
          final cOrNull = c.response.getOrElse(() => null);
          final pResponse =
              p.response.getOrElse(() => null)?.getOrElse(() => null);
          final cResponse =
              c.response.getOrElse(() => null)?.getOrElse(() => null);
          return pOrNull != cOrNull || pResponse?.uuid != cResponse?.uuid;
        },
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.init(
            context,
            message: either.fold(
              (f) => f.message ?? f.error,
              (r) => r.message ?? r.details ?? r.status,
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
                success: (val) =>
                    val.popRoute ? (_) => navigator.pop(true) : null,
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
      appBar: Toolbar(title: "Saved Cards"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.only(top: App.longest * 0.015),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<DebitCardCubit, DebitCardState>(
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
                  itemCount: s.debitCards.size,
                  separatorBuilder: (c, i) => Visibility(
                    visible: s.debitCards.getOrNull(i) != null &&
                        s.debitCards.getOrNull(i).cardNumber.isValid,
                    child: Divider(height: 3.0, thickness: 1.0),
                  ),
                  itemBuilder: (context, i) {
                    var card = s.debitCards.getOrNull(i);

                    return Visibility(
                      visible: card != null && card.cardNumber.isValid,
                      child: RadioListTile<DebitCard>(
                        dense: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        groupValue:
                            s.debitCards.firstOrNull((i) => i.isPrimary),
                        value: card,
                        onChanged: (card) async {
                          context
                              .read<DebitCardCubit>()
                              .currentCardChanged(card);

                          await PopupDialog.confirmation(
                            title: 'Set Primary?',
                            description: 'Do you want to make '
                                'this card your Primary card?',
                            popupIcon: Icons.check,
                            postiveButtonText: 'Proceed',
                            negativeButtonText: 'No',
                            onPositiveButtonPressed:
                                context.read<DebitCardCubit>().makePrimary,
                          ).render(c);
                        },
                        secondary: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 35,
                            maxWidth: 35,
                          ),
                          child: Tooltip(
                            message: 'Delete this card?',
                            child: Visibility(
                              visible: !card.isPrimary,
                              child: IconButton(
                                onPressed: () async {
                                  context
                                      .read<DebitCardCubit>()
                                      .currentCardChanged(card);

                                  await PopupDialog.confirmation(
                                    title: 'Delete this Card?',
                                    description:
                                        'This action is not reversible!',
                                    popupIcon: Icons.delete_outline_rounded,
                                    colorScheme:
                                        PopupAlertDialogColorScheme.danger,
                                    onPositiveButtonPressed: context
                                        .read<DebitCardCubit>()
                                        .deleteCard,
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
                          "${card?.meta?.description?.getOrNull ?? 'Debit Card'}"
                              .removeNewLines(),
                          maxLines: 2,
                          softWrap: true,
                          wrapWords: true,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(c).textTheme.subtitle2,
                        ),
                        title: AutoSizeText(
                          "${card?.cardNumber?.getOrNull?.formatCardNumber}",
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
                  onPressed: () => navigator.pushAddNewCardScreen(
                    intended: Routes.savedCardScreen,
                    buttonText: 'Save Card',
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.03),
            //
            AutoSizeText('Add New Card'),
            //
            VerticalSpace(height: App.shortest * 0.1),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {},
      //   tooltip: 'Continue',
      //   autofocus: true,
      //   child: RotatedBox(
      //     quarterTurns: 2,
      //     child: Icon(Icons.keyboard_backspace_rounded),
      //   ),
      // ),
    );
  }
}
