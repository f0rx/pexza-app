import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart' hide nullable;
import 'package:pexza/features/core/data/models/failure/general_failure.dart';
import 'package:pexza/features/core/data/repositories/transaction_history/transaction_history_repository.dart';
import 'package:pexza/features/core/domain/failures/failure.dart';
import 'package:pexza/features/home/landlord/data/repositories/property_repository/property_repository.dart';
import 'package:pexza/features/home/landlord/domain/entities/entities.dart';

part 'transaction_history_state.dart';
part 'transaction_history_cubit.freezed.dart';

@injectable
class TransactionHistoryCubit extends Cubit<TransactionHistoryState> {
  final TransactionHistoryRepository _historyRepository;
  final PropertyRepository _propertyRepository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  TransactionHistoryCubit(
    this._historyRepository,
    this._propertyRepository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(TransactionHistoryState.initial());

  void propertyChanged(LandlordProperty prop) =>
      emit(state.copyWith(currentProperty: prop));

  void changePropertyAndFetch(LandlordProperty property) {
    final prevSelection = state.currentProperty;

    propertyChanged(property);

    // Fetch rent history
    if (prevSelection != state.currentProperty) fetchRentHistory();
  }

  Future<void> _checkInternetAndConnectivity([bool shouldThrow = false]) async {
    final isConnected =
        (await _connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected) {
      if (shouldThrow) throw GeneralFailure.noInternetConnection();
      emit(state.copyWith(
        response: some(left(GeneralFailure.noInternetConnection())),
      ));
    }

    final hasInternet = await _dataConnectionChecker.hasConnection;

    if (isConnected && !hasInternet) {
      if (shouldThrow) throw GeneralFailure.poorInternetConnection();
      emit(state.copyWith(
        response: some(left(GeneralFailure.poorInternetConnection())),
      ));
    }
  }

  Future<void> fetchProperties([bool selectFirst = false]) async {
    emit(state.copyWith(isLoadingProperties: true));

    try {
      await _checkInternetAndConnectivity();

      final props = await _propertyRepository.all();

      emit(state.copyWith(properties: props.domain, response: none()));

      if (selectFirst) propertyChanged(state.properties?.firstOrNull());
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    emit(state.copyWith(isLoadingProperties: false));
  }

  void fetchWithdrawalHistory() async {
    emit(state.copyWith(isLoadingWithdrawalHistory: true));

    try {
      await _checkInternetAndConnectivity();

      final _result = await _historyRepository.landlordWithdrawalHistory();

      emit(state.copyWith(withdrawalHistory: _result.domain, response: none()));
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    emit(state.copyWith(isLoadingWithdrawalHistory: false));
  }

  void fetchRentHistory() async {
    emit(state.copyWith(
      isLoadingRentHistory: true,
      propertyRentHistory: KtList.empty(),
    ));

    try {
      await _checkInternetAndConnectivity();

      final _result = await _historyRepository
          .landlordPropertyRentHistory(state.currentProperty?.id?.value);

      emit(state.copyWith(
        propertyRentHistory: _result.domain,
        response: none(),
      ));
    } on Failure catch (e) {
      emit(state.copyWith(response: some(left(e))));
    } catch (_) {
      if (_.runtimeType is DioError || _.runtimeType == DioError)
        _handleDioFailures(_);
    }

    emit(state.copyWith(isLoadingRentHistory: false));
  }

  void _handleDioFailures(DioError ex) {
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
          response: some(left(
            GeneralFailure.poorInternetConnection(),
          )),
        ));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
          response: some(left(
            GeneralFailure.receiveTimeout(),
          )),
        ));
        break;
      case DioErrorType.RESPONSE:
        emit(state.copyWith(
          response: some(left(GeneralFailure.fromJson(
            ex.response.data,
          ))),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(
          response: some(left(
            GeneralFailure.timeout(),
          )),
        ));
        break;
      default:
        emit(state.copyWith(
          response: some(left(
            GeneralFailure.unknown(),
          )),
        ));
    }
  }
}
