// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tenant_apartment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TenantApartmentStateTearOff {
  const _$TenantApartmentStateTearOff();

// ignore: unused_element
  _TenantApartmentState call(
      {bool isLoading = false,
      bool validate = false,
      @nullable TenantApartment apartment,
      KtList<TenantApartment> apartments = const KtList.empty(),
      Option<Either<Failure, Success>> response = const None()}) {
    return _TenantApartmentState(
      isLoading: isLoading,
      validate: validate,
      apartment: apartment,
      apartments: apartments,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TenantApartmentState = _$TenantApartmentStateTearOff();

/// @nodoc
mixin _$TenantApartmentState {
  bool get isLoading;
  bool get validate;
  @nullable
  TenantApartment get apartment;
  KtList<TenantApartment> get apartments;
  Option<Either<Failure, Success>> get response;

  @JsonKey(ignore: true)
  $TenantApartmentStateCopyWith<TenantApartmentState> get copyWith;
}

/// @nodoc
abstract class $TenantApartmentStateCopyWith<$Res> {
  factory $TenantApartmentStateCopyWith(TenantApartmentState value,
          $Res Function(TenantApartmentState) then) =
      _$TenantApartmentStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      @nullable TenantApartment apartment,
      KtList<TenantApartment> apartments,
      Option<Either<Failure, Success>> response});

  $TenantApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class _$TenantApartmentStateCopyWithImpl<$Res>
    implements $TenantApartmentStateCopyWith<$Res> {
  _$TenantApartmentStateCopyWithImpl(this._value, this._then);

  final TenantApartmentState _value;
  // ignore: unused_field
  final $Res Function(TenantApartmentState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object apartment = freezed,
    Object apartments = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as TenantApartment,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<TenantApartment>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }

  @override
  $TenantApartmentCopyWith<$Res> get apartment {
    if (_value.apartment == null) {
      return null;
    }
    return $TenantApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc
abstract class _$TenantApartmentStateCopyWith<$Res>
    implements $TenantApartmentStateCopyWith<$Res> {
  factory _$TenantApartmentStateCopyWith(_TenantApartmentState value,
          $Res Function(_TenantApartmentState) then) =
      __$TenantApartmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      @nullable TenantApartment apartment,
      KtList<TenantApartment> apartments,
      Option<Either<Failure, Success>> response});

  @override
  $TenantApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class __$TenantApartmentStateCopyWithImpl<$Res>
    extends _$TenantApartmentStateCopyWithImpl<$Res>
    implements _$TenantApartmentStateCopyWith<$Res> {
  __$TenantApartmentStateCopyWithImpl(
      _TenantApartmentState _value, $Res Function(_TenantApartmentState) _then)
      : super(_value, (v) => _then(v as _TenantApartmentState));

  @override
  _TenantApartmentState get _value => super._value as _TenantApartmentState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object apartment = freezed,
    Object apartments = freezed,
    Object response = freezed,
  }) {
    return _then(_TenantApartmentState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      apartment: apartment == freezed
          ? _value.apartment
          : apartment as TenantApartment,
      apartments: apartments == freezed
          ? _value.apartments
          : apartments as KtList<TenantApartment>,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Success>>,
    ));
  }
}

/// @nodoc
class _$_TenantApartmentState extends _TenantApartmentState {
  const _$_TenantApartmentState(
      {this.isLoading = false,
      this.validate = false,
      @nullable this.apartment,
      this.apartments = const KtList.empty(),
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
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
  @nullable
  final TenantApartment apartment;
  @JsonKey(defaultValue: const KtList.empty())
  @override
  final KtList<TenantApartment> apartments;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Success>> response;

  @override
  String toString() {
    return 'TenantApartmentState(isLoading: $isLoading, validate: $validate, apartment: $apartment, apartments: $apartments, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TenantApartmentState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.apartment, apartment) ||
                const DeepCollectionEquality()
                    .equals(other.apartment, apartment)) &&
            (identical(other.apartments, apartments) ||
                const DeepCollectionEquality()
                    .equals(other.apartments, apartments)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(apartment) ^
      const DeepCollectionEquality().hash(apartments) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$TenantApartmentStateCopyWith<_TenantApartmentState> get copyWith =>
      __$TenantApartmentStateCopyWithImpl<_TenantApartmentState>(
          this, _$identity);
}

abstract class _TenantApartmentState extends TenantApartmentState {
  const _TenantApartmentState._() : super._();
  const factory _TenantApartmentState(
      {bool isLoading,
      bool validate,
      @nullable TenantApartment apartment,
      KtList<TenantApartment> apartments,
      Option<Either<Failure, Success>> response}) = _$_TenantApartmentState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  @nullable
  TenantApartment get apartment;
  @override
  KtList<TenantApartment> get apartments;
  @override
  Option<Either<Failure, Success>> get response;
  @override
  @JsonKey(ignore: true)
  _$TenantApartmentStateCopyWith<_TenantApartmentState> get copyWith;
}
