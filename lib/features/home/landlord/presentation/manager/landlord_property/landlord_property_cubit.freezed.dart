// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_property_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordPropertyStateTearOff {
  const _$LandlordPropertyStateTearOff();

// ignore: unused_element
  _LandlordPropertyState call(
      {bool isLoading = false,
      bool validate = false,
      @required LandlordField<String> name,
      @required LandlordPropertyTypeField propertyType,
      @required LandlordField<String> houseType,
      @required LandlordField<String> street,
      @required LandlordField<String> town,
      @nullable ProvinceState selectedState,
      KtList<ProvinceState> states = const KtList.empty(),
      KtList<LandlordProperty> properties = const KtList.empty(),
      KtList<LandlordApartment> apartments = const KtList.empty(),
      @nullable LandlordProperty property,
      Option<Either<Failure, Success>> response = const None()}) {
    return _LandlordPropertyState(
      isLoading: isLoading,
      validate: validate,
      name: name,
      propertyType: propertyType,
      houseType: houseType,
      street: street,
      town: town,
      selectedState: selectedState,
      states: states,
      properties: properties,
      apartments: apartments,
      property: property,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordPropertyState = _$LandlordPropertyStateTearOff();

/// @nodoc
mixin _$LandlordPropertyState {
  bool get isLoading;
  bool get validate;
  LandlordField<String> get name;
  LandlordPropertyTypeField get propertyType;
  LandlordField<String> get houseType;
  LandlordField<String> get street;
  LandlordField<String> get town;
  @nullable
  ProvinceState get selectedState;
  KtList<ProvinceState> get states;
  KtList<LandlordProperty> get properties;
  KtList<LandlordApartment> get apartments;
  @nullable
  LandlordProperty get property;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $LandlordPropertyStateCopyWith<LandlordPropertyState> get copyWith;
}

/// @nodoc
abstract class $LandlordPropertyStateCopyWith<$Res> {
  factory $LandlordPropertyStateCopyWith(LandlordPropertyState value,
          $Res Function(LandlordPropertyState) then) =
      _$LandlordPropertyStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      LandlordField<String> name,
      LandlordPropertyTypeField propertyType,
      LandlordField<String> houseType,
      LandlordField<String> street,
      LandlordField<String> town,
      @nullable ProvinceState selectedState,
      KtList<ProvinceState> states,
      KtList<LandlordProperty> properties,
      KtList<LandlordApartment> apartments,
      @nullable LandlordProperty property,
      Option<Either<Failure, Success>> response});

  $ProvinceStateCopyWith<$Res> get selectedState;
  $LandlordPropertyCopyWith<$Res> get property;
}

/// @nodoc
class _$LandlordPropertyStateCopyWithImpl<$Res>
    implements $LandlordPropertyStateCopyWith<$Res> {
  _$LandlordPropertyStateCopyWithImpl(this._value, this._then);

  final LandlordPropertyState _value;
  // ignore: unused_field
  final $Res Function(LandlordPropertyState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object name = freezed,
    Object propertyType = freezed,
    Object houseType = freezed,
    Object street = freezed,
    Object town = freezed,
    Object selectedState = freezed,
    Object states = freezed,
    Object properties = freezed,
    Object apartments = freezed,
    Object property = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      name: name == freezed ? _value.name : name as LandlordField<String>,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as LandlordPropertyTypeField,
      houseType: houseType == freezed
          ? _value.houseType
          : houseType as LandlordField<String>,
      street:
          street == freezed ? _value.street : street as LandlordField<String>,
      town: town == freezed ? _value.town : town as LandlordField<String>,
      selectedState: selectedState == freezed
          ? _value.selectedState
          : selectedState as ProvinceState,
      states:
          states == freezed ? _value.states : states as KtList<ProvinceState>,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }

  @override
  $ProvinceStateCopyWith<$Res> get selectedState {
    if (_value.selectedState == null) {
      return null;
    }
    return $ProvinceStateCopyWith<$Res>(_value.selectedState, (value) {
      return _then(_value.copyWith(selectedState: value));
    });
  }

  @override
  $LandlordPropertyCopyWith<$Res> get property {
    if (_value.property == null) {
      return null;
    }
    return $LandlordPropertyCopyWith<$Res>(_value.property, (value) {
      return _then(_value.copyWith(property: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordPropertyStateCopyWith<$Res>
    implements $LandlordPropertyStateCopyWith<$Res> {
  factory _$LandlordPropertyStateCopyWith(_LandlordPropertyState value,
          $Res Function(_LandlordPropertyState) then) =
      __$LandlordPropertyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      LandlordField<String> name,
      LandlordPropertyTypeField propertyType,
      LandlordField<String> houseType,
      LandlordField<String> street,
      LandlordField<String> town,
      @nullable ProvinceState selectedState,
      KtList<ProvinceState> states,
      KtList<LandlordProperty> properties,
      KtList<LandlordApartment> apartments,
      @nullable LandlordProperty property,
      Option<Either<Failure, Success>> response});

  @override
  $ProvinceStateCopyWith<$Res> get selectedState;
  @override
  $LandlordPropertyCopyWith<$Res> get property;
}

/// @nodoc
class __$LandlordPropertyStateCopyWithImpl<$Res>
    extends _$LandlordPropertyStateCopyWithImpl<$Res>
    implements _$LandlordPropertyStateCopyWith<$Res> {
  __$LandlordPropertyStateCopyWithImpl(_LandlordPropertyState _value,
      $Res Function(_LandlordPropertyState) _then)
      : super(_value, (v) => _then(v as _LandlordPropertyState));

  @override
  _LandlordPropertyState get _value => super._value as _LandlordPropertyState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object name = freezed,
    Object propertyType = freezed,
    Object houseType = freezed,
    Object street = freezed,
    Object town = freezed,
    Object selectedState = freezed,
    Object states = freezed,
    Object properties = freezed,
    Object apartments = freezed,
    Object property = freezed,
    Object response = freezed,
  }) {
    return _then(_LandlordPropertyState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      name: name == freezed ? _value.name : name as LandlordField<String>,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as LandlordPropertyTypeField,
      houseType: houseType == freezed
          ? _value.houseType
          : houseType as LandlordField<String>,
      street:
          street == freezed ? _value.street : street as LandlordField<String>,
      town: town == freezed ? _value.town : town as LandlordField<String>,
      selectedState: selectedState == freezed
          ? _value.selectedState
          : selectedState as ProvinceState,
      states:
          states == freezed ? _value.states : states as KtList<ProvinceState>,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_LandlordPropertyState extends _LandlordPropertyState {
  const _$_LandlordPropertyState(
      {this.isLoading = false,
      this.validate = false,
      @required this.name,
      @required this.propertyType,
      @required this.houseType,
      @required this.street,
      @required this.town,
      @nullable this.selectedState,
      this.states = const KtList.empty(),
      this.properties = const KtList.empty(),
      this.apartments = const KtList.empty(),
      @nullable this.property,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(name != null),
        assert(propertyType != null),
        assert(houseType != null),
        assert(street != null),
        assert(town != null),
        assert(states != null),
        assert(properties != null),
        assert(apartments != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final LandlordField<String> name;
  @override
  final LandlordPropertyTypeField propertyType;
  @override
  final LandlordField<String> houseType;
  @override
  final LandlordField<String> street;
  @override
  final LandlordField<String> town;
  @override
  @nullable
  final ProvinceState selectedState;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<ProvinceState> states;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<LandlordProperty> properties;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<LandlordApartment> apartments;
  @override
  @nullable
  final LandlordProperty property;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'LandlordPropertyState(isLoading: $isLoading, validate: $validate, name: $name, propertyType: $propertyType, houseType: $houseType, street: $street, town: $town, selectedState: $selectedState, states: $states, properties: $properties, apartments: $apartments, property: $property, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordPropertyState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.propertyType, propertyType) ||
                const DeepCollectionEquality()
                    .equals(other.propertyType, propertyType)) &&
            (identical(other.houseType, houseType) ||
                const DeepCollectionEquality()
                    .equals(other.houseType, houseType)) &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.town, town) ||
                const DeepCollectionEquality().equals(other.town, town)) &&
            (identical(other.selectedState, selectedState) ||
                const DeepCollectionEquality()
                    .equals(other.selectedState, selectedState)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.apartments, apartments) ||
                const DeepCollectionEquality()
                    .equals(other.apartments, apartments)) &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(propertyType) ^
      const DeepCollectionEquality().hash(houseType) ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(town) ^
      const DeepCollectionEquality().hash(selectedState) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(apartments) ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$LandlordPropertyStateCopyWith<_LandlordPropertyState> get copyWith =>
      __$LandlordPropertyStateCopyWithImpl<_LandlordPropertyState>(
          this, _$identity);
}

abstract class _LandlordPropertyState extends LandlordPropertyState {
  const _LandlordPropertyState._() : super._();
  const factory _LandlordPropertyState(
      {bool isLoading,
      bool validate,
      @required LandlordField<String> name,
      @required LandlordPropertyTypeField propertyType,
      @required LandlordField<String> houseType,
      @required LandlordField<String> street,
      @required LandlordField<String> town,
      @nullable ProvinceState selectedState,
      KtList<ProvinceState> states,
      KtList<LandlordProperty> properties,
      KtList<LandlordApartment> apartments,
      @nullable LandlordProperty property,
      Option<Either<Failure, Success>> response}) = _$_LandlordPropertyState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  LandlordField<String> get name;
  @override
  LandlordPropertyTypeField get propertyType;
  @override
  LandlordField<String> get houseType;
  @override
  LandlordField<String> get street;
  @override
  LandlordField<String> get town;
  @override
  @nullable
  ProvinceState get selectedState;
  @override
  KtList<ProvinceState> get states;
  @override
  KtList<LandlordProperty> get properties;
  @override
  KtList<LandlordApartment> get apartments;
  @override
  @nullable
  LandlordProperty get property;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$LandlordPropertyStateCopyWith<_LandlordPropertyState> get copyWith;
}
