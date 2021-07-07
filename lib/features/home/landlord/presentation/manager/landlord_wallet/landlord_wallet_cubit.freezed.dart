// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'landlord_wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandlordWalletStateTearOff {
  const _$LandlordWalletStateTearOff();

// ignore: unused_element
  _LandlordWalletState call(
      {bool isLoading = false,
      bool validate = false,
      @required AmountField amount,
      Option<Either<Failure, Response>> response = const None()}) {
    return _LandlordWalletState(
      isLoading: isLoading,
      validate: validate,
      amount: amount,
      response: response,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandlordWalletState = _$LandlordWalletStateTearOff();

/// @nodoc
mixin _$LandlordWalletState {
  bool get isLoading;
  bool get validate;
  AmountField get amount;
  Option<Either<Failure, Response>> get response;

  @JsonKey(ignore: true)
  $LandlordWalletStateCopyWith<LandlordWalletState> get copyWith;
}

/// @nodoc
abstract class $LandlordWalletStateCopyWith<$Res> {
  factory $LandlordWalletStateCopyWith(
          LandlordWalletState value, $Res Function(LandlordWalletState) then) =
      _$LandlordWalletStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool validate,
      AmountField amount,
      Option<Either<Failure, Response>> response});
}

/// @nodoc
class _$LandlordWalletStateCopyWithImpl<$Res>
    implements $LandlordWalletStateCopyWith<$Res> {
  _$LandlordWalletStateCopyWithImpl(this._value, this._then);

  final LandlordWalletState _value;
  // ignore: unused_field
  final $Res Function(LandlordWalletState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object amount = freezed,
    Object response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      amount: amount == freezed ? _value.amount : amount as AmountField,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }
}

/// @nodoc
abstract class _$LandlordWalletStateCopyWith<$Res>
    implements $LandlordWalletStateCopyWith<$Res> {
  factory _$LandlordWalletStateCopyWith(_LandlordWalletState value,
          $Res Function(_LandlordWalletState) then) =
      __$LandlordWalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool validate,
      AmountField amount,
      Option<Either<Failure, Response>> response});
}

/// @nodoc
class __$LandlordWalletStateCopyWithImpl<$Res>
    extends _$LandlordWalletStateCopyWithImpl<$Res>
    implements _$LandlordWalletStateCopyWith<$Res> {
  __$LandlordWalletStateCopyWithImpl(
      _LandlordWalletState _value, $Res Function(_LandlordWalletState) _then)
      : super(_value, (v) => _then(v as _LandlordWalletState));

  @override
  _LandlordWalletState get _value => super._value as _LandlordWalletState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object validate = freezed,
    Object amount = freezed,
    Object response = freezed,
  }) {
    return _then(_LandlordWalletState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      validate: validate == freezed ? _value.validate : validate as bool,
      amount: amount == freezed ? _value.amount : amount as AmountField,
      response: response == freezed
          ? _value.response
          : response as Option<Either<Failure, Response>>,
    ));
  }
}

/// @nodoc
class _$_LandlordWalletState extends _LandlordWalletState {
  const _$_LandlordWalletState(
      {this.isLoading = false,
      this.validate = false,
      @required this.amount,
      this.response = const None()})
      : assert(isLoading != null),
        assert(validate != null),
        assert(amount != null),
        assert(response != null),
        super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool validate;
  @override
  final AmountField amount;
  @JsonKey(defaultValue: const None())
  @override
  final Option<Either<Failure, Response>> response;

  @override
  String toString() {
    return 'LandlordWalletState(isLoading: $isLoading, validate: $validate, amount: $amount, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LandlordWalletState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.validate, validate) ||
                const DeepCollectionEquality()
                    .equals(other.validate, validate)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(validate) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$LandlordWalletStateCopyWith<_LandlordWalletState> get copyWith =>
      __$LandlordWalletStateCopyWithImpl<_LandlordWalletState>(
          this, _$identity);
}

abstract class _LandlordWalletState extends LandlordWalletState {
  const _LandlordWalletState._() : super._();
  const factory _LandlordWalletState(
      {bool isLoading,
      bool validate,
      @required AmountField amount,
      Option<Either<Failure, Response>> response}) = _$_LandlordWalletState;

  @override
  bool get isLoading;
  @override
  bool get validate;
  @override
  AmountField get amount;
  @override
  Option<Either<Failure, Response>> get response;
  @override
  @JsonKey(ignore: true)
  _$LandlordWalletStateCopyWith<_LandlordWalletState> get copyWith;
}
