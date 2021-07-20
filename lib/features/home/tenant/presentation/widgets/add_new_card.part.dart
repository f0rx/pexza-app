part of '../screens/add_new_card_screen.dart';

List<BlocListener> listeners(
  BuildContext context,
  String intended,
  Failure failure,
) =>
    [
      BlocListener<PaymentCubit, PaymentState>(
        listenWhen: (p, c) => p.response != c.response,
        listener: (c, s) => BottomAlertDialog.init(
          context,
          message: s.response.fold(
            (f) => f.message ?? f.error,
            (r) => r.message ?? r.details,
          ),
          icon: s.response.fold(
            (_) => null,
            (r) => r.fold(
              info: (_) => Icons.info_outline_rounded,
              success: (_) => Icons.check_circle_rounded,
            ),
          ),
          iconColor: s.response.fold(
            (_) => null,
            (r) => r.fold(
              info: (_) => AppColors.assessmentBlue,
              success: (_) => AppColors.successGreen,
            ),
          ),
          position: s.response.fold((_) => null, (r) => r?.position),
          shouldIconPulse: s.response.fold((_) => null, (r) => false),
          callback: s.response.fold(
            (_) => null,
            (r) => r.fold(
              success: (val) => val.popRoute
                  ? s.status
                      ? (_) => navigator.popAndPush(
                            Routes.successfulScreen,
                            arguments: SuccessfulScreenArguments(
                              image: AppAssets.freePick,
                              title: 'Payment Successful',
                              description: "Your payment was successful. "
                                  "\nPlease check your email "
                                  "for confirmation and receipt.",
                              onPressed: () => navigator.popUntilPath(
                                intended ?? Routes.tenantHomeScreen,
                              ),
                            ),
                          )
                      : null
                  : null,
            ),
          ),
        ),
      ),
      //
      BlocListener<DebitCardCubit, DebitCardState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
                c.response.getOrElse(() => null) ||
            c.hasShownFailureParam,
        listener: (c, s) {
          if (s.hasShownFailureParam) {
            BottomAlertDialog.init(
              context,
              position: BottomAlertDialogPosition.top,
              message: failure.message ?? failure?.details,
            );
            // Prevent further display of this popup
            c.read<DebitCardCubit>().initShowFailure(false);
          }

          s?.response?.fold(
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
                      ? (() {
                          context.read<PaymentCubit>().init(s.currentDebitCard);
                          context.read<PaymentCubit>().pay(c);
                        }).call()
                      : null,
                ),
              ),
            ),
          );
        },
      ),
    ];
