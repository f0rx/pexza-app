import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pexza/utils/utils.dart';
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
        listener: (c, s) {
          c.read<LandlordApartmentCubit>().state.optionOfFailure.fold(
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
      appBar: Toolbar(title: "Add Apartment to ${property?.name?.getOrEmpty}"),
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
                          (r) => s.optionOfFailure.fold(
                            () => null,
                            (f) => !f.errors.isNull
                                ? f.errors?.name?.firstOrNull
                                : null,
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
