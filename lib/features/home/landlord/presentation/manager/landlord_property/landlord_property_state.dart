part of 'landlord_property_cubit.dart';

@freezed
@immutable
abstract class LandlordPropertyState implements _$LandlordPropertyState {
  const LandlordPropertyState._();

  const factory LandlordPropertyState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required LandlordField<String> name,
    @required LandlordPropertyTypeField propertyType,
    @required LandlordField<String> houseType,
    @required LandlordField<String> street,
    @required LandlordField<String> town,
    @nullable ProvinceState selectedState,
    @Default(KtList.empty()) KtList<ProvinceState> states,
    @Default(KtList.empty()) KtList<LandlordProperty> properties,
    @Default(KtList.empty()) KtList<LandlordApartment> apartments,
    @nullable LandlordProperty property,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _LandlordPropertyState;

  factory LandlordPropertyState.initial() => LandlordPropertyState(
        name: LandlordField(""),
        propertyType: LandlordPropertyTypeField.DEFAULT,
        houseType: LandlordField(""),
        street: LandlordField(""),
        town: LandlordField(""),
      );
}
