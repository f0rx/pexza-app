import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/features/core/core.dart';

class TenantListTile<M> extends StatelessWidget {
  final User tenant;
  final M model;
  final String subtitle;
  final EdgeInsets padding;
  final Color titleColor;
  final Color subtitleColor;
  final void Function(M) onPressed;

  const TenantListTile({
    Key key,
    @required this.tenant,
    @required this.model,
    this.subtitle = '',
    this.padding = EdgeInsets.zero,
    this.titleColor,
    this.subtitleColor = Colors.grey,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onPressed?.call(model),
            child: Container(
              height: App.longest * 0.075,
              padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.03),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: App.longest * 0.055,
                      ),
                      child: ImageWidget(
                        url: "${tenant?.photo}",
                        splashColor: Colors.black12,
                        onPressed: () => navigator.pushEditAccountScreen(),
                      ),
                    ),
                  ),
                  //
                  Expanded(
                    flex: 6,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ListTile(
                            dense: true,
                            title: AutoSizeText(
                              "${tenant?.firstName?.getOrEmpty} ${tenant?.lastName?.getOrEmpty}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  .copyWith(
                                    fontSize: 16.0,
                                    color: titleColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                              maxLines: 1,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10.0),
                            subtitle: AutoSizeText(
                              subtitle ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(
                                    color: subtitleColor,
                                  ),
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        //
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 15.0,
                          color: Helpers.computeLuminance(
                            Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
