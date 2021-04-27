import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
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

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>(),
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
      appBar: Toolbar(title: "Add New Property"),
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
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                focusNode: _nameFocus,
                decoration: const InputDecoration(
                  labelText: "Property Name",
                  hintText: "1 Bedroom Flat",
                ),
                autofillHints: [],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged: (value) {},
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.name.value.fold(
                          (error) => error.message,
                          (r) => s.optionOfFailure.fold(
                            () => null,
                            (f) => !f.errors.isNull
                                ? f.errors?.password?.firstOrNull
                                : null,
                          ),
                        ),
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_cityFocus),
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
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.multiline,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.newline,
                focusNode: _descriptionFocus,
                decoration: const InputDecoration(
                  labelText: "Basic Description",
                  hintText: "Bungalow with 2 Bedrooms",
                ),
                autofillHints: [],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged: (value) {},
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.houseType.value.fold(
                          (error) => error.message,
                          (r) => s.optionOfFailure.fold(
                            () => null,
                            (f) => !f.errors.isNull
                                ? f.errors?.password?.firstOrNull
                                : null,
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
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.next,
                focusNode: _cityFocus,
                decoration: const InputDecoration(
                  labelText: "City / Town",
                  hintText: "Ikeja, Lagos",
                ),
                autofillHints: [],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged: (value) {},
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.town.value.fold(
                          (error) => error.message,
                          (r) => s.optionOfFailure.fold(
                            () => null,
                            (f) => !f.errors.isNull
                                ? f.errors?.password?.firstOrNull
                                : null,
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
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.streetAddress,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.newline,
                focusNode: _addressFocus,
                decoration: const InputDecoration(
                  labelText: "Street / Address",
                  hintText: "32, Ogunmefun Drive, GRA, Lagos",
                ),
                autofillHints: [],
                autovalidateMode:
                    c.watch<LandlordPropertyCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged: (value) {},
                validator: (value) =>
                    c.read<LandlordPropertyCubit>().state.street.value.fold(
                          (error) => error.message,
                          (r) => s.optionOfFailure.fold(
                            () => null,
                            (f) => !f.errors.isNull
                                ? f.errors?.password?.firstOrNull
                                : null,
                          ),
                        ),
                onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.2),
            //
            Hero(
              tag: "add-new-property",
              child: AppElevatedButton(
                text: "Add Property",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
