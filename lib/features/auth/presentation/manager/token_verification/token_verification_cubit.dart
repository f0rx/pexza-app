import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/core/domain/failures/base.dart';
import 'package:pexza/features/home/landlord/domain/failure/landlord__failure.dart';
import 'package:pexza/features/home/landlord/domain/success/landlord__success.dart';
import 'package:pexza/features/home/tenant/data/repositories/assignment/tenant_assignment_repository.dart';

part 'token_verification_state.dart';
part 'token_verification_cubit.freezed.dart';

@injectable
class TokenVerificationCubit extends Cubit<TokenVerificationState> {
  final TenantAssignmentRepository _repository;
  final Connectivity _connectivity;
  final DataConnectionChecker _dataConnectionChecker;

  TokenVerificationCubit(
    this._repository,
    this._connectivity,
    this._dataConnectionChecker,
  ) : super(TokenVerificationState.initial());

  void toggleLoading([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void init([Assignment assignment]) async => emit(state.copyWith(
        assignment: assignment ?? state.assignment,
      ));

  Future<void> checkInternetAndConnectivity([bool shouldThrow = false]) async {
    final isConnected =
        (await _connectivity.checkConnectivity()) != ConnectivityResult.none;

    if (!isConnected) {
      if (shouldThrow) throw LandlordFailure.noInternetConnection();
      emit(state.copyWith(
        response: some(left(LandlordFailure.noInternetConnection())),
      ));
    }

    final hasInternet = await _dataConnectionChecker.hasConnection;

    if (isConnected && !hasInternet) {
      if (shouldThrow) throw LandlordFailure.poorInternetConnection();
      emit(state.copyWith(
        response: some(left(LandlordFailure.poorInternetConnection())),
      ));
    }
  }

  void enableResendButton(Assignment assignment) {}

  void resendPairingCode(Assignment assignment) {}

  void acceptAssignment() async {
    toggleLoading();

    // Validate form errors
    emit(state.copyWith(validate: true));

    try {
      if (state.code.isValid) {
        // Check if user is connected & has good internet
        await checkInternetAndConnectivity(true);

        final _result = await _repository.accept(
          state.assignment?.id?.value,
          AssignmentDTOData.fromDomain(state.assignment.copyWith(
            pairingCode: BasicTextField(state.code.getOrEmpty),
          )),
        );

        emit(state.copyWith(
          assignment: _result?.domain(),
          response: some(right(LandlordSuccess(
            message: "You accepted "
                "${state.assignment.apartment.name.getOrEmpty}!",
          ))),
        ));
      }
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  void rejectAssignment() async {
    toggleLoading();

    try {
      // Check if user is connected & has good internet
      await checkInternetAndConnectivity(true);

      final _result = await _repository.reject(state.assignment?.id?.value);

      emit(state.copyWith(
        assignment: _result?.domain(),
        response: some(right(LandlordSuccess(
          message: "Ok! The assignment was rejected.",
        ))),
      ));
    } on LandlordFailure catch (e) {
      emit(state.copyWith(
        response: some(left(e)),
      ));
    } catch (_) {
      if (_.runtimeType is DioError) _handleDioFailures(_);
    }

    toggleLoading();
  }

  void cancelAssignment() {}

  void onSubmitted(String value) => emit(state.copyWith(
        code: OTPCode(value),
      ));

  void onChanged(String value) => emit(state.copyWith(
        code: OTPCode(value),
      ));

  void _handleDioFailures(DioError ex) {
    switch (ex?.type) {
      case DioErrorType.CONNECT_TIMEOUT:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.poorInternetConnection()),
        )));
        break;
      case DioErrorType.RECEIVE_TIMEOUT:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.receiveTimeout()),
        )));
        break;
      case DioErrorType.RESPONSE:
        emit(state.copyWith(
          response: some(left(LandlordFailure.fromJson(
            ex.response.data,
          ))),
        ));
        break;
      case DioErrorType.SEND_TIMEOUT:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.timeout()),
        )));
        break;
      case DioErrorType.DEFAULT:
      default:
        emit(state.copyWith(
            response: some(
          left(LandlordFailure.unknown()),
        )));
    }
  }
}
