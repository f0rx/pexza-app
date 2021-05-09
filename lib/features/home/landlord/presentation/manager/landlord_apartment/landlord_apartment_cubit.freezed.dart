// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of landlord_apartment_cubit.dart;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordApartmentStateTearOff {
  const _$LandlordApartmentStateTearOff();

// ignore: unused_element
  _LandlordApartmentState call(
      {bool isLoading = false,
      bool validate = false,
      @required BasicTextField<String> name,
      LandlordProperty currentProperty,
      KtList<LandlordApartment> apartments = const KtList.empty(),
      @nullable LandlordApartment apartment,
      Option<Either<Failure, Success>> response = const None()}) {
    return _LandlordApartmentState(
      isLoading: isLoading,
      validate: validate,
      name: name,
      currentProperty: currentProperty,
      apartments: apartments,
      apartment: apartment,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordApartmentState = _$LandlordApartmentStateTearOff();

/// @nodoc
mixin _$LandlordApartmentState {
  bool get isLoading;
  bool get validate;
  BasicTextField<String> get name;
  LandlordProperty get currentProperty;
  KtList<LandlordApartment> get apartments;
  @nullable
  LandlordApartment get apartment;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $LandlordApartmentStateCopyWith<LandlordApartmentState> get copyWith;
}

/// @nodoc
abstract class $LandlordApartmentStateCopyWith<$Res> {
  factory $LandlordApartmentStateCopyWith(LandlordApartmentState value,
          $Res Function(LandlordApartmentState) then) =
      _$LandlordApartmentStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      BasicTextField<String> name,
      LandlordProperty currentProperty,
      KtList<LandlordApartment> apartments,
      @nullable LandlordApartment apartment,
      Option<Either<Failure, Success>> response});

  $LandlordPropertyCopyWith<$Res> get currentProperty;
  $LandlordApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class _$LandlordApartmentStateCopyWithImpl<$Res>
    implements $LandlordApartmentStateCopyWith<$Res> {
  _$LandlordApartmentStateCopyWithImpl(this._value, this._then);

  final LandlordApartmentState _value;
  // ignore: unused_field
  final $Res Function(LandlordApartmentState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object name = freezed,
    Object currentProperty = freezed,
    Object apartments = freezed,
    Object apartment = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
      currentProperty: currentProperty == freezed
          ? _value.currentProperty
          : currentProperty as LandlordProperty,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartment,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }

  @override
  $LandlordPropertyCopyWith<$Res> get currentProperty {
    if (_value.currentProperty == null) {
      return null;
    }
    return $LandlordPropertyCopyWith<$Res>(_value.currentProperty, (value) {
      return _then(_value.copyWith(currentProperty: value));
    });
  }

  @override
  $LandlordApartmentCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $LandlordApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$LandlordApartmentStateCopyWith<$Res>
    implements $LandlordApartmentStateCopyWith<$Res> {
  factory _$LandlordApartmentStateCopyWith(_LandlordApartmentState value,
          $Res Function(_LandlordApartmentState) then) =
      __$LandlordApartmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      BasicTextField<String> name,
      LandlordProperty currentProperty,
      KtList<LandlordApartment> apartments,
      @nullable LandlordApartment apartment,
      Option<Either<Failure, Success>> response});

  @override
  $LandlordPropertyCopyWith<$Res> get currentProperty;
  @override
  $LandlordApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class __$LandlordApartmentStateCopyWithImpl<$Res>
    extends _$LandlordApartmentStateCopyWithImpl<$Res>
    implements _$LandlordApartmentStateCopyWith<$Res> {
  __$LandlordApartmentStateCopyWithImpl(_LandlordApartmentState _value,
      $Res Function(_LandlordApartmentState) _then)
      : super(_value, (v) => _then(v as _LandlordApartmentState));

  @override
  _LandlordApartmentState get _value => super._value as _LandlordApartmentState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object name = freezed,
    Object currentProperty = freezed,
    Object apartments = freezed,
    Object apartment = freezed,
    Object response = freezed,
  }) {
    return _then(_LandlordApartmentState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      name: name == freezed ? _value.name : name as BasicTextField<String>,
      currentProperty: currentProperty == freezed
          ? _value.currentProperty
          : currentProperty as LandlordProperty,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<LandlordApartment>,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as LandlordApartment,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_LandlordApartmentState extends _LandlordApartmentState {
  const _$_LandlordApartmentState(
      {this.isLoading = false,
      this.validate = false,
      @required this.name,
      this.currentProperty,
      this.apartments = const KtList.empty(),
      @nullable this.apartment,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(name != null),
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
  final BasicTextField<String> name;
  @override
  final LandlordProperty currentProperty;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<LandlordApartment> apartments;
  @override
  @nullable
  final LandlordApartment apartment;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'LandlordApartmentState(isLoading: $isLoading, validate: $validate, name: $name, currentProperty: $currentProperty, apartments: $apartments, apartment: $apartment, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordApartmentState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.currentProperty, currentProperty) ||
                const DeepCollectionEquality()
                    .equals(other.currentProperty, currentProperty)) &&
            (identical(other.apartments, apartments) ||
                const DeepCollectionEquality()
                    .equals(other.apartments, apartments)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
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
      const DeepCollectionEquality().hash(currentProperty) ^
      const DeepCollectionEquality().hash(apartments) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$LandlordApartmentStateCopyWith<_LandlordApartmentState> get copyWith =>
      __$LandlordApartmentStateCopyWithImpl<_LandlordApartmentState>(
          this, _$identity);
}

abstract class _LandlordApartmentState extends LandlordApartmentState {
  const _LandlordApartmentState._() : super._();
  const factory _LandlordApartmentState(
      {bool isLoading,
      bool validate,
      @required BasicTextField<String> name,
      LandlordProperty currentProperty,
      KtList<LandlordApartment> apartments,
      @nullable LandlordApartment apartment,
      Option<Either<Failure, Success>> response}) = _$_LandlordApartmentState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  BasicTextField<String> get name;
  @override
  LandlordProperty get currentProperty;
  @override
  KtList<LandlordApartment> get apartments;
  @override
  @nullable
  LandlordApartment get apartment;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$LandlordApartmentStateCopyWith<_LandlordApartmentState> get copyWith;
}
