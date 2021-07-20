part of 'landlord_property_cubit.dart';

@freezed
@immutable
abstract class LandlordPropertyState implements _$LandlordPropertyState {
  static final FocusNode addressFocus = FocusNode();
  static final FocusNode cityFocus = FocusNode();
  static final ScrollController controller = ScrollController();
  static final FocusNode descriptionFocus = FocusNode();
  static final FocusNode nameFocus = FocusNode();

  const factory LandlordPropertyState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingNextPage,
    @Default(false) bool isAtLastPage,
    @Default(false) bool validate,
    @required BasicTextField<String> name,
    @required LandlordPropertyTypeField propertyType,
    @required BasicTextField<String> houseType,
    @required BasicTextField<String> street,
    @required BasicTextField<String> town,
    @nullable ProvinceState selectedState,
    @nullable User selectedTenant,
    @nullable LandlordPropertyDTOList dtoList,
    @Default(KtList.empty()) KtList<ProvinceState> states,
    @Default(KtList.empty()) KtList<User> tenants,
    @Default(KtList.empty()) KtList<LandlordProperty> properties,
    @Default(KtList.empty()) KtList<LandlordApartment> apartments,
    @nullable LandlordProperty property,
    @Default(const None()) Option<Either<Failure, Success>> response,
  }) = _LandlordPropertyState;

  const LandlordPropertyState._();

  factory LandlordPropertyState.initial() => LandlordPropertyState(
        name: BasicTextField(""),
        propertyType: LandlordPropertyTypeField.DEFAULT,
        houseType: BasicTextField(""),
        street: BasicTextField(""),
        town: BasicTextField(""),
      );
}
