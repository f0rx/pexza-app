import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:kt_dart/kt.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/index.dart';

class LandlordAddTenantScreen extends StatelessWidget with AutoRouteWrapper {
  static double inputSpacing = App.longest * 0.015;
  final FocusNode _emailAddressFocus = FocusNode();
  final FocusNode _amountFocus = FocusNode();
  final LandlordProperty property;
  final LandlordApartment apartment;

  LandlordAddTenantScreen({
    Key key,
    @required this.property,
    this.apartment,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordMergerCubit>()..fetchAllLandlordProperties(),
      child: BlocConsumer<LandlordMergerCubit, LandlordMergerState>(
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
              (r) => (_) => navigator.pop(),
            ),
          ),
        ),
        // buildWhen: (p, c) => p.isLoading != c.isLoading,
        builder: (c, s) => PortalEntry(
          // visible: c.watch<LandlordMergerCubit>().state.isLoading,
          visible: true,
          portal: App.positionedLoader(c),
          child: this,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Pair Tenant to Apartment",
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
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => TextFormField(
                maxLines: 1,
                enableSuggestions: true,
                autocorrect: false,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.next,
                focusNode: _emailAddressFocus,
                decoration: const InputDecoration(
                  labelText: "Tenant's E-mail Address",
                  hintText: EmailAddress.kPlaceholder,
                ),
                autofillHints: [],
                autovalidateMode: AutovalidateMode.disabled,
                onChanged: c.read<LandlordMergerCubit>().emailAddressChanged,
                validator: (value) =>
                    c.read<LandlordMergerCubit>().state.email.value.fold(
                          (error) => error.message,
                          (r) => s.response.fold(
                            () => null,
                            (_) => _.fold(
                              (f) => f.errors?.tenantEmail?.firstOrNull,
                              (_) => null,
                            ),
                          ),
                        ),
                onFieldSubmitted: (_) =>
                    FocusScope.of(context).requestFocus(_amountFocus),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => Container(
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
                    child: DropdownButton<LandlordProperty>(
                      items: s.properties
                          .asList()
                          .map<DropdownMenuItem<LandlordProperty>>(
                            (item) => DropdownMenuItem<LandlordProperty>(
                              value: item,
                              child: Text(
                                "${item.name?.getOrEmpty}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          )
                          .toList(),
                      hint: Text("-- Select the Property --"),
                      value: s.selectedProperty,
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 19.0,
                      onChanged: c.read<LandlordMergerCubit>().propertyChanged,
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => Container(
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
                    child: DropdownButton<LandlordApartment>(
                      items: s.apartments
                          .asList()
                          .map<DropdownMenuItem<LandlordApartment>>(
                            (item) => DropdownMenuItem<LandlordApartment>(
                              value: item,
                              child: Text(
                                "${item.name?.getOrEmpty}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          )
                          .toList(),
                      hint: Text("-- Choose Apartment --"),
                      value: s.selectedApartment,
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 19.0,
                      onChanged: c.read<LandlordMergerCubit>().apartmentChanged,
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => Container(
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
                    child: DropdownButton<PaymentPlan>(
                      items: PaymentPlan.values
                          .toList()
                          .map<DropdownMenuItem<PaymentPlan>>(
                            (item) => DropdownMenuItem<PaymentPlan>(
                              value: item,
                              child: Text(
                                "${item.name}".capitalizeFirst(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          )
                          .toList(),
                      hint: Text("-- Choose payment plan --"),
                      value: s.plan,
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 19.0,
                      onChanged:
                          c.read<LandlordMergerCubit>().paymentPlanChanged,
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => Container(
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
                    child: DropdownButton<int>(
                      items: List.generate(50, (index) => index + 1)
                          .map<DropdownMenuItem<int>>(
                            (item) => DropdownMenuItem<int>(
                              value: item,
                              child: Text(
                                "$item year".pluralize(item),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          )
                          .toList(),
                      hint: Text("-- Select Duration --"),
                      value: s.duration,
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 19.0,
                      onChanged: c.read<LandlordMergerCubit>().durationChanged,
                    ),
                  ),
                ),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => TextFormField(
                maxLines: 1,
                enableSuggestions: true,
                autocorrect: false,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.number,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.done,
                focusNode: _amountFocus,
                decoration: const InputDecoration(
                  labelText: "Amount",
                  prefixIcon: const Icon(Icons.attach_money),
                ),
                autofillHints: [],
                autovalidateMode: AutovalidateMode.disabled,
                onChanged: c.read<LandlordMergerCubit>().amountChanged,
                validator: (value) =>
                    c.read<LandlordMergerCubit>().state.amount.value.fold(
                          (error) => error.message,
                          (r) => s.response.fold(
                            () => null,
                            (_) => _.fold(
                              (f) => f.errors?.amount?.firstOrNull,
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
              tag:
                  "${Constants.kAssignTenantToPropHeroTag}-${property?.id?.value}",
              child: AppElevatedButton(
                text: "Pair with Tenant",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
