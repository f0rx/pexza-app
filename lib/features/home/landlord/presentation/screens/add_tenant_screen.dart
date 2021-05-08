import 'package:auto_size_text/auto_size_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';

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
      create: (_) => getIt<LandlordMergerCubit>()
        ..init(property: property, apartment: apartment),
      child: BlocConsumer<LandlordMergerCubit, LandlordMergerState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
        listener: (c, s) => s.response.fold(
          () => null,
          (either) => BottomAlertDialog.show(
            c,
            message: either.fold(
              (f) => f?.message ?? f?.error,
              (r) => r?.message ?? r?.details,
            ),
            icon: either.fold((_) => null, (r) => Icons.check_circle_rounded),
            iconColor: either.fold((_) => null, (r) => AppColors.successGreen),
            shouldIconPulse: either.fold((_) => null, (r) => false),
            callback: either.fold(
              (_) => null,
              (s) => s.popRoute == true ? (_) => navigator.pop() : null,
            ),
          ),
        ),
        buildWhen: (p, c) => p.isLoading != c.isLoading,
        builder: (c, s) => PortalEntry(
          visible: c.watch<LandlordMergerCubit>().state.isLoading,
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
                cursorColor: Theme.of(c).accentColor,
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.next,
                focusNode: _emailAddressFocus,
                decoration: const InputDecoration(
                  labelText: "Tenant's E-mail Address",
                  hintText: EmailAddress.kPlaceholder,
                ),
                autofillHints: [
                  AutofillHints.email,
                  AutofillHints.username,
                ],
                autovalidateMode: s.validate
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                onChanged: c.read<LandlordMergerCubit>().emailAddressChanged,
                validator: (value) => s.email.value.fold(
                  (error) => error.message,
                  (r) => s.response?.fold(
                    () => null,
                    (_) => _?.fold(
                      (f) => f.errors?.tenantEmail?.firstOrNull,
                      (_) => null,
                    ),
                  ),
                ),
                onFieldSubmitted: (_) =>
                    FocusScope.of(c).requestFocus(_amountFocus),
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => DropdownFieldWidget(
                hint: "-- Select the Property --",
                disabled: s.isLoading,
                disabledHint: "Fetching your properties..",
                items: s.properties
                    .asList()
                    .map<DropdownMenuItem<LandlordProperty>>(
                      (item) => DropdownMenuItem<LandlordProperty>(
                        value: item,
                        child: AutoSizeText(
                          "${item.name?.getOrEmpty}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    )
                    .toList(),
                selected: s.selectedProperty,
                validate: s.validate,
                error: s.response?.fold(
                  () => null,
                  (_) => _?.fold(
                    (f) => f.errors?.propertyId?.firstOrNull,
                    (_) => null,
                  ),
                ),
                onChanged: c.read<LandlordMergerCubit>().propertyChanged,
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => DropdownFieldWidget(
                hint: "-- Choose Apartment --",
                disabled: s.isLoading,
                disabledHint: s.isLoading
                    ? "Fetching apartments..."
                    : !s.selectedProperty.isNull && s.apartments.isEmpty()
                        ? "No apartments found!"
                        : "You must select a Property above!",
                items: s.apartments
                    .asList()
                    .map<DropdownMenuItem<LandlordApartment>>(
                      (item) => DropdownMenuItem<LandlordApartment>(
                        value: item,
                        child: AutoSizeText(
                          "${item.name?.getOrEmpty}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    )
                    .toList(),
                selected: s.selectedApartment,
                validate: s.validate,
                error: s.response?.fold(
                  () => null,
                  (_) => _?.fold(
                    (f) => f.errors?.apartmentId?.firstOrNull,
                    (_) => null,
                  ),
                ),
                onChanged: c.read<LandlordMergerCubit>().apartmentChanged,
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => DropdownFieldWidget(
                hint: "-- Choose payment plan --",
                items: PaymentPlan.values
                    .toList()
                    .map<DropdownMenuItem<PaymentPlan>>(
                      (item) => DropdownMenuItem<PaymentPlan>(
                        value: item,
                        child: AutoSizeText(
                          "${item.name}".capitalizeFirst(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    )
                    .toList(),
                selected: s.plan,
                validate: s.validate,
                onChanged: c.read<LandlordMergerCubit>().paymentPlanChanged,
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => DropdownFieldWidget(
                hint: "-- Select Duration --",
                items: List.generate(
                  LandlordMergerState.kMaxDuration,
                  (index) => index + 1,
                )
                    .map<DropdownMenuItem<int>>(
                      (item) => DropdownMenuItem<int>(
                        value: item,
                        child: AutoSizeText(
                          "$item ${s.plan.fold(monthly: (v) => "month", yearly: (v) => "year")}"
                              .pluralize(item),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    )
                    .toList(),
                selected: s.duration,
                validate: s.validate,
                error: s.response?.fold(
                  () => null,
                  (_) => _?.fold(
                    (f) => f.errors?.duration?.firstOrNull,
                    (_) => null,
                  ),
                ),
                onChanged: c.read<LandlordMergerCubit>().durationChanged,
              ),
            ),
            //
            VerticalSpace(height: inputSpacing),
            //
            BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
              builder: (c, s) => DropdownFieldWidget(
                hint: "-- Select Currency --",
                disabled: s.isLoading,
                disabledHint: "Fetching data..please wait.",
                items: s.currencies
                    .asList()
                    .map<DropdownMenuItem<Currency>>(
                      (item) => DropdownMenuItem<Currency>(
                        value: item,
                        child: AutoSizeText(
                          "${item?.name} - ${item.type}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                    )
                    .toList(),
                selected: s.currency,
                validate: s.validate,
                error: s.response?.fold(
                  () => null,
                  (_) => _?.fold(
                    (f) => f.errors?.currencyId?.firstOrNull,
                    (_) => null,
                  ),
                ),
                onChanged: c.read<LandlordMergerCubit>().currencyChanged,
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
                initialValue: "${s.amount?.getOrEmpty}",
                cursorColor: Theme.of(c).accentColor,
                keyboardType: TextInputType.number,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.done,
                focusNode: _amountFocus,
                decoration: const InputDecoration(
                  labelText: "Amount",
                  prefixIcon: const Icon(Icons.money),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.deny(' '),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                autovalidateMode: s.validate
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                onChanged: c.read<LandlordMergerCubit>().amountChanged,
                validator: (value) =>
                    c.read<LandlordMergerCubit>().state.amount.value.fold(
                          (error) => error.message,
                          (r) => s.response?.fold(
                            () => null,
                            (_) => _?.fold(
                              (f) => f.errors?.amount?.firstOrNull,
                              (_) => null,
                            ),
                          ),
                        ),
                onFieldSubmitted: (_) => FocusScope.of(c).unfocus(),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.2),
            //
            Hero(
              tag:
                  "${Constants.kAssignTenantToPropHeroTag}-${property?.id?.value}",
              child: BlocBuilder<LandlordMergerCubit, LandlordMergerState>(
                builder: (c, s) => AppElevatedButton(
                  text: "Pair Tenant",
                  disabled: s.isLoading,
                  onPressed: c.read<LandlordMergerCubit>().pairTenant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
