part of landl_prop_detail_screen.dart;

class _PropertyDetailBody extends StatelessWidget {
  final LandlordProperty property;
  final PanelController controller;

  const _PropertyDetailBody({
    Key key,
    this.property,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      physics: Helpers.physics,
      scrollDirection: Axis.vertical,
      child: BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
        builder: (c, s) {
          final _s = s.property;

          // Assign number of apartments
          final numberOfApartments = _s?.numberOfApartments?.getOrNull ??
              property.numberOfApartments?.getOrNull ??
              0;
          // Assign number rented
          final numberRented = _s?.numberOfRentedApartment?.getOrNull ??
              property.numberOfRentedApartment?.getOrNull ??
              0;

          return Column(
            children: [
              Hero(
                tag: s.property?.id?.value ?? property?.id?.value,
                child: Container(
                  height: App.height * 0.17,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: Helpers.appPadding,
                  ).copyWith(top: Helpers.appPadding),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Material(
                      color: s.property?.color?.shade300,
                      elevation: 2.0,
                      type: MaterialType.card,
                      child: InkWell(
                        onTap: () => !s.properties.isEmpty()
                            ? navigator.pushViewAllApartmentScreen(
                                landlordProperty: s.property,
                              )
                            : null,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: App.shortest * 0.05,
                            // vertical: App.shortest * 0.05,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "$numberRented",
                                          softWrap: true,
                                          style: Theme.of(c)
                                              .textTheme
                                              .headline5
                                              .copyWith(
                                                color: AppColors.accentColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          maxLines: 1,
                                        ),
                                        AutoSizeText(
                                          "Rented out",
                                          softWrap: true,
                                          style: Theme.of(c)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: Theme.of(c)
                                                    .textTheme
                                                    .subtitle1
                                                    .color
                                                    .withOpacity(0.6),
                                              ),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                  //
                                  // Spacer(),
                                  //
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        AutoSizeText(
                                          "$numberOfApartments",
                                          softWrap: true,
                                          style: Theme.of(c)
                                              .textTheme
                                              .headline5
                                              .copyWith(
                                                color: AppColors.accentColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                          maxLines: 1,
                                        ),
                                        AutoSizeText(
                                          "Total Apartments",
                                          softWrap: true,
                                          style: Theme.of(c)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                color: Theme.of(c)
                                                    .textTheme
                                                    .subtitle1
                                                    .color
                                                    .withOpacity(0.6),
                                              ),
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              //
                              LinearProgressIndicator(
                                value: 0.45,
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
              VerticalSpace(height: App.shortest * 0.07),
              //
              Hero(
                tag:
                    "${Constants.kAddApartmentToPropHeroTag}-${property?.id?.value}",
                child: Material(
                  color: Colors.transparent,
                  child: AppElevatedButton(
                    onPressed: () async {
                      // Await navigate to edit screen
                      await navigator.pushLandlordAddApartmentScreen(
                        property: property,
                      );
                      // Update property on pop()
                      await c
                          .read<LandlordPropertyCubit>()
                          .get(property: s.property);
                    },
                    disabled: s.isLoading,
                    width: App.shortest * 0.3,
                    height: 20,
                    text: "Add Apartment",
                  ),
                ),
              ),
              //
              VerticalSpace(height: App.shortest * 0.07),
              //
              _ListViewBuilder(tenants: s.tenants),
            ],
          );
        },
      ),
    );
  }
}

class _ListViewBuilder extends StatelessWidget {
  final KtList<User> tenants;

  const _ListViewBuilder({Key key, @required this.tenants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.03),
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: tenants.size,
      separatorBuilder: (c, i) => Padding(
        padding: EdgeInsets.symmetric(horizontal: App.shortest * 0.02),
        child: Divider(height: 5.0),
      ),
      itemBuilder: (c, i) => TenantListTile<User>(
        model: tenants.getOrNull(i),
        padding: EdgeInsets.only(bottom: i == tenants.lastIndex ? 30.0 : 0.0),
        tenant: tenants.getOrNull(i),
        subtitle: tenants.getOrNull(i)?.apartment?.name?.getOrEmpty,
        // onPressed: (value) async => navigator.pushLandlordRentDetailScreen(),
        onPressed: (value) async {},
      ),
    );
  }
}
