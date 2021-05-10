import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/core.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/colors.dart';
import 'package:pexza/utils/helpers.dart';
import 'package:pexza/widgets/home_app_bar.dart';
import 'package:pexza/widgets/horizontal_spacer.dart';
import 'package:pexza/widgets/icon_button.dart';
import 'package:pexza/widgets/vertical_spacer.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/presentation/managers/index.dart';

class TenantHomeScreen extends StatefulWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TenantAssignmentCubit>()..all(),
      child: BlocListener<TenantAssignmentCubit, TenantAssignmentState>(
        listener: (_c, _s) => _s.response.fold(
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
              (r) => (_) => navigator.pop(),
            ),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  _TenantHomeScreenState createState() => _TenantHomeScreenState();
}

class _TenantHomeScreenState extends State<TenantHomeScreen>
    with AutomaticKeepAliveClientMixin<TenantHomeScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.02),
        child: Column(
          children: [
            BlocBuilder<AuthWatcherCubit, AuthWatcherState>(
              builder: (context, state) => HomeAppBar(
                onPressed: () => navigator.pushAccountScreen(),
              ),
            ),
            //
            VerticalSpace(height: App.height * 0.03),
            //
            TextFormField(
              maxLines: 1,
              enableSuggestions: true,
              autocorrect: false,
              cursorColor: Theme.of(context).accentColor,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.done,
              style: TextStyle(fontSize: 17.0),
              decoration: const InputDecoration(
                hintText: "What do you want to do?",
                contentPadding: EdgeInsets.only(top: 14.0, bottom: 14.0),
                prefixIcon: Icon(
                  Icons.search_sharp,
                  size: 20.0,
                ),
              ),
              onChanged: (value) {},
              validator: (value) {},
              onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
            ),
            //
            VerticalSpace(height: App.height * 0.03),
            //
            BlocBuilder<TenantAssignmentCubit, TenantAssignmentState>(
              builder: (c, s) => Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: !s.unaccepted.isEmpty(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubtitledHeader(
                          text: "Your Pending Assignments",
                          fontWeight: FontWeight.w700,
                        ),
                        //
                        VerticalSpace(height: App.shortest * 0.02),
                      ],
                    ),
                  ),
                  //
                  Visibility(
                    visible: !s.isLoading,
                    replacement: _ShimmerLayout(count: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: !s.unaccepted.isEmpty(),
                          child: Column(
                            children: [
                              ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: s.unaccepted.size,
                                separatorBuilder: (_, __) => VerticalSpace(
                                  height: App.height * 0.01,
                                ),
                                itemBuilder: (context, i) {
                                  final Assignment assignment =
                                      s.unaccepted.getOrNull(i);

                                  return _SectionInfo<Assignment>(
                                    model: assignment,
                                    title:
                                        "${assignment?.apartment?.name?.getOrEmpty}",
                                    subtitle:
                                        "${s.apartments.getOrNull(i)?.property?.street?.getOrNull ?? ''}",
                                    color: assignment
                                            ?.apartment?.property?.color ??
                                        Colors.teal,
                                    onPressed: (_) async {
                                      final shouldRefresh = await navigator
                                          .pushProfileSetupScreen(
                                              assignment: _);
                                      if (shouldRefresh != null &&
                                          shouldRefresh)
                                        c.read<TenantAssignmentCubit>().all();
                                    },
                                  );
                                },
                              ),
                              //
                              VerticalSpace(height: App.height * 0.05),
                            ],
                          ),
                        ),
                        //
                        ////
                        //
                        Visibility(
                          visible: !s.apartments.isEmpty(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SubtitledHeader(
                                text: "My Apartments",
                                fontWeight: FontWeight.w700,
                              ),
                              //
                              VerticalSpace(height: App.shortest * 0.02),
                            ],
                          ),
                        ),
                        //
                        Visibility(
                          visible: !s.isLoading,
                          replacement: _ShimmerLayout(),
                          child: Visibility(
                            visible: !s.apartments.isEmpty(),
                            replacement: Center(
                              child: Text(
                                "No Apartments found!",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: s.apartments.size,
                              separatorBuilder: (_, __) => VerticalSpace(
                                height: App.height * 0.01,
                              ),
                              itemBuilder: (context, i) =>
                                  _SectionInfo<TenantApartment>(
                                model: s.apartments.getOrNull(i),
                                title:
                                    "${s.apartments.getOrNull(i)?.name?.getOrNull ?? ''}",
                                subtitle:
                                    "${s.apartments.getOrNull(i)?.property?.street?.getOrNull ?? ''}",
                                color: s.apartments
                                        .getOrNull(i)
                                        ?.property
                                        ?.color ??
                                    AppColors.random,
                                onPressed: (current) {
                                  return navigator
                                      .pushTenantApartmentDetailScreen(
                                    apartment: s.apartments.getOrNull(i),
                                    assignment: s.paired.firstOrNull(
                                      (e) =>
                                          e?.apartment?.id?.value ==
                                          current?.id?.value,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionInfo<M> extends StatelessWidget {
  final M model;
  final Color color;
  final String title;
  final String subtitle;
  final void Function(M) onPressed;

  const _SectionInfo({
    Key key,
    @required this.model,
    @required this.color,
    @required this.title,
    this.subtitle = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _itemHeight =
        !subtitle.isNullOrBlank ? App.longest * 0.09 : App.longest * 0.065;
    final BorderRadius _radius = BorderRadius.circular(8.0);
    final double opacity = 0.3;

    return InkWell(
      splashColor: Colors.grey.shade300,
      borderRadius: _radius,
      onTap: () => onPressed.call(model),
      child: Container(
        height: _itemHeight,
        padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.05),
        decoration: BoxDecoration(
          color: color?.withOpacity(opacity),
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
                      "${title.removeNewLines()}",
                      softWrap: true,
                      wrapWords: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: AppColors.accentColor,
                            fontSize: 17.0,
                          ),
                      maxLines: 1,
                    ),
                    //
                    Visibility(
                      visible: !subtitle.isNullOrBlank,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          VerticalSpace(height: 6.0),
                          //
                          AutoSizeText(
                            "${subtitle.removeNewLines()}",
                            softWrap: true,
                            wrapWords: true,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.caption.copyWith(
                                  color: Helpers.computeLuminance(
                                      color?.withOpacity(opacity)),
                                  fontSize: 14.0,
                                ),
                            maxLines: 2,
                          ),
                        ],
                      ),
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
                  color: Helpers.computeLuminance(color.withOpacity(opacity)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ShimmerLayout extends StatelessWidget {
  static double kDefaultHeight = App.longest * 0.09;
  static int kDefaultCount = (App.longest * 0.4 / kDefaultHeight).ceil();

  final double _height;
  final double radius;
  final int _count;
  final int linesCount;

  _ShimmerLayout({
    Key key,
    this.radius = 8.0,
    this.linesCount = 3,
    int count,
  })  : _count = count ?? kDefaultCount,
        _height = kDefaultHeight,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: _count,
      separatorBuilder: (_, __) => VerticalSpace(
        height: App.height * 0.01,
      ),
      itemBuilder: (c, i) => ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: SizedBox(
          height: _height,
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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  linesCount,
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
      ),
    );
  }
}
