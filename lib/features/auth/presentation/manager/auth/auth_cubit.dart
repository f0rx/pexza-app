import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/core/core.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.initial());

  void displayNameChanged(String value) =>
      emit(state.copyWith(displayName: DisplayName(value)));

  void emailAddressChanged(String value) =>
      emit(state.copyWith(emailAddress: EmailAddress(value)));

  void passwordChanged(String value) =>
      emit(state.copyWith(password: Password(value)));

  void passwordConfirmationChanged(String value) =>
      emit(state.copyWith(passwordConfirmation: Password(value)));

  void genderChanged(GenderType value) =>
      emit(state.copyWith(gender: Gender(value)));

  void phoneNumberChanged(String value, {FIELD_VALIDATION mode}) =>
      emit(state.copyWith(
        phone: Phone(
          value,
          state.region,
          mode: mode,
        ),
      ));

  void countryChanged(Country value) => emit(state.copyWith(region: value));

  void togglePasswordVisibility() => emit(state.copyWith(
        passwordHidden: !state.passwordHidden,
      ));
}
