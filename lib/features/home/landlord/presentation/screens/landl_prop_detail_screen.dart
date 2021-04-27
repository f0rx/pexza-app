import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';

class LandlordPropertyDetailScreen extends StatelessWidget
    with AutoRouteWrapper {
  final LandlordProperty property;

  const LandlordPropertyDetailScreen({
    Key key,
    @required this.property,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()..get(property.id),
      child: BlocListener<LandlordPropertyCubit, LandlordPropertyState>(
        listener: (c, s) {
          c.read<LandlordPropertyCubit>().state.optionOfFailure.fold(
                () => null,
                (failure) => Flushbar(
                  duration: const Duration(seconds: 10),
                  icon: const Icon(Icons.error, color: Colors.red),
                  messageText: AutoSizeText(
                    !failure.message.isNullOrBlank
                        ? failure.message
                        : failure.error,
                  ),
                  borderRadius: 8,
                  dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                  margin: const EdgeInsets.all(8),
                  flushbarPosition:
                      MediaQuery.of(context).viewInsets.bottom == 0
                          ? FlushbarPosition.BOTTOM
                          : FlushbarPosition.TOP,
                  shouldIconPulse: true,
                  backgroundColor: Theme.of(context).primaryColor,
                ).show(context),
              );
        },
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: context
                .watch<LandlordPropertyCubit>()
                .state
                .property
                ?.name
                ?.getOrEmpty
                ?.removeNewLines() ??
            property?.name?.getOrEmpty?.removeNewLines(),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
              builder: (context, state) {
                // log.wtf(state.property);

                return Hero(
                  tag: state.property?.id?.value ?? property?.id?.value,
                  child: Container(
                    height: App.height * 0.2,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: Helpers.appPadding,
                    ).copyWith(top: Helpers.appPadding),
                    decoration: BoxDecoration(
                      color: state.property?.color?.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //
                      ],
                    ),
                  ),
                );
              },
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
                  ).copyWith(top: App.shortest * 0.04),
                  child: Column(
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SubtitledHeader(text: "Tenants"),
                            Flexible(
                              child: InkWell(
                                onTap: () => navigator
                                    .pushLandlordTenantsListingScreen(),
                                borderRadius: BorderRadius.circular(50.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 7.0),
                                  child: AutoSizeText(
                                    "See all",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: App.theme.accentColor,
                                    ),
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
              ),
            ),
          ),
        ],
      ),
      floatingActionButton:
          BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
        builder: (context, state) => FloatingActionButton(
          onPressed: () => navigator.pushLandlordAddTenantScreen(),
          tooltip: "Assign apartment to a Tenant",
          isExtended: true,
          heroTag: "assign-${state.property?.id?.value ?? property?.id?.value}",
          child: Icon(
            Icons.person_add,
            color: Helpers.computeLuminance(AppColors.accentColor),
          ),
        ),
      ),
    );
  }
}
