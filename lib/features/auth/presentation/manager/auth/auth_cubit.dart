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
      firstName: user.firstName,
      lastName: user.lastName,
      emailAddress: user.email,
      phone: user.phone,
      gender: user.gender,
      dateOfBirth: !user.age.isNullOrBlank
          ? DateTimeField(
              DateTime(
                DateTime.now().year - int.parse(user.age.getOrNull),
              ),
            )
          : DateTimeField.DEFAULT,
      password: user.password,
    ));
  }

  void toggleLoadingIndicator([isLoading]) => emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
      ));

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
    AgeField age = state.dateOfBirth.isValid
        ? AgeField(App.calculateAge(state.dateOfBirth.getOrNull).toString())
        : AgeField('');
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
        age.isValid &&
        password.isValid) {
      // Attempt Authentication
      failureOrUnit = await _auth.createAccount(
        role: getIt<RoleCubit>().role,
        firstName: firstName,
        lastName: lastName,
        emailAddress: emailAddress,
        phone: phone,
        gender: gender,
        age: age,
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

    Phone phone = state.phone;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    // Start form  validation
    emit(state.copyWith(
      validate: true,
      authStatus: none(),
    ));

    if (phone.isValid && password.isValid) {
      // Attempt Authentication
      failureOrUnit = await _auth.login(
        role: getIt<RoleCubit>().role,
        phone: phone,
        password: password,
      );

      // emit auth_status whether authentication fails or not
      emit(state.copyWith(
        authStatus: optionOf(failureOrUnit),
      ));
    }

    toggleLoadingIndicator();
  }
}
