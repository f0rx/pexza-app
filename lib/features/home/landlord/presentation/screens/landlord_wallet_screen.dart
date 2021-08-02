import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/presentation/managers/index.dart';
import 'package:pexza/features/core/presentation/widgets/index.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

/// A stateless widget to render LandlordWalletScreen.
class LandlordWalletScreen extends StatelessWidget with AutoRouteWrapper {
  static const List<String> _tabBarItems = [
    "Withdrawal History",
    "Rent History"
  ];

  final ScrollController _scrollController = ScrollController();

  LandlordWalletScreen({Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransactionHistoryCubit>()
        ..fetchWithdrawalHistory()
        ..fetchProperties(),
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
    return DefaultTabController(
      length: _tabBarItems.length,
      child: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                title: const Text('Wallet'),
                stretch: true,
                floating: true,
                pinned: true,
                centerTitle: true,
                expandedHeight: 300.0,
                backwardsCompatibility: true,
                forceElevated: innerBoxIsScrolled,
                // backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  background: SafeArea(
                    top: false,
                    bottom: false,
                    child: Padding(
                      padding: const EdgeInsets.only(top: kToolbarHeight + 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LimitedBox(
                            maxHeight: 180,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: Helpers.appPadding,
                              ).copyWith(top: App.shortest * 0.04),
                              child: const CardWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                bottom: TabBar(
                  labelColor: Helpers.optionOf(Colors.black87, Colors.white,
                      context: context),
                  isScrollable: false,
                  indicatorColor: AppColors.accentColor.shade300,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0.sp),
                  unselectedLabelColor: Colors.grey,
                  indicatorPadding: EdgeInsets.symmetric(
                      vertical: 0.015.sw, horizontal: -10.0),
                  tabs: _tabBarItems.map<Widget>((i) => Tab(text: i)).toList(),
                ),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              _WithdrawalHistoryBuilder(_tabBarItems[0]),
              //
              _RentHistoryBuilder(_tabBarItems[1]),
            ],
          ),
        ),
      ),
    );
  }
}

class _WithdrawalHistoryBuilder extends StatelessWidget {
  final String pageStorageKey;

  const _WithdrawalHistoryBuilder(this.pageStorageKey);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
        builder: (c, s) => Visibility(
          visible: !s.withdrawalHistory.isEmpty(),
          replacement: CustomScrollView(
            slivers: [
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(c),
              ),
              //
              if (s.isLoadingWithdrawalHistory && s.withdrawalHistory.isEmpty())
                SliverPadding(
                  padding: EdgeInsets.all(Helpers.appPadding),
                  sliver: SliverToBoxAdapter(
                    child: Center(child: App.chasingDots),
                  ),
                ),
              //
              if (!s.isLoadingWithdrawalHistory &&
                  s.withdrawalHistory.isEmpty())
                SliverPadding(
                  padding: EdgeInsets.all(Helpers.appPadding),
                  sliver: SliverToBoxAdapter(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "No Transaction History...",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24.0.sp,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          child: CustomScrollView(
            key: PageStorageKey<String>(pageStorageKey),
            slivers: <Widget>[
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(c),
              ),
              //
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, i) {
                    final h = s.withdrawalHistory.getOrNull(i);

                    return ListTile(
                      leading: AppAssets.transxOut,
                      // dense: true,
                      title: AutoSizeText.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'Withdrawal ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19.0.sp,
                            ),
                          ),
                          TextSpan(
                            text: h?.status?.fold(generated: '(Pending)') ?? '',
                          ),
                        ]),
                        style: TextStyle(fontSize: 17.0.sp),
                      ),
                      subtitle: AutoSizeText(
                        '${WithdrawalHistory.custom(h.createdAt)}',
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      trailing: AutoSizeText(
                        '${h?.totalCharged?.getOrEmpty}'
                            .asCurrency(symbol: true, decimal: true),
                      ),
                      onTap: () {},
                    );
                  },
                  childCount: s.withdrawalHistory.size,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RentHistoryBuilder extends StatelessWidget {
  final String pageStorageKey;

  const _RentHistoryBuilder(this.pageStorageKey);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: BlocBuilder<TransactionHistoryCubit, TransactionHistoryState>(
        builder: (c, s) => CustomScrollView(
          key: PageStorageKey<String>(pageStorageKey),
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(c),
            ),
            //
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Helpers.appPadding * .6,
                    ).copyWith(top: Helpers.appPadding),
                    child: DropdownFieldWidget(
                      hint: "-- Select a Property --",
                      disabled: s.isLoadingProperties && s.properties.isEmpty(),
                      disabledHint: "Fetching your properties..",
                      selected: s.currentProperty,
                      onChanged: c
                          .read<TransactionHistoryCubit>()
                          .changePropertyAndFetch,
                      items: s.properties
                          .map<DropdownMenuItem<LandlordProperty>>(
                            (item) => DropdownMenuItem<LandlordProperty>(
                              value: item,
                              child: AutoSizeText(
                                "${item.name?.getOrEmpty}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                          )
                          .asList(),
                    ),
                  ),
                  //
                  Visibility(
                    visible: !s.properties.isEmpty(),
                    child: Visibility(
                      visible: !s.propertyRentHistory.isEmpty(),
                      replacement: Padding(
                        padding: EdgeInsets.all(Helpers.appPadding),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (s.isLoadingRentHistory)
                              Center(child: App.chasingDots),
                            if (!s.isLoadingRentHistory &&
                                s.propertyRentHistory.isEmpty() &&
                                !s.currentProperty.isNull)
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "No Rent History for "
                                  "${s.currentProperty?.name?.getOrEmpty}.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 21.0.sp,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: s.propertyRentHistory.size,
                        itemBuilder: (_, i) {
                          final rh = s.propertyRentHistory.getOrNull(i);

                          return ListTile(
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
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: AutoSizeText(
                                    '${rh?.recentPayment?.totalCharged?.getOrEmpty}'
                                        .asCurrency(
                                            symbol: true, decimal: true),
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                ),
                                Flexible(
                                  child: AutoSizeText.rich(
                                    TextSpan(children: [
                                      const TextSpan(
                                        text: 'Charges: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //
                                      TextSpan(
                                        text:
                                            '${rh.recentPayment?.charges?.getOrEmpty}'
                                                .asCurrency(
                                          symbol: true,
                                          decimal: true,
                                        ),
                                      ),
                                    ]),
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ),
                              ],
                            ),
                            onTap: () =>
                                navigator.pushLandlordRentHistoryDetailScreen(
                              history: rh,
                            ),
                          );
                        },
                      ),
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
