import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordPropertyListing extends StatelessWidget {
  static final double _itemHeight = App.longest * 0.1;
  final BorderRadius _radius = BorderRadius.circular(8.0);
  final int _count = ((App.longest * 0.4) / _itemHeight).ceil();

  LandlordPropertyListing({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
      builder: (context, state) => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: state.properties.isEmpty()
            ? _count
            : state.properties.asList().take(_count).length,
        separatorBuilder: (_, __) => VerticalSpace(height: App.longest * 0.01),
        itemBuilder: (context, i) => state.properties.isEmpty()
            ? ClipRRect(
                borderRadius: _radius,
                child: SizedBox(
                  height: _itemHeight,
                  child: RectangleShimmer(
                    width: double.infinity,
                    height: double.infinity,
                    boxColor: Colors.grey.shade400,
                    shimmerBaseColor: Helpers.optionOf(
                      Colors.grey.shade300,
                      Colors.grey.shade600,
                    ),
                    shimmerHighlightColor: Helpers.optionOf(
                      Colors.grey.shade200,
                      Colors.grey.shade500,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          3,
                          (index) => Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Container(
                                height: 7,
                                width: App.shortest / (index + 0.7),
                                color: Helpers.optionOf(
                                  Colors.grey.shade400,
                                  Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ),
                        ).toList(),
                      ),
                    ),
                  ),
                ),
              )
            : Hero(
                tag: state.properties.get(i).id.value,
                child: InkWell(
                  splashColor: Colors.black26,
                  borderRadius: _radius,
                  onTap: () async {
                    await navigator.pushLandlordPropertyDetailScreen(
                      property: state.properties.get(i),
                    );
                    // Refresh properties on route pop()
                    context.read<LandlordPropertyCubit>().fetchAll();
                  },
                  child: Container(
                    height: _itemHeight,
                    padding: EdgeInsets.symmetric(
                      horizontal: App.shortest * 0.05,
                      vertical: App.shortest * 0.015,
                    ),
                    decoration: BoxDecoration(
                      color: state.properties
                          .get(i)
                          .color
                          .withOpacity(Helpers.optionOf(0.3, 0.15)),
                      borderRadius: _radius,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: HorizontalSpace(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                AutoSizeText(
                                  state.properties
                                      .get(i)
                                      .name
                                      .getOrEmpty
                                      .removeNewLines(),
                                  softWrap: true,
                                  wrapWords: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                        color: Helpers.optionOf(
                                          AppColors.accentColor,
                                          Colors.white,
                                        ),
                                        fontSize: 21.0.sp,
                                      ),
                                  maxLines: 1,
                                ),
                                //
                                VerticalSpace(height: 6.0),
                                //
                                AutoSizeText(
                                  state.properties
                                      .get(i)
                                      .street
                                      .getOrEmpty
                                      .removeNewLines(),
                                  softWrap: true,
                                  wrapWords: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                        color: Helpers.optionOf(
                                          Helpers.computeLuminance(
                                            state.properties
                                                .get(i)
                                                .color
                                                .withOpacity(
                                                  Helpers.optionOf(0.5, 0.2),
                                                ),
                                          ),
                                          Colors.white70,
                                        ),
                                        fontSize: 17.0.sp,
                                      ),
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        AppIconButton(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          tooltip: "View Details",
                          elevation: 0.0,
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.keyboard_backspace_rounded,
                              color: Helpers.optionOf(
                                Helpers.computeLuminance(
                                  state.properties
                                      .get(i)
                                      .color
                                      .withOpacity(Helpers.optionOf(0.5, 0.2)),
                                ),
                                Colors.white70,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
