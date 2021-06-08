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

  const ProfileSetupScreen({
    Key key,
    this.assignment,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TokenVerificationCubit>()..init(assignment),
      child: BlocConsumer<TokenVerificationCubit, TokenVerificationState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.show(
            context,
            message: either.fold(
              (f) => f.message ?? f.error,
              (r) => r.message ?? r.details,
            ),
            icon: either.fold((_) => null, (r) => Icons.check_circle_rounded),
            iconColor: either.fold((_) => null, (r) => AppColors.successGreen),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (r) => r.popRoute ? (_) => navigator.pop(true) : null,
            ),
          ),
        ),
        builder: (c, s) => PortalEntry(
          visible: c.watch<TokenVerificationCubit>().state.isLoading,
          portal: App.circularLoadingOverlay,
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
                        "Setup Profile",
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
                      autoFocus: true,
                      validate: context
                          .watch<TokenVerificationCubit>()
                          .state
                          .validate,
                      keyboardType: TextInputType.text,
                      onChanged:
                          context.read<TokenVerificationCubit>().onChanged,
                      onSubmitted:
                          context.read<TokenVerificationCubit>().onSubmitted,
                      onCompleted:
                          context.read<TokenVerificationCubit>().onSubmitted,
                      validator: (value, s) => s.code.value.fold(
                        (error) => error.message,
                        (r) => s.response?.fold(
                          () => null,
                          (_) => _?.fold(
                            (f) => f.errors?.code?.firstOrNull,
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
                  onPressed: () async {
                    final result = await App.showAlertDialog<bool>(
                      context: c,
                      barrierDismissible: false,
                      builder: (_) => _RejectAssignmentAlertDialog(),
                    );
                    if (result != null && result)
                      c.read<TokenVerificationCubit>().rejectAssignment();
                  },
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
        // onPressed: context.read<TokenVerificationCubit>().acceptAssignment,
        onPressed: () =>
            navigator.pushTenantRentDetailScreen(assignment: assignment),
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

class _RejectAssignmentAlertDialog extends StatelessWidget {
  const _RejectAssignmentAlertDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: false,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      contentPadding: EdgeInsets.only(left: 20.0, right: 20.0, top: 12.0),
      content: Container(
        width: App.shortest * 0.5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.amber),
                //
                HorizontalSpace(width: 10.0),
                //
                Flexible(
                  child: AutoSizeText(
                    "This action cannot be undone!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: AutoSizeText.rich(
                TextSpan(children: [
                  TextSpan(
                    text: "You're about to reject the assignment. "
                        "We'll inform the landlord the apartment wasn't to your liking",
                  ),
                ]),
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppElevatedButton(
          onPressed: () => Navigator.pop(context, true),
          backgroundColor: AppColors.errorRed,
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.circular(8.0),
          elevation: 0.0,
          child: Text('Proceed'),
        ),
        //
        AppElevatedButton(
          onPressed: () => Navigator.pop(context, false),
          backgroundColor: Colors.grey.shade300,
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.circular(8.0),
          elevation: 0.0,
          child: Text('No', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
