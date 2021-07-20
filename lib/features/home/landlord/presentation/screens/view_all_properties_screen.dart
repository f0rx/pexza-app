import 'dart:math' as Math;
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
import 'package:pexza/widgets/toolbar.dart';

class ViewAllPropertiesScreen extends StatefulWidget with AutoRouteWrapper {
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

  @override
  _ViewAllPropertiesScreenState createState() =>
      _ViewAllPropertiesScreenState();
}

class _ViewAllPropertiesScreenState extends State<ViewAllPropertiesScreen>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    // final _bloc = BlocProvider.of<LandlordPropertyCubit>(context);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "My Properties",
        leadingIcon: Icon(Icons.close),
      ),
      // body: const LandlordPropertyListing(asGridView: true),
      body: BlocConsumer<LandlordPropertyCubit, LandlordPropertyState>(
        // listenWhen: (p, c) => p.properties.isEmpty() && !c.properties.isEmpty(),
        listenWhen: (p, c) => !p.isLoading && c.isLoading,
        listener: (c, s) => _controller.forward(from: 0.0),
        builder: (c, s) => s.properties.isEmpty()
            ? _buildEmpty()
            : WallLayout(
                layersCount: 3,
                stonePadding: 6.0,
                stones: s.properties
                    ?.mapIndexed((i, prop) => _buildStone(
                          _PropAnimatable(
                            index: i,
                            property: prop,
                            count: s.properties.size,
                          ),
                        ))
                    ?.asList(),
              ),
      ),
    );
  }

  Widget _buildEmpty() {
    return Wrap(
      spacing: 0.03.sw,
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceEvenly,
      children: List.generate(
        4,
        (i) => ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: ShimmerBottomContent(
            width: 0.48.sw,
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
      ).toList(),
    );
  }

  Stone _buildStone(_PropAnimatable prop) {
    return Stone(
      id: prop.index,
      width: prop.width,
      height: prop.height,
      child: ScaleTransition(
        scale: prop.animatable.animate(_controller),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: NetworkImage("${prop.property?.photo?.getOrEmpty}"),
              fit: BoxFit.cover,
            ),
          ),
          child: AutoSizeText("${prop.property?.name}"),
        ),
      ),
    );
  }
}

class _PropAnimatable {
  final int index;
  final int _width;
  final int _height;
  final LandlordProperty property;
  final Animatable _animatable;
  final int count;

  const _PropAnimatable({
    int width,
    int height,
    Animatable animatable,
    this.index,
    this.property,
    this.count,
  })  : _width = width,
        _height = height,
        _animatable = animatable;

  int get width => _width ?? 1 + Math.Random().nextInt(2 - 1);

  int get height => _height ?? 1 + Math.Random().nextInt(2 - 1);

  Animatable get animatable {
    final firstEnd = 0.35;
    final isFirst = index == 0;
    double pos = index.toDouble();

    return _animatable ??
        CurveTween(
          curve: Interval(
            isFirst ? 0.0 : (firstEnd + (pos / count) * (1.0 - firstEnd)),
            isFirst
                ? firstEnd
                : Math.min(
                    1.0, firstEnd + ((pos + 1.0) / count) * (1.0 - firstEnd)),
            curve: isFirst ? Curves.elasticOut : Curves.easeOutBack,
          ),
        );
  }
}
