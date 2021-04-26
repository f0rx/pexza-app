import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';
import 'package:pexza/features/home/landlord/domain/entities/fields/index.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';

part 'landlord_property_state.dart';
part 'landlord_property_cubit.freezed.dart';

@injectable
class LandlordPropertyCubit extends Cubit<LandlordPropertyState> {
  final PropertyRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  LandlordPropertyCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(LandlordPropertyState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  Future<void> fetchAll() async {
    toggleLoading();

    try {
      final props = await _repository.all();

      emit(state.copyWith(
        optionOfFailure: none(),
        properties: props.data.map((e) => e.domain).toImmutableList(),
      ));
    } on DioError catch (e) {
      _handleDioFailures(e);
    }

    toggleLoading();
  }

  Future<void> get(UniqueId<int> id) async {
    toggleLoading();

    try {
      final property = await _repository.show(id.value);

      emit(state.copyWith(
        optionOfFailure: none(),
        property: property.domain,
      ));
    } on DioError catch (e) {
      _handleDioFailures(e);
    }

    toggleLoading();
  }

  void _handleDioFailures(DioError ex) {
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.poorInternetConnection()),
        ));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.receiveTimeout()),
        ));
        break;
      case DioErrorType.RESPONSE:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.fromJson(
            ex.response.data,
          )),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.timeout()),
        ));
        break;
      case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
          optionOfFailure: some(LandlordFailure.unknown()),
        ));
    }
  }
}
