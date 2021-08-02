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

/// A stateless widget to render LandlordRentHistoryListScreen.
class LandlordRentHistoryListScreen extends StatelessWidget
    with AutoRouteWrapper {
  final LandlordProperty property;

  const LandlordRentHistoryListScreen({
    Key key,
    @required this.property,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<TransactionHistoryCubit>()..changePropertyAndFetch(property),
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
      appBar: Toolbar(title: 'Rent History for ${property.name?.getOrEmpty}'),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child:
                BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
              buildWhen: (p, c) =>
                  p.isLoadingRentHistory != c.isLoadingRentHistory,
              builder: (c, s) => Visibility(
                visible: s.isLoadingRentHistory,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Helpers.circularLoader(
                    height: 25,
                    width: 25,
                    stroke: 2,
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
              child:
                  BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
                builder: (c, s) => ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: s.propertyRentHistory.size,
                  itemBuilder: (_, i) {
                    final rh = s.propertyRentHistory.getOrNull(i);

                    return Visibility(
                      visible: rh.status.fold(
                        paired: true,
                        occupied: true,
                        orElse: () => false,
                      ),
                      child: ListTile(
                        leading: AppAssets.transxIn,
                        dense: true,
                        title: AutoSizeText(
                          '${rh.apartment.name.getOrEmpty}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19.0.sp,
                          ),
                        ),
                        subtitle: AutoSizeText(
                          '${WithdrawalHistory.custom(rh.recentPayment?.createdAt)}',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        trailing: AutoSizeText(
                          '${rh?.recentPayment?.totalCharged?.getOrEmpty}'
                              .asCurrency(symbol: true, decimal: true),
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        onTap: () => navigator
                            .pushLandlordRentHistoryDetailScreen(history: rh),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
