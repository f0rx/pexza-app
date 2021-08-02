import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/utils/utils.dart';

class HomeAppBar extends StatelessWidget {
  final Widget replacement;
  final Widget icon;
  final Color avatarBgColor;
  final VoidCallback onPressed;
  final TextStyle style;

  HomeAppBar({
    Key key,
    this.replacement,
    Widget icon,
    Color avatarBgColor,
    @required this.onPressed,
    TextStyle style,
  })  : avatarBgColor = avatarBgColor ?? AppColors.accentColor.shade50,
        icon = icon ?? AppAssets.wavingHand,
        style = TextStyle(color: Colors.black),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: replacement ??
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                    builder: (context, state) => AutoSizeText(
                      "Hi ${state.user?.firstName?.getOrEmpty}",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  //
                  icon,
                ],
              ),
              //
              BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
                builder: (context, state) => ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CircleAvatar(
                    maxRadius: 22.0,
                    minRadius: 17.0,
                    backgroundImage: CachedNetworkImageProvider(
                      "${state.user?.photo}",
                    ),
                    backgroundColor: Colors.transparent,
                    child: InkWell(
                      onTap: state.user?.photo != null ? onPressed : null,
                      splashColor: Colors.red,
                      child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Visibility(
                          visible: true,
                          child: Material(
                            shape: CircleBorder(),
                            clipBehavior: Clip.hardEdge,
                            color: avatarBgColor,
                            child: InkWell(
                              onTap: onPressed,
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Center(
                                    child: Text(
                                  !"${state.user?.firstName?.getOrEmpty} ${state.user?.lastName?.getOrEmpty}"
                                          .trim()
                                          .isNullOrBlank
                                      ? "${state.user?.firstName?.getOrEmpty} ${state.user?.lastName?.getOrEmpty}"
                                          .onlyInitials(
                                          pattern: " ",
                                          glue: "",
                                        )
                                      : state.user?.role?.fold(
                                          landlord: () => "LL",
                                          tenant: () => "TN",
                                        ),
                                  style: style,
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
