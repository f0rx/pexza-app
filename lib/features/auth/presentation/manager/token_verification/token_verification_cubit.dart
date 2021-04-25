import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pexza/features/auth/data/models/auth_response/auth_response.dart';
import 'package:pexza/features/core/core.dart';

part 'token_verification_state.dart';
part 'token_verification_cubit.freezed.dart';

@injectable
class TokenVerificationCubit extends Cubit<TokenVerificationState> {
  TokenVerificationCubit() : super(TokenVerificationState.initial());

  // void signInWithPhoneNumber([Phone phone, int token]) {}

  // void codeSentToPhone(Phone phone, String verificationId, {int token}) {}

  // void verificationComplete() {}

  // void phoneVerificationFailure(String message, [String code]) {}

  // void verifyPhoneWithCredential(String verificationId, String code) {}

  // void enableResendButton() {}

  void onCompleted(String value) {}
  void onSubmitted(String value) {}
  void onChanged(String value) {}
}
