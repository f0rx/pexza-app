import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordPropertyListing extends StatelessWidget {
  final bool asGridView;

  const LandlordPropertyListing({
    Key key,
    this.asGridView = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return asGridView ? _gridView() : _listView();
  }
}

Widget _gridView() {
  final width = App.width * 0.43;
  return BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
    builder: (c, state) => PortalEntry(
      visible: c.watch<LandlordPropertyCubit>().state.isLoading,
      portal: App.waveLoadingBar,
      child: Visibility(
        visible: !c.watch<LandlordPropertyCubit>().state.properties.isEmpty(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
          child: Wrap(
            runSpacing: width * 0.05,
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: state.properties.iter
                .map((prop) => ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Container(
                        width: width,
                        height: App.width * 0.4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(prop.photo?.getOrEmpty),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Material(
                          color: Theme.of(c).backgroundColor.withOpacity(0.5),
                          child: InkWell(
                            onTap: () =>
                                navigator.pushLandlordPropertyDetailScreen(
                              property: prop,
                            ),
                            child: Center(
                              child: Text(
                                prop.name.getOrEmpty,
                                style: Theme.of(c).textTheme.headline6,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    ),
  );
}

Widget _listView() {
  final double _itemHeight = App.longest * 0.1;
  final BorderRadius _radius = BorderRadius.circular(8.0);
  final int _count = ((App.longest * 0.4) / _itemHeight).ceil();

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
                      ).reversed.toList(),
                    ),
                  ),
                ),
              ),
            )
          : Hero(
              tag: state.properties.get(i).id.value,
              child: InkWell(
                splashColor: Colors.grey.shade300,
                borderRadius: _radius,
                onTap: () => navigator.pushLandlordPropertyDetailScreen(
                  property: state.properties.get(i),
                ),
                child: Container(
                  height: _itemHeight,
                  padding:
                      EdgeInsets.symmetric(horizontal: App.shortest * 0.05),
                  decoration: BoxDecoration(
                    color: state.properties
                        .get(i)
                        .color
                        .withOpacity(Helpers.optionOf(0.5, 0.2)),
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
                                      color: AppColors.accentColor,
                                      fontSize: 17.0,
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
                                      color: Helpers.computeLuminance(
                                        state.properties
                                            .get(i)
                                            .color
                                            .withOpacity(
                                              Helpers.optionOf(0.5, 0.2),
                                            ),
                                      ),
                                      fontSize: 14.0,
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
                            color: Helpers.computeLuminance(state.properties
                                .get(i)
                                .color
                                .withOpacity(Helpers.optionOf(0.5, 0.2))),
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
