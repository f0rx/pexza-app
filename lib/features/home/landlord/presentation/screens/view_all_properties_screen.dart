import 'package:auto_size_text/auto_size_text.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';
import 'package:pexza/features/home/landlord/presentation/widgets/property_listing.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';
import 'package:pexza/widgets/toolbar.dart';

class ViewAllPropertiesScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordPropertyCubit>()..fetchAll(),
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
      appBar: Toolbar(
        title: "My Properties",
        leadingIcon: Icon(Icons.close),
      ),
      body: const LandlordPropertyListing(asGridView: true),
    );
  }
}
