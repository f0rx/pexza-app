import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/features/home/tenant/domain/entities/entities.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/toolbar.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordAddPropertyScreen extends StatelessWidget with AutoRouteWrapper {
  static double inputSpacing = App.longest * 0.015;
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _cityFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: "Add Property"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        physics: Helpers.physics,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding)
            .copyWith(top: App.longest * 0.02),
        child: Column(
          children: [
            TextFormField(
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
              autovalidateMode: AutovalidateMode.disabled,
              onChanged: (value) {},
              validator: (value) {},
              onFieldSubmitted: (_) =>
                  FocusScope.of(context).requestFocus(_cityFocus),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (_, __) => VerticalSpace(height: inputSpacing),
              itemCount: 4,
              itemBuilder: (context, i) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    alignedDropdown: true,
                    layoutBehavior: ButtonBarLayoutBehavior.constrained,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    child: DropdownButton<PropertyPlan>(
                      items: PropertyPlan.items
                          .toList()
                          .map<DropdownMenuItem<PropertyPlan>>(
                            (item) => DropdownMenuItem<PropertyPlan>(
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
                      hint: Text("-- Select Gender --"),
                      value: PropertyPlan.Monthly,
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 19.0,
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            TextFormField(
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
              autovalidateMode: AutovalidateMode.disabled,
              onChanged: (value) {},
              validator: (value) {},
              onFieldSubmitted: (_) =>
                  FocusScope.of(context).requestFocus(_addressFocus),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            TextFormField(
              maxLines: 1,
              enableSuggestions: true,
              autocorrect: false,
              cursorColor: Theme.of(context).accentColor,
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.done,
              focusNode: _addressFocus,
              decoration: const InputDecoration(
                labelText: "Street / Address",
                hintText: "32, Ogunmefun Drive, GRA, Lagos",
              ),
              autofillHints: [],
              autovalidateMode: AutovalidateMode.disabled,
              onChanged: (value) {},
              validator: (value) {},
              onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
            ),
            //
            VerticalSpace(height: App.shortest * 0.2),
            //
            AppElevatedButton(
              text: "Add Property",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
