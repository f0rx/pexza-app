import 'package:another_flushbar/flushbar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';

abstract class AlertPopupa {
  static dynamic auth(BuildContext context) {
    return context.read<AuthCubit>().state.authStatus.fold(
          () => null,
          (failure) => Flushbar(
            duration: const Duration(seconds: 10),
            icon: failure?.type(
              isError: () => const Icon(Icons.error, color: Colors.red),
              isSuccess: () => const Icon(Icons.check_circle_outline,
                  color: AppColors.successGreen),
            ),
            messageText: AutoSizeText(
              !failure.message.isNullOrBlank ? failure.message : failure.error,
            ),
            borderRadius: 8,
            dismissDirection: FlushbarDismissDirection.HORIZONTAL,
            margin: const EdgeInsets.all(8),
            flushbarPosition: MediaQuery.of(context).viewInsets.bottom == 0
                ? FlushbarPosition.BOTTOM
                : FlushbarPosition.TOP,
            shouldIconPulse: true,
            backgroundColor: Theme.of(context).primaryColor,
          ).show(context),
        );
  }
}
