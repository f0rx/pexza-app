part of 'landlord_property_cubit.dart';

@freezed
@immutable
abstract class LandlordPropertyState implements _$LandlordPropertyState {
  const LandlordPropertyState._();

  const factory LandlordPropertyState({
    @Default(false) bool isLoading,
    @Default(false) bool validate,
    @required LandlordField name,
    @required LandlordPropertyTypeField propertyType,
    @required LandlordField houseType,
    @required LandlordField street,
    @required LandlordField town,
    @required LandlordField state,
    @Default(KtList.empty()) KtList<LandlordProperty> properties,
    @Default(KtList.empty()) KtList<LandlordApartment> apartments,
    @nullable LandlordProperty property,
    @Default(const None()) Option<LandlordFailure> optionOfFailure,
  }) = _LandlordPropertyState;

  factory LandlordPropertyState.initial() => LandlordPropertyState(
        name: LandlordField(""),
        propertyType: LandlordPropertyTypeField.DEFAULT,
        houseType: LandlordField(""),
        street: LandlordField(""),
        town: LandlordField(""),
        state: LandlordField(""),
      );
}
