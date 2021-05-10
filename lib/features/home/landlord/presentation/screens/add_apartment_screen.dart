import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/features/core/data/data.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/widgets.dart';

class LandlordAddApartmentScreen extends StatelessWidget with AutoRouteWrapper {
  final LandlordProperty property;
  final LandlordApartment apartment;
  final FocusNode _nameFocus = FocusNode();

  LandlordAddApartmentScreen({
    Key key,
    @required this.property,
    this.apartment,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordApartmentCubit>()..init(apartment, property),
      child: BlocConsumer<LandlordApartmentCubit, LandlordApartmentState>(
        listenWhen: (p, c) =>
            p.response.getOrElse(() => null) !=
            c.response.getOrElse(() => null),
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
              (r) => r.popRoute ? (_) => navigator.pop() : null,
            ),
          ),
        ),
        builder: (c, state) => PortalEntry(
          visible: c.watch<LandlordApartmentCubit>().state.isLoading,
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
        title: "Add Apartment to ${property?.name?.getOrEmpty}",
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
            BlocBuilder<LandlordApartmentCubit, LandlordApartmentState>(
              builder: (c, s) => TextFormField(
                maxLines: 1,
                enableSuggestions: true,
                autocorrect: false,
                cursorColor: Theme.of(context).accentColor,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                textInputAction: TextInputAction.done,
                focusNode: _nameFocus,
                decoration: const InputDecoration(
                  labelText: "Apartment Name",
                  hintText: "Room 4",
                ),
                autofillHints: [],
                autovalidateMode:
                    c.watch<LandlordApartmentCubit>().state.validate
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                onChanged:
                    c.watch<LandlordApartmentCubit>().apartmentNameChanged,
                validator: (value) =>
                    c.read<LandlordApartmentCubit>().state.name.value.fold(
                          (error) => error.message,
                          (r) => s.response.fold(
                            () => null,
                            (_) => _.fold(
                              (f) => f.errors?.name?.firstOrNull,
                              (_) => null,
                            ),
                          ),
                        ),
                onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
              ),
            ),
            //
            VerticalSpace(height: App.shortest * 0.1),
            //
            Hero(
              tag:
                  "${Constants.kAddApartmentToPropHeroTag}-${property?.id?.value}",
              child: Visibility(
                visible: apartment.isNull,
                replacement: AppElevatedButton(
                  text: "Save",
                  onPressed: () => context
                      .read<LandlordApartmentCubit>()
                      .update(apartment: apartment),
                ),
                child: AppElevatedButton(
                  text: "Add Apartment",
                  onPressed: context.read<LandlordApartmentCubit>().create,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
