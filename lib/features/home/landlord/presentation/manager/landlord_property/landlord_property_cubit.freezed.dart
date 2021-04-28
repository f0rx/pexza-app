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
      @required LandlordField name,
      @required LandlordPropertyTypeField propertyType,
      @required LandlordField houseType,
      @required LandlordField street,
      @required LandlordField town,
      @required LandlordField state,
      KtList<LandlordProperty> properties = const KtList.empty(),
      KtList<LandlordApartment> apartments = const KtList.empty(),
      @nullable LandlordProperty property,
      Option<LandlordFailure> optionOfFailure = const None()}) {
    return _LandlordPropertyState(
      isLoading: isLoading,
      validate: validate,
      name: name,
      propertyType: propertyType,
      houseType: houseType,
      street: street,
      town: town,
      state: state,
      properties: properties,
      apartments: apartments,
      property: property,
      optionOfFailure: optionOfFailure,
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
  LandlordField get name;
  LandlordPropertyTypeField get propertyType;
  LandlordField get houseType;
  LandlordField get street;
  LandlordField get town;
  LandlordField get state;
  KtList<LandlordProperty> get properties;
  KtList<LandlordApartment> get apartments;
  @nullable
  LandlordProperty get property;
  Option<LandlordFailure> get optionOfFailure;

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
      LandlordField name,
      LandlordPropertyTypeField propertyType,
      LandlordField houseType,
      LandlordField street,
      LandlordField town,
      LandlordField state,
      KtList<LandlordProperty> properties,
      KtList<LandlordApartment> apartments,
      @nullable LandlordProperty property,
      Option<LandlordFailure> optionOfFailure});

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
    Object state = freezed,
    Object properties = freezed,
    Object apartments = freezed,
    Object property = freezed,
    Object optionOfFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      name: name == freezed ? _value.name : name as LandlordField,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as LandlordPropertyTypeField,
      houseType:
          houseType == freezed ? _value.houseType : houseType as LandlordField,
      street: street == freezed ? _value.street : street as LandlordField,
      town: town == freezed ? _value.town : town as LandlordField,
      state: state == freezed ? _value.state : state as LandlordField,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
      optionOfFailure: optionOfFailure == freezed
          ? _value.optionOfFailure
          : optionOfFailure as Option<LandlordFailure>,
    ));
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
      LandlordField name,
      LandlordPropertyTypeField propertyType,
      LandlordField houseType,
      LandlordField street,
      LandlordField town,
      LandlordField state,
      KtList<LandlordProperty> properties,
      KtList<LandlordApartment> apartments,
      @nullable LandlordProperty property,
      Option<LandlordFailure> optionOfFailure});

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
    Object state = freezed,
    Object properties = freezed,
    Object apartments = freezed,
    Object property = freezed,
    Object optionOfFailure = freezed,
  }) {
    return _then(_LandlordPropertyState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      name: name == freezed ? _value.name : name as LandlordField,
      propertyType: propertyType == freezed
          ? _value.propertyType
          : propertyType as LandlordPropertyTypeField,
      houseType:
          houseType == freezed ? _value.houseType : houseType as LandlordField,
      street: street == freezed ? _value.street : street as LandlordField,
      town: town == freezed ? _value.town : town as LandlordField,
      state: state == freezed ? _value.state : state as LandlordField,
      properties: properties == freezed
          ? _value.properties
          : properties as KtList<LandlordProperty>,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      property:
          property == freezed ? _value.property : property as LandlordProperty,
      optionOfFailure: optionOfFailure == freezed
          ? _value.optionOfFailure
          : optionOfFailure as Option<LandlordFailure>,
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
      @required this.state,
      this.properties = const KtList.empty(),
      this.apartments = const KtList.empty(),
      @nullable this.property,
      this.optionOfFailure = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(name != null),
        assert(propertyType != null),
        assert(houseType != null),
        assert(street != null),
        assert(town != null),
        assert(state != null),
        assert(properties != null),
        assert(apartments != null),
        assert(optionOfFailure != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final LandlordField name;
  @override
  final LandlordPropertyTypeField propertyType;
  @override
  final LandlordField houseType;
  @override
  final LandlordField street;
  @override
  final LandlordField town;
  @override
  final LandlordField state;
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
  final Option<LandlordFailure> optionOfFailure;

  @override
  String toString() {
    return 'LandlordPropertyState(isLoading: $isLoading, validate: $validate, name: $name, propertyType: $propertyType, houseType: $houseType, street: $street, town: $town, state: $state, properties: $properties, apartments: $apartments, property: $property, optionOfFailure: $optionOfFailure)';
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
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.properties, properties) ||
                const DeepCollectionEquality()
                    .equals(other.properties, properties)) &&
            (identical(other.apartments, apartments) ||
                const DeepCollectionEquality()
                    .equals(other.apartments, apartments)) &&
            (identical(other.property, property) ||
                const DeepCollectionEquality()
                    .equals(other.property, property)) &&
            (identical(other.optionOfFailure, optionOfFailure) ||
                const DeepCollectionEquality()
                    .equals(other.optionOfFailure, optionOfFailure)));
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
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(properties) ^
      const DeepCollectionEquality().hash(apartments) ^
      const DeepCollectionEquality().hash(property) ^
      const DeepCollectionEquality().hash(optionOfFailure);

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
      @required LandlordField name,
      @required LandlordPropertyTypeField propertyType,
      @required LandlordField houseType,
      @required LandlordField street,
      @required LandlordField town,
      @required LandlordField state,
      KtList<LandlordProperty> properties,
      KtList<LandlordApartment> apartments,
      @nullable LandlordProperty property,
      Option<LandlordFailure> optionOfFailure}) = _$_LandlordPropertyState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  LandlordField get name;
  @override
  LandlordPropertyTypeField get propertyType;
  @override
  LandlordField get houseType;
  @override
  LandlordField get street;
  @override
  LandlordField get town;
  @override
  LandlordField get state;
  @override
  KtList<LandlordProperty> get properties;
  @override
  KtList<LandlordApartment> get apartments;
  @override
  @nullable
  LandlordProperty get property;
  @override
  Option<LandlordFailure> get optionOfFailure;
  @override
  @JsonKey(ignore: true)
  _$LandlordPropertyStateCopyWith<_LandlordPropertyState> get copyWith;
}
