import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/features/home/tenant/presentation/managers/index.dart';

class TenantApartmentDetailScreen extends StatelessWidget
    with AutoRouteWrapper {
  final TenantApartment apartment;
  final Assignment assignment;

  const TenantApartmentDetailScreen({
    Key key,
    @required this.apartment,
    @required this.assignment,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TenantAssignmentCubit>()
        ..init(apartment: apartment)
        ..getApartmentAndProperty(assignment),
      child: BlocListener<TenantAssignmentCubit, TenantAssignmentState>(
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
              (r) => r.popRoute ? (_) => navigator.pop() : null,
            ),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "${apartment?.name?.getOrEmpty}"),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: BlocBuilder<TenantAssignmentCubit, TenantAssignmentState>(
              builder: (c, s) => Visibility(
                visible: s.isLoading,
                child: Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Center(
                    child: CircularProgressBar.adaptive(
                      width: 25.0,
                      height: 25.0,
                      strokeWidth: 2.5,
                      radius: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: App.height * 0.17,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: Helpers.appPadding,
              ).copyWith(top: Helpers.appPadding),
              decoration: BoxDecoration(
                color: apartment?.property?.color?.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: formatDate(
                              DateTime.now(), [d, ' - ', mm, ' - ', yyyy]),
                          style: TextStyle(
                            fontSize: 25.0,
                            wordSpacing: 2.0,
                            fontWeight: FontWeight.w600,
                            color: App.theme.accentColor,
                          ),
                        ),
                        TextSpan(
                          text: "\n\nNext Due Date",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ]),
                      textAlign: TextAlign.center,
                      wrapWords: false,
                      softWrap: false,
                    ),
                  ),
                  //
                  Flexible(
                    child: InkWell(
                      onTap: () => navigator.pushTenantRentDetailScreen(
                        assignment: assignment,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 6.0),
                        child: AutoSizeText(
                          "Click to view details",
                          style: TextStyle(
                            color: App.theme.accentColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
              child: Material(
                color: Colors.white,
                elevation: 2.0,
                type: MaterialType.card,
                child: Container(
                  height: App.height * 0.5,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: Helpers.appPadding,
                    vertical: Helpers.appPadding,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Hero(
                          tag: "${Constants.kCreateRequest}",
                          child: Material(
                            color: AppColors.primaryColor.shade400,
                            borderRadius: BorderRadius.circular(8.0),
                            child: InkWell(
                              onTap: () => navigator.pushServiceRequestScreen(
                                assignment: assignment,
                              ),
                              splashColor: AppColors.primaryColor.shade500,
                              borderRadius: BorderRadius.circular(8.0),
                              child: SizedBox(
                                height: App.height * 0.2,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: AutoSizeText(
                                          "Request Service",
                                          maxLines: 1,
                                          softWrap: true,
                                          style: TextStyle(
                                            color: App.theme.accentColor,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                      //
                                      Flexible(
                                        child: AutoSizeText(
                                          "Request repair and maintenance service.",
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      HorizontalSpace(width: Helpers.appPadding),
                      //
                      Expanded(
                        child: Hero(
                          tag: "${Constants.kPayRentTag}",
                          child: Material(
                            color: AppColors.primaryColor.shade400,
                            borderRadius: BorderRadius.circular(8.0),
                            child: InkWell(
                              onTap: () =>
                                  navigator.pushTenantRentPaymentScreen(
                                assignment: assignment,
                              ),
                              splashColor: AppColors.primaryColor.shade500,
                              borderRadius: BorderRadius.circular(8.0),
                              child: SizedBox(
                                height: App.height * 0.2,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: AutoSizeText(
                                          "Pay House Rent",
                                          maxLines: 1,
                                          softWrap: true,
                                          style: TextStyle(
                                            color: App.theme.accentColor,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                      ),
                                      //
                                      Flexible(
                                        child: AutoSizeText(
                                          "Check Rent due date and pay rent your rent.",
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
