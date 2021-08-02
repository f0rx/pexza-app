library view_all_properties_screen.dart;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:kt_dart/kt.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

part '../widgets/view_all_properties.part.dart';

class ViewAllPropertiesScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  _ViewAllPropertiesScreenState createState() =>
      _ViewAllPropertiesScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()..fetchAll(),
      child: BlocListener<LandlordPropertyCubit, LandlordPropertyState>(
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.init(
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
              (r) => (_) => navigator.pop(),
            ),
          ),
        ),
        child: this,
      ),
    );
  }
}

class _ViewAllPropertiesScreenState extends State<ViewAllPropertiesScreen>
    with TickerProviderStateMixin {
  ScrollController _scrollController;
  AnimationController _controller;
  Axis _direction;
  int _emptyListCount;
  int _kDefaultLayers;
  bool _reversed;
  double _stonePadding;
  bool _wrappedOptions;

  @override
  void dispose() {
    _scrollController.removeListener(scrollListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController = LandlordPropertyState.controller;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    _scrollController.addListener(scrollListener);

    _emptyListCount = (1.sh / 0.5.sw).ceil();
    _reversed = false;
    _direction = Axis.vertical;
    _kDefaultLayers = 4;
    _stonePadding = 6.0;
    _controller.forward(from: 0);
    _wrappedOptions = true;
  }

  int _calcLayers(int size) {
    if (size <= 2)
      return 3;
    else
      return _kDefaultLayers;
  }

  void scrollListener() async {
    final bool isAtEdgeOrOver = _scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        _scrollController.position.outOfRange;
    final bool isAlmostAtEnd = _scrollController.offset.isBtw(
        _scrollController.position.maxScrollExtent - 150,
        _scrollController.position.maxScrollExtent);

    if (isAlmostAtEnd || isAtEdgeOrOver)
      context.read<LandlordPropertyCubit>().nextPage();
  }

  Widget _buildEmpty() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
      child: Wrap(
        spacing: 0.03.sw,
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        runAlignment: WrapAlignment.spaceBetween,
        children: List.generate(
          _emptyListCount * 2,
          (_) => ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: ShimmerBottomContent(
              width: 0.444.sw,
              height: 0.5.sw,
              boxColor: Colors.grey.shade400,
              shimmerBaseColor: Helpers.optionOf(
                Colors.grey.shade300,
                Colors.grey.shade600,
              ),
              shimmerHighlightColor: Helpers.optionOf(
                Colors.grey.shade200,
                Colors.grey.shade500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Stone _buildStone({int index, LandlordProperty property}) {
    return Stone(
      id: index,
      width: property.animatable.width,
      height: property.animatable.height,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ScaleTransition(
          scale: property.animatable.state.animate(_controller),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: LayoutBuilder(
              builder: (context, constraints) => Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          // image: NetworkImage("${property?.photo?.getOrEmpty}"),
                          image: AssetImage("${property?.photo?.getOrEmpty}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  //
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: constraints.maxHeight * 0.6,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Helpers.optionOf(
                          Colors.black38.withOpacity(0.5),
                          Colors.black38.withOpacity(0.6),
                        ),
                        border: Helpers.optionOf(
                          Border.fromBorderSide(BorderSide.none),
                          Border.symmetric(
                            vertical: BorderSide(color: Colors.white),
                          ),
                        ),
                        // borderRadius: BorderRadius.only(
                        //   bottomLeft: Radius.circular(12.0),
                        //   bottomRight: Radius.circular(12.0),
                        // ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              "${property?.name?.getOrEmpty}",
                              softWrap: true,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          //
                          Flexible(
                            child: AutoSizeText(
                              ""
                                  .padIf(property?.street != null,
                                      "${property.street.getOrEmpty.removeNewLines()}")
                                  .padIf(property?.state?.name != null,
                                      ", ${property.state.name.getOrEmpty.removeNewLines()}")
                                  .padIf(property?.state?.country?.name != null,
                                      ", ${property.state.country.name.name.removeNewLines()}."),
                              softWrap: true,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          //
                          Flexible(
                            child: AutoSizeText(
                              "Apartments Rented: ${property?.numberOfRentedApartment?.getOrEmpty}",
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          //
                          Flexible(
                            child: AutoSizeText(
                              "Total Tenants: ${property?.numberOfTenants?.getOrEmpty}",
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => navigator.pushLandlordPropertyDetailScreen(
                          property: property,
                        ),
                        splashColor: Helpers.optionOf(
                          Colors.black12.withOpacity(0.1),
                          Colors.black26.withOpacity(0.2),
                        ),
                        child: const SizedBox(height: double.infinity),
                      ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "My Properties", leadingIcon: Icon(Icons.close)),
      body: BlocConsumer<LandlordPropertyCubit, LandlordPropertyState>(
        listenWhen: (p, c) => !p.isLoading && c.isLoading,
        listener: (c, s) => _controller.forward(from: 0.0),
        builder: (c, s) => s.properties.isEmpty()
            ? _buildEmpty()
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.02.sw),
                child: ListView(
                  shrinkWrap: true,
                  physics: Helpers.physics,
                  scrollDirection: _direction,
                  controller: _scrollController,
                  children: [
                    WallLayout(
                      physics: NeverScrollableScrollPhysics(),
                      layersCount: _calcLayers(s.properties.size),
                      stonePadding: _stonePadding,
                      reverse: _reversed,
                      stones: s.properties
                          ?.mapIndexed((i, prop) =>
                              _buildStone(index: i, property: prop))
                          ?.asList(),
                    ),
                    //
                    Visibility(
                      visible: s.isLoadingNextPage,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Helpers.circularLoader(),
                          //
                          VerticalSpace(height: 0.06.sw),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
      // floatingActionButton: _buildFloatingActionButton(context),
    );
  }
}
