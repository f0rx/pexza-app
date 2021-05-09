import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/presentation/manager/index.dart';

class LandlordApartmentDetailScreen extends StatelessWidget
    with AutoRouteWrapper {
  final LandlordApartment landlordApartment;

  const LandlordApartmentDetailScreen({
    Key key,
    this.landlordApartment,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LandlordApartmentCubit>()
        ..get(
          apartment: landlordApartment,
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
