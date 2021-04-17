import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:pexza/features/auth/domain/domain.dart';
import 'package:pexza/features/auth/presentation/manager/manager.dart';
import 'package:pexza/features/core/core.dart';
import 'package:pexza/features/auth/data/models/auth_failure.dart';
import 'package:pexza/manager/locator/locator.dart';
import 'package:pexza/utils/utils.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthFacade _auth;

  AuthCubit(this._auth) : super(AuthState.initial());

  void init(User user) {
    emit(state.copyWith(
      firstName: user.firstName ?? state.firstName,
      lastName: user.lastName ?? state.lastName,
      emailAddress: user.email ?? state.emailAddress,
      phone: user.phone ?? state.phone,
      gender: user.gender ?? state.gender,
      dateOfBirth: user.dateOfBirth ?? state.dateOfBirth,
      password: user.password ?? state.password,
    ));
  }

  void toggleLoadingIndicator([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

  void toggleGlow() {
    print(state.dateOfBirth.getOrNull.isNull);
    emit(state.copyWith(
      shouldGlow: state.dateOfBirth.getOrNull.isNull,
    ));
  }

  void firstNameChanged(String value) => emit(state.copyWith(
        firstName: DisplayName(value),
      ));

  void lastNameChanged(String value) => emit(state.copyWith(
        lastName: DisplayName(value),
      ));

  void emailAddressChanged(String value) => emit(state.copyWith(
        emailAddress: EmailAddress(value),
      ));

  void passwordChanged(String value, {FIELD_VALIDATION mode}) =>
      emit(state.copyWith(
        password: Password(value, mode: mode),
      ));

  void passwordConfirmationChanged(String value) => emit(state.copyWith(
        passwordConfirmation: Password(value),
      ));

  void dateOfBirthChanged(DateTime value) => emit(state.copyWith(
        dateOfBirth: DateTimeField(value),
      ));

  void genderChanged(GenderType value) => emit(state.copyWith(
        gender: Gender(value),
      ));

  void phoneNumberChanged(String value, {FIELD_VALIDATION mode}) =>
      emit(state.copyWith(
        phone: Phone(
          value,
          state.region,
          mode: mode,
        ),
      ));

  void onTokenChanged(String value) => emit(state.copyWith(
        emailToken: EmailTokenField(value),
      ));

  void onTokenSubmitted(String value) async {
    // Update the state
    emit(state.copyWith(
      emailToken: EmailTokenField(value),
    ));

    // Perform token submit action
    await verifyEmailAddress();
  }

  void countryChanged(Country value) => emit(state.copyWith(
        region: value,
      ));

  void togglePasswordVisibility() => emit(state.copyWith(
        passwordHidden: !state.passwordHidden,
      ));

  void createAccount() async {
    toggleLoadingIndicator();

    DisplayName firstName = state.firstName;
    DisplayName lastName = state.lastName;
    EmailAddress emailAddress = state.emailAddress;
    Phone phone = state.phone;
    Gender gender = state.gender;
    DateTimeField dateOfBirth = state.dateOfBirth;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    // Enable form validation
    emit(state.copyWith(
      validate: true,
      authStatus: none(),
    ));

    if (firstName.isValid &&
        lastName.isValid &&
        emailAddress.isValid &&
        phone.isValid &&
        gender.isValid &&
        dateOfBirth.isValid &&
        password.isValid) {
      // Attempt Authentication
      failureOrUnit = await _auth.createAccount(
        role: getIt<RoleCubit>().role,
        firstName: firstName,
        lastName: lastName,
        emailAddress: emailAddress,
        phone: phone,
        gender: gender,
        dateOfBirth: dateOfBirth,
        password: password,
      );

      // emit auth_status whether authentication fails or not
      emit(state.copyWith(
        authStatus: optionOf(failureOrUnit),
      ));
    }

    toggleLoadingIndicator();
  }

  void login() async {
    toggleLoadingIndicator();

    EmailAddress email = state.emailAddress;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    // Start form validation
    emit(state.copyWith(
      validate: true,
      authStatus: none(),
    ));

    if (email.isValid && password.isValid) {
      // Attempt Authentication
      failureOrUnit = await _auth.login(
        email: email,
        password: password,
      );

      // emit auth_status whether authentication fails or not
      emit(state.copyWith(
        authStatus: optionOf(failureOrUnit),
      ));
    }

    toggleLoadingIndicator();
  }

  Future<void> verifyEmailAddress() async {
    toggleLoadingIndicator();

    EmailAddress emailAddress = state.emailAddress;
    EmailTokenField token = state.emailToken;
    Either<AuthFailure, Unit> failureOrUnit;

    emit(state.copyWith(
      validate: true,
      authStatus: none(),
    ));
    print("PrRR. Notthing");
    log.w(emailAddress);
    log.w(token);

    if (emailAddress.isValid && token.isValid) {
      print("IS VALID");
      failureOrUnit = await _auth.verifyEmailAddress(
        email: emailAddress,
        token: token,
      );

      // emit auth_status whether authentication fails or not
      emit(state.copyWith(
        authStatus: optionOf(failureOrUnit),
      ));
    }
    print("Return all");

    toggleLoadingIndicator();
  }
}
