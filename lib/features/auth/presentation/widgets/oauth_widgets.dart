import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class OAuthWidget extends StatelessWidget {
  final bool google;
  final bool facebook;
  final bool twitter;
  final bool apple;

  const OAuthWidget({
    Key key,
    this.google = true,
    this.facebook = true,
    this.apple = false,
    this.twitter = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: SocialBuilder(
            visiblility: google,
            color: Helpers.optionOf(null, AppColors.secondaryColor.shade300),
            icon: AppAssets.google,
            onPressed: BlocProvider.of<AuthCubit>(context).googleAuthentication,
          ),
        ),
        //
        Flexible(
          child: SocialBuilder(
            visiblility: facebook,
            color: Helpers.optionOf(null, AppColors.fbButton),
            icon: AppAssets.facebook(
              Helpers.optionOf(
                null,
                Helpers.computeLuminance(
                  Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
            onPressed:
                BlocProvider.of<AuthCubit>(context).facebookAuthentication,
          ),
        ),
        //
        if (Platform.isIOS || Platform.isMacOS)
          Flexible(
            child: SocialBuilder(
              visiblility: apple,
              color: Helpers.optionOf(null, AppColors.secondaryColor.shade400),
              icon: AppAssets.apple(
                Helpers.optionOf(
                  null,
                  Helpers.computeLuminance(
                    Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
              onPressed:
                  BlocProvider.of<AuthCubit>(context).appleAuthentication,
            ),
          ),
      ],
    );
  }
}

class SocialBuilder extends StatelessWidget {
  final bool visiblility;
  final Color color;
  final Widget icon;
  final VoidCallback onPressed;

  const SocialBuilder({
    Key key,
    @required this.visiblility,
    this.color,
    @required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visiblility,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Material(
                color: color ?? Theme.of(context).primaryColor,
                elevation: 12.0,
                clipBehavior: Clip.hardEdge,
                shape: CircleBorder(),
                child: InkWell(
                  onTap: onPressed,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: icon,
                  ),
                ),
              ),
            ),
          ),
          //
          HorizontalSpace(width: 20.0),
        ],
      ),
    );
  }
}
