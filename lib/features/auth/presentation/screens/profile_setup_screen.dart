import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/auth/presentation/widgets/pin_input_widget.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/core.dart';

class ProfileSetupScreen extends StatelessWidget with AutoRouteWrapper {
  final Assignment assignment;

  const ProfileSetupScreen({Key key, this.assignment}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TokenVerificationCubit>()..init(assignment),
      child: BlocConsumer<TokenVerificationCubit, TokenVerificationState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
                c.response.getOrElse(() => null) ||
            (c.response.getOrElse(() => null) != null &&
                (c.response.getOrElse(() => null).isLeft() &&
                    c.response.getOrElse(() => null).fold(
                          (f) => f.foldCode(
                            is1104: () => p.isLoading != c.isLoading,
                            is1106: () => p.isLoading != c.isLoading,
                            orElse: () => false,
                          ),
                          (r) => false,
                        ))),
        listener: (c, s) => s?.response?.fold(
          () => null,
          (either) => either?.fold(
            (f) => f.foldCode(
              is1104: () async {
                if (App.currentRoute != Routes.addNewCardScreen && !s.isLoading)
                  return await navigator.pushAddNewCardScreen(
                    intended: Routes.profileSetupScreen,
                    buttonText: "Add this Card",
                    failure: f,
                  );
              },
              is1106: () async {
                if (App.currentRoute != Routes.profileVerificationScreen &&
                    !s.isLoading)
                  return await navigator.pushProfileVerificationScreen(
                    intended: Routes.profileSetupScreen,
                  );
              },
              orElse: () =>
                  BottomAlertDialog.init(c, message: f.message ?? f.details),
            ),
            (s) => BottomAlertDialog.init(
              context,
              message: s.message ?? s.details,
              icon: Icons.check_circle_rounded,
              iconColor: AppColors.successGreen,
              shouldIconPulse: false,
              callback: s.popRoute ? (_) => navigator.pop(true) : null,
            ),
          ),
        ),
        buildWhen: (p, c) => p.isLoading != c.isLoading,
        builder: (c, s) => PortalEntry(
          visible: c.watch<TokenVerificationCubit>().state.isLoading,
          portal: App.loadingOverlay(Helpers.circularLoader()),
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: ScrollController(),
                physics: Helpers.physics,
                padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        "Setup your Profile",
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: App.theme.accentColor,
                        ),
                        softWrap: true,
                        wrapWords: true,
                      ),
                    ),
                    //
                    VerticalSpace(height: App.height * 0.035),
                    //
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Helpers.descriptionPadding),
                        child: AutoSizeText.rich(
                          TextSpan(children: [
                            TextSpan(
                              text:
                                  "Your landlord has created a profile for you within our platform. "
                                  "Please, enter the Token sent to your email below, then",
                            ),
                            TextSpan(
                              text: " ACCEPT ",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            TextSpan(text: " or "),
                            TextSpan(
                              text: " DECLINE ",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            TextSpan(text: "the assignment."),
                          ]),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 17.0, wordSpacing: 2.0),
                          softWrap: true,
                          wrapWords: true,
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: App.height * .04),
                    //
                    PinInputWidget<TokenVerificationCubit,
                        TokenVerificationState>(
                      length: 5,
                      heroTag: "assignment-${assignment.id.value}",
                      // autoFocus: true,
                      validate: context
                          .watch<TokenVerificationCubit>()
                          .state
                          .validate,
                      keyboardType: TextInputType.text,
                      onChanged:
                          context.read<TokenVerificationCubit>().onChanged,
                      onSubmitted: context
                          .read<TokenVerificationCubit>()
                          .acceptAssignment,
                      onCompleted: context
                          .read<TokenVerificationCubit>()
                          .acceptAssignment,
                      validator: (value, s) => s.code.value.fold(
                        (error) => error.message,
                        (r) => s.response?.fold(
                          () => null,
                          (_) => _?.fold(
                            (f) => f.errors?.code?.firstOrNil,
                            (_) => null,
                          ),
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: App.height * 0.03),
                    //
                    AutoSizeText.rich(
                      TextSpan(
                        text: "Didn't get the token?",
                        children: [
                          TextSpan(
                            text: " Resend it.",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  print("Resend verification code here!!"),
                            style: TextStyle(
                              color: App.theme.accentColor,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    VerticalSpace(height: App.height * .03),
                  ],
                ),
              ),
            ),
          ),
          //
          Positioned(
            top: 8,
            right: 10,
            child: BlocBuilder<TokenVerificationCubit, TokenVerificationState>(
              builder: (c, s) => SafeArea(
                child: FloatingActionButton(
                  onPressed: () async => PopupDialog.confirmation(
                    title: "Reject assignment?",
                    description: "You're about to reject the assignment. \n"
                        "We'll inform the landlord this apartment wasn't to your liking.",
                    colorScheme: PopupAlertDialogColorScheme.danger,
                    postiveButtonText: "Proceed",
                    popupIcon: Icons.cancel_sharp,
                    onPositiveButtonPressed:
                        c.read<TokenVerificationCubit>().rejectAssignment,
                  ).render(context),
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  mini: true,
                  heroTag: "reject-assignment",
                  child: _StatusAction(
                    icon: Icons.cancel_rounded,
                    color: AppColors.errorRed,
                    tooltip: "Reject assignment",
                    radius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<TokenVerificationCubit>().acceptAssignment,
        backgroundColor: Colors.transparent,
        mini: true,
        heroTag: "accept-assignment",
        child: _StatusAction(
          icon: Icons.check_circle,
          color: AppColors.successGreen,
          tooltip: "Accept assignment",
        ),
      ),
    );
  }
}

class _StatusAction extends StatelessWidget {
  final String tooltip;
  final bool disabled;
  final Color color;
  final double opacity;
  final IconData icon;
  final BorderRadius radius;

  const _StatusAction({
    Key key,
    this.tooltip,
    this.disabled = false,
    this.color = Colors.transparent,
    this.opacity = 1.0,
    this.icon,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: AnimatedOpacity(
        opacity: opacity ?? 1.0,
        duration: Duration(milliseconds: 800),
        child: AppIconButton(
          padding: EdgeInsets.zero,
          tooltip: tooltip ?? '',
          backgroundColor: color,
          borderRadius: radius,
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
