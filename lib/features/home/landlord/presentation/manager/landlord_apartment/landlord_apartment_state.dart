part of 'landlord_apartment_cubit.dart';

@freezed
@immutable
abstract class LandlordApartmentState implements _$LandlordApartmentState {
  const LandlordApartmentState._();

  const factory LandlordApartmentState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required LandlordField<String> name,
    LandlordProperty currentProperty,
    @Default(KtList.empty()) KtList<LandlordApartment> apartments,
    @nullable LandlordApartment apartment,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _LandlordApartmentState;

  factory LandlordApartmentState.initial() => LandlordApartmentState(
        name: LandlordField(""),
      );
}
