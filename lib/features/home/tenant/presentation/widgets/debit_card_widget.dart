import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class DebitCardWidget extends StatelessWidget {
  final DebitCard card;

  const DebitCardWidget({
    Key key,
    @required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
      elevation: 6.0,
      animationDuration: Duration(milliseconds: 1200),
      borderRadius: BorderRadius.circular(Helpers.buttonRadius),
      child: SizedBox(
        height: App.longest * 0.2,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: AppAssets.eclipse1,
            ),
            //
            Positioned(
              right: 45,
              bottom: 0,
              child: AppAssets.eclipse2,
            ),
            //
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.all(App.shortest * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerticalSpace(height: App.shortest * 0.1),
                    //
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              'XXXX - XXXX - XXXX - 5189',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          //
                          Flexible(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: AutoSizeText.rich(
                                TextSpan(children: [
                                  TextSpan(text: '12'),
                                  TextSpan(text: ' / '),
                                  TextSpan(text: '25'),
                                ]),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      letterSpacing: 2.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    Flexible(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: AutoSizeText(
                          'Brendan Ejike Chukwunonso',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
