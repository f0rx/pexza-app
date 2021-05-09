part of 'landlord_property_cubit.dart';

@freezed
@immutable
abstract class LandlordPropertyState implements _$LandlordPropertyState {
  const LandlordPropertyState._();

  const factory LandlordPropertyState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required BasicTextField<String> name,
    @required LandlordPropertyTypeField propertyType,
    @required BasicTextField<String> houseType,
    @required BasicTextField<String> street,
    @required BasicTextField<String> town,
    @nullable ProvinceState selectedState,
    @Default(KtList.empty()) KtList<ProvinceState> states,
    @Default(KtList.empty()) KtList<LandlordProperty> properties,
    @Default(KtList.empty()) KtList<LandlordApartment> apartments,
    @nullable LandlordProperty property,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _LandlordPropertyState;

  factory LandlordPropertyState.initial() => LandlordPropertyState(
        name: BasicTextField(""),
        propertyType: LandlordPropertyTypeField.DEFAULT,
        houseType: BasicTextField(""),
        street: BasicTextField(""),
        town: BasicTextField(""),
      );
}
