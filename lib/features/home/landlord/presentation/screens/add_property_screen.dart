import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/toolbar.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordAddPropertyScreen extends StatelessWidget with AutoRouteWrapper {
  static double inputSpacing = App.longest * 0.015;
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _descriptionFocus = FocusNode();
  final FocusNode _cityFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();

  final LandlordProperty property;

  LandlordAddPropertyScreen({
    Key key,
    this.property,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()..init(property),
      child: BlocConsumer<LandlordPropertyCubit, LandlordPropertyState>(
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.show(
            context,
            message: either.fold(
              (f) => f?.message ?? f?.error,
              (r) => r?.message ?? r?.details,
            ),
            icon: either.fold((_) => null, (r) => Icons.check_circle_rounded),
            iconColor: either.fold((_) => null, (r) => AppColors.successGreen),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (r) => r.popRoute ? (_) => navigator.pop(true) : null,
            ),
          ),
        ),
        builder: (context, state) => PortalEntry(
          visible: context.watch<LandlordPropertyCubit>().state.isLoading,
          portal: App.waveLoadingBar,
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: property.isNull
            ? "Add New Property"
            : "Update ${context.read<LandlordPropertyCubit>().state.propertyType.getOrNull} "
                "Property",
        implyLeading: true,
        leadingCondition: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.02),
        child: Column(
          children: [
            BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
              builder: (c, s) => TextFormField(
                maxLines: 1,
                enableSuggestions: true,
                autocorrect: false,
                initialValue: s.name.getOrEmpty,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                focusNode: _nameFocus,
                decoration: const InputDecoration(
                  labelText: "Property Name",
                  hintText: "Robbie Barrows And Co House",
                ),
                autofillHints: [],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged: c.watch<LandlordPropertyCubit>().proeprtyNameChanged,
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.name.value.fold(
                          (error) => error.message,
                          (r) => s.response.fold(
                            () => null,
                            (_) => _.fold(
                              (f) => f.errors?.name?.firstOrNull,
                              (_) => null,
                            ),
                          ),
                        ),
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_descriptionFocus),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
                builder: (c, s) => DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    layoutBehavior: ButtonBarLayoutBehavior.constrained,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    child: DropdownButton<PropertyType>(
                      items: PropertyType.values
                          .toList()
                          .map<DropdownMenuItem<PropertyType>>(
                            (item) => DropdownMenuItem<PropertyType>(
                              value: item,
                              child: Text(
                                item.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          )
                          .toList(),
                      hint: Text("-- Select Property Type --"),
                      value: s.propertyType.getOrNull,
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 19.0,
                      onChanged:
                          c.watch<LandlordPropertyCubit>().propertyTypeChanged,
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
              builder: (c, s) => TextFormField(
                maxLines: 3,
                enableSuggestions: true,
                autocorrect: false,
                initialValue: s.houseType.getOrEmpty,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.multiline,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.newline,
                focusNode: _descriptionFocus,
                decoration: const InputDecoration(
                  labelText: "Basic Description",
                  hintText: "Bungalow with 2 Bedrooms",
                ),
                autofillHints: [
                  AutofillHints.location,
                ],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged: c.watch<LandlordPropertyCubit>().houseTypeChanged,
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.houseType.value.fold(
                          (error) => error.message,
                          (r) => s.response.fold(
                            () => null,
                            (_) => _.fold(
                              (f) => f.errors?.houseType?.firstOrNull,
                              (_) => null,
                            ),
                          ),
                        ),
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_cityFocus),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
              builder: (c, s) => TextFormField(
                maxLines: 1,
                enableSuggestions: true,
                autocorrect: false,
                initialValue: s.town.getOrEmpty,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                focusNode: _cityFocus,
                decoration: const InputDecoration(
                  labelText: "City / Town",
                  hintText: "Ikeja, Lagos",
                ),
                autofillHints: [
                  AutofillHints.postalAddress,
                  AutofillHints.postalAddressExtended,
                  AutofillHints.addressCity,
                  AutofillHints.addressState,
                  AutofillHints.addressCityAndState,
                  AutofillHints.streetAddressLevel2,
                  AutofillHints.streetAddressLevel3,
                ],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged: c.watch<LandlordPropertyCubit>().proeprtyTownChanged,
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.town.value.fold(
                          (error) => error.message,
                          (r) => s.response.fold(
                            () => null,
                            (_) => _.fold(
                              (f) => f.errors?.town?.firstOrNull,
                              (_) => null,
                            ),
                          ),
                        ),
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_addressFocus),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordPropertyCubit, LandlordPropertyState>(
              builder: (c, s) => TextFormField(
                maxLines: 5,
                enableSuggestions: true,
                autocorrect: false,
                initialValue: s.street.getOrEmpty,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.streetAddress,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.newline,
                focusNode: _addressFocus,
                decoration: const InputDecoration(
                  labelText: "Street / Address",
                  hintText: "32, Ogunmefun Drive, GRA, Lagos",
                ),
                autofillHints: [
                  AutofillHints.fullStreetAddress,
                  AutofillHints.postalAddress,
                  AutofillHints.postalAddressExtended,
                  AutofillHints.streetAddressLine1,
                  AutofillHints.streetAddressLine2,
                  AutofillHints.streetAddressLine3,
                ],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged:
                    c.watch<LandlordPropertyCubit>().proeprtyAddressChanged,
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.street.value.fold(
                          (error) => error.message,
                          (r) => s.response.fold(
                            () => null,
                            (_) => _.fold(
                              (f) => f.errors?.street?.firstOrNull,
                              (_) => null,
                            ),
                          ),
                        ),
                onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.2),
            //
            Hero(
              tag: Constants.kAddEditPropertyHeroTag,
              child: Visibility(
                visible: property.isNull,
                replacement: AppElevatedButton(
                  text: "Save",
                  onPressed: () => context
                      .read<LandlordPropertyCubit>()
                      .update(property: property),
                ),
                child: AppElevatedButton(
                  text: "Add Property",
                  onPressed: context.read<LandlordPropertyCubit>().create,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
