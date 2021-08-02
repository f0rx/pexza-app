import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/tenant/presentation/managers/index.dart';

class ServiceRequestScreen extends StatelessWidget with AutoRouteWrapper {
  final Assignment assignment;

  const ServiceRequestScreen({
    Key key,
    @required this.assignment,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TenantMaintenanceCubit>()..init(assignment),
      child: BlocConsumer<TenantMaintenanceCubit, TenantMaintenanceState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
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
              (r) => (_) => navigator.pop(true),
            ),
          ),
        ),
        builder: (c, s) => PortalEntry(
          visible: c.watch<TenantMaintenanceCubit>().state.isLoading,
          portal: App.loadingOverlay(Helpers.circularLoader()),
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Request Service"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: Helpers.appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<TenantMaintenanceCubit, TenantMaintenanceState>(
              builder: (c, s) => DropdownFieldWidget(
                hint: "-- Select Service Type --",
                disabled: s.isLoading,
                disabledHint: "Fetching available services..",
                items: s.services
                    .asList()
                    .map<DropdownMenuItem<MaintenanceService>>(
                      (item) => DropdownMenuItem<MaintenanceService>(
                        value: item,
                        child: AutoSizeText(
                          "${item.name?.getOrEmpty}"?.capitalizeFirst(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    )
                    .toList(),
                selected: s.service,
                validate: s.validate,
                error: s.response?.fold(
                  () => null,
                  (_) => _?.fold(
                    (f) => f.errors?.serviceId?.firstOrNil,
                    (_) => null,
                  ),
                ),
                onChanged: c.read<TenantMaintenanceCubit>().serviceChanged,
              ),
            ),
            //
            VerticalSpace(height: App.longest * 0.04),
            //
            AutoSizeText(
              "Level of Urgency",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            BlocBuilder<TenantMaintenanceCubit, TenantMaintenanceState>(
              buildWhen: (p, c) => p.urgency.getOrNull != c.urgency.getOrNull,
              builder: (c, s) => Theme(
                data: Theme.of(context).copyWith(
                  sliderTheme: SliderThemeData(
                    trackShape: CustomTrackShape(),
                  ),
                ),
                child: Slider.adaptive(
                  value: s.urgency.getOrNull / 10,
                  max: 1.0,
                  min: 0.0,
                  divisions: 10,
                  label: "${s.urgency.getOrNull}",
                  onChanged: c.read<TenantMaintenanceCubit>().urgencyChanged,
                ),
              ),
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<TenantMaintenanceCubit, TenantMaintenanceState>(
                  buildWhen: (p, c) =>
                      p.urgency.getOrNull != c.urgency.getOrNull,
                  builder: (c, s) => AutoSizeText(
                    "Minor",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: s.urgency.getOrNull <= 3
                          ? AppColors.yellow
                          : Colors.grey,
                    ),
                    maxLines: 1,
                  ),
                ),
                //
                BlocBuilder<TenantMaintenanceCubit, TenantMaintenanceState>(
                  buildWhen: (p, c) =>
                      p.urgency.getOrNull != c.urgency.getOrNull,
                  builder: (c, s) => AutoSizeText(
                    "Very Urgent",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: s.urgency.getOrNull >= 7
                          ? AppColors.errorRed
                          : Colors.grey,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            //
            VerticalSpace(height: App.longest * 0.04),
            //
            AutoSizeText(
              "Any Extra Comment?",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
            ),
            //
            VerticalSpace(height: App.longest * 0.02),
            //
            ConstrainedBox(
              constraints: BoxConstraints.loose(
                  Size(double.infinity, App.longest * 0.3)),
              child:
                  BlocBuilder<TenantMaintenanceCubit, TenantMaintenanceState>(
                builder: (c, s) => TextFormField(
                  maxLines: 80,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  textCapitalization: TextCapitalization.sentences,
                  cursorColor: Theme.of(context).accentColor,
                  autovalidateMode: s.validate
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: "The leak is at the kitchen and its a major "
                        "problem as I have not been able to cook efficiently.",
                  ),
                  onChanged: c.read<TenantMaintenanceCubit>().commentChanged,
                  validator: (value) => s.comment.value.fold(
                    (error) => error.message,
                    (r) => s.response?.fold(
                      () => null,
                      (_) => _?.fold(
                        (f) => f.errors?.comment?.firstOrNil,
                        (_) => null,
                      ),
                    ),
                  ),
                  onFieldSubmitted: (_) => FocusScope.of(c).unfocus(),
                ),
              ),
            ),
            //
            VerticalSpace(height: App.longest * 0.04),
            //
            BlocBuilder<TenantMaintenanceCubit, TenantMaintenanceState>(
              builder: (c, s) => Hero(
                tag: "${Constants.kCreateRequest}",
                child: AppElevatedButton(
                  text: "Forward Request",
                  disabled: s.isLoading,
                  onPressed: c.read<TenantMaintenanceCubit>().create,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
