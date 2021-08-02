import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/presentation/managers/index.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

/// A stateless widget to render LandlordRentHistoryScreen.
class LandlordRentHistoryScreen extends StatelessWidget with AutoRouteWrapper {
  const LandlordRentHistoryScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransactionHistoryCubit>()..fetchProperties(true),
      child: BlocListener<TransactionHistoryCubit, TransactionHistoryState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => either.fold(
            (f) => BottomAlertDialog.init(c, message: f?.message),
            (_) => null,
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Rent History'),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child:
                BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
              buildWhen: (p, c) =>
                  p.isLoadingProperties != c.isLoadingProperties,
              builder: (c, s) => Visibility(
                visible: s.isLoadingProperties,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Helpers.circularLoader(
                    height: 25,
                    width: 25,
                    stroke: 2.5,
                  ),
                ),
              ),
            ),
          ),
          //
          Positioned.fill(
            child:
                BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
              builder: (c, s) => Visibility(
                visible: !s.isLoadingProperties && s.properties.isEmpty(),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Center(
                    child: AutoSizeText(
                      "No property has been registered on this account...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0.sp,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //
          Positioned.fill(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              physics: Helpers.physics,
              padding: EdgeInsets.only(top: App.longest * 0.015),
              child:
                  BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
                builder: (c, s) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...ListTile.divideTiles(
                      context: c,
                      tiles: s.properties
                          .mapNotNull(
                            (prop) => RadioListTile<LandlordProperty>(
                              dense: true,
                              controlAffinity: ListTileControlAffinity.leading,
                              value: prop,
                              groupValue: s.currentProperty,
                              onChanged: c
                                  .read<TransactionHistoryCubit>()
                                  .propertyChanged,
                              title: AutoSizeText(
                                "${prop.name?.getOrEmpty}",
                                maxLines: 1,
                                softWrap: true,
                                wrapWords: true,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(c).textTheme.headline6.merge(
                                      TextStyle(
                                        fontSize: 21.0.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                              ),
                              subtitle: AutoSizeText(
                                "${prop.street?.getOrEmpty}".removeNewLines(),
                                maxLines: 2,
                                softWrap: true,
                                wrapWords: true,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(c).textTheme.subtitle2.copyWith(
                                      fontSize: 18.0.sp,
                                      color: Helpers.optionOf(
                                          Colors.black54, Colors.white54),
                                    ),
                              ),
                            ),
                          )
                          .asList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton:
          BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
        builder: (c, s) => Visibility(
          visible: !s.currentProperty.isNull,
          child: FloatingActionButton(
            onPressed: () => navigator.pushLandlordRentHistoryListScreen(
              property: s.currentProperty,
            ),
            tooltip: 'Continue',
            autofocus: true,
            child: RotatedBox(
              quarterTurns: 2,
              child: Icon(Icons.keyboard_backspace_rounded),
            ),
          ),
        ),
      ),
    );
  }
}
